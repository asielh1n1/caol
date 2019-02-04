/**
 * Created by Asiel on 10/02/2018.
 */

exports.Usuario={
    self:this,
    loadConsultants:function(req,res){
        zun.repository.usuario.loadConsultants()
        .then(function(data){
            res.json(data)
        })
        .catch(function(error){
            res.status(500).json(error)
        })
    },
    facturaDesempenho:function(req,res){
        var moment = require('moment');
        var sql_query = "SELECT cu.co_usuario, MONTH(cf.data_emissao) as month, YEAR(cf.data_emissao) as year, " +
            "cu.no_usuario, sum(cf.valor - (cf.valor*cf.total_imp_inc/100)) as receita_liquida, " +
            "sum((cf.valor - (cf.valor * cf.total_imp_inc/100))*cf.comissao_cn/100) as comissao, " +
            "(SELECT AVG(brut_salario) FROM cao_salario) as cuxto_fijo_medio " +
            "FROM  cao_fatura cf " +
            "inner join cao_os co on cf.co_os=co.co_os " +
            "inner join cao_usuario cu on co.co_usuario=cu.co_usuario where (";
        req.body.consultors.forEach(function (el, index) {
            if (index > 0) {
                sql_query += " or "
            }
            sql_query += "cu.co_usuario='" + el.co_usuario + "' ";
        });
        var fechaIni=new Date(req.body.fechaIni);
        fechaIni.setHours(23);
        var fechaIni = moment(fechaIni, "YYYY-MM-DD").startOf('month').format();
        
        var fechaFin = moment(req.body.fechaFin, "YYYY-MM-DD").endOf('month').format();
        sql_query += ") and cf.data_emissao between '" + fechaIni + "' and '" + fechaFin + "'";
        sql_query += " group by cu.co_usuario, cu.no_usuario, MONTH(cf.data_emissao), YEAR(cf.data_emissao)";
        sql_query += " order by cu.co_usuario, YEAR(cf.data_emissao), MONTH(cf.data_emissao)";
        console.log();
        zun.db.query(sql_query)
        .spread(function (data_desempenho) {
            var util=require('./usuario.js')
            var periods=util.Usuario.getPeriods(req.body.fechaIni,req.body.fechaFin);
            zun.model.cao_salario.findAll()
                .then(function (data_salario) {
                    try {
                        var format_relatorio_data = util.Usuario.formatRelatorio(data_desempenho, data_salario);                        
                        var format_grafico_data = util.Usuario.formatGrafico(periods, data_desempenho, format_relatorio_data.datos);
                        res.status(200).json({
                            relatorio: format_relatorio_data,
                            grafico: format_grafico_data,
                            periods:periods
                        });
                    } catch (error) {
                        console.log('Error:',error);
                        
                    }
                    
                })
                .catch(function (error) {
                    res.status(500).json(error);
                })
        })
        .catch(function (error) {
            res.status(500).json(error);
        })
    },
    formatRelatorio:function (data_desempenho, data_salario) {
        var moment = require('moment');
        var result = {datos: [], receita_liquida_total: 0, cuxto_fijo_medio: 0};
        data_desempenho.forEach(function (data_user) {
            var user = result.datos.find(function (result_user) {
                return result_user.co_usuario && result_user.co_usuario == data_user.co_usuario;
            });
            var salario_usuario = data_salario.find(function (el) {
                return el.co_usuario == data_user.co_usuario;
            });
    
            var brut_salario = salario_usuario ? salario_usuario.brut_salario : 0,
                minus = data_user.month < 10 ? '-0' : '-';
    
            var data_fatura = {
                month: data_user.month,
                year: data_user.year,
                fecha: moment(data_user.year + minus + data_user.month + '-01').format(),
                receita_liquida: data_user.receita_liquida,
                comissao: data_user.comissao,
                lucro: data_user.receita_liquida - data_user.comissao
            };
            if (!user) {
                result.datos.push({
                    co_usuario: data_user.co_usuario,
                    no_usuario: data_user.no_usuario,
                    cuxto_fijo: brut_salario,
                    cuxto_fijo_medio: data_user.cuxto_fijo_medio,
                    receita_liquida_total: 0,
                    comissao_total: 0,
                    cuxto_fijo_total: 0,
                    lucro_total: 0,
                    periods: [data_fatura]
                });
            } else {
                user.periods.push(data_fatura);
            }
        });
        result.datos.forEach(function (el) {
            el.periods.forEach(function (period) {
                result.receita_liquida_total += period.receita_liquida;
                el.receita_liquida_total += period.receita_liquida;
                el.comissao_total += period.comissao;
                el.lucro_total += period.lucro;
                el.cuxto_fijo_total += el.cuxto_fijo;
            });
        });
        return result;
    },
    formatGrafico:function (periodsResult, data_desempenho, relatorio_data) {
        var periods = periodsResult.data;
        var dataset = [];
    
        relatorio_data.forEach(function (user, i, arr) {
            var serie = {
                "seriesname": user.no_usuario,
                "name": user.no_usuario,
                "id": "id_" + i,
                "data": []
            };
            var serieCuxtoFijo = {
                "seriesname": "Cuxto Fijo Medio",
                "name": "Cuxto Fijo Medio",
                "type": "line",
                "id": "id_cf",
                "data": []
            };
    
            periods.forEach(function (prd) {
                var userPeriod = data_desempenho.find(function (el) {
                    return el.month == prd.month && el.year == prd.year && el.co_usuario == user.co_usuario;
                });
                var serieDato = userPeriod ? userPeriod.receita_liquida.toFixed(2) : 0;
                serie.data.push(Number(serieDato));
                if (i == arr.length - 1) {
                    serieDato = Number(user.cuxto_fijo_medio.toFixed(2));
                    serieCuxtoFijo.data.push(serieDato);
                }
            });
            dataset.push(serie);
            if (i == arr.length - 1) {
                dataset.push(serieCuxtoFijo);
            }
    
        });
        return dataset;
    },
    getPeriods:function(date_init,date_end) {
        var moment = require('moment');
        var meses = [
            {name: 'Janeiro'}
            , {name: 'Fevereiro'}
            , {name: 'Março'}
            , {name: 'Abril'}
            , {name: 'Maio'}
            , {name: 'Junho'}
            , {name: 'Julho'}
            , {name: 'Agosto'}
            , {name: 'Setembro'}
            , {name: 'Outubro'}
            , {name: 'Novembro'}
            , {name: 'Dezembro'}];
        var periods = [];
        var fechaIni = date_init;
        var fechaFin = moment(date_end).endOf('month').format();
        var year = moment(date_init).year();
        var sameYear = true;
        while (moment(fechaIni).isBefore(fechaFin)) {
            var monthIndex = moment(fechaIni).month();
            if (sameYear && year != moment(fechaIni).year())
                sameYear = false;
            var period = {
                month: monthIndex + 1,
                year: moment(fechaIni).year(),
                monthName: meses[monthIndex].name
            }
            periods.push(period);
            fechaIni = moment(fechaIni).add(1, 'months').format();
        }
        return {data: periods, sameYear: sameYear};
    }
    
}


