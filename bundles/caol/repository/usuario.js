/**
 * Created by Asiel on 10/02/2018.
 */
zun.repository.usuario={
    loadConsultants:function(){
        return new Promise(function(resolve, reject){
            var sql="select cu.co_usuario,cu.no_usuario from cao_usuario cu inner join permissao_sistema ps " +
            "on cu.co_usuario = ps.co_usuario " +
            "where ps.co_sistema = 1 and ps.in_ativo='S' and " +
            "ps.co_tipo_usuario between 0 and 2";
            zun.db.query(sql)
            .spread(function(data){
                resolve(data)
            })
            .catch(function(error){
                reject(error)
            })
            
            
        })
        
    }
}