caol.controller("PerformanceComercial", function ($scope,util){

    $scope.type='consultant';
    
    $scope.fecha_init=new Date(2007,00,01);
    $scope.fecha_end=new Date(2007,01,01);
    $scope.listLeft=[];
    $scope.listRight=[];
    $scope.showRelatorio=false;
    $scope.showGrafica=false;
    $scope.showPizza=false;

    $scope.graficoDataSource = {
        "chart": {
            "caption": "Performance Comercial",
            "subcaption": "",
            "xaxisname": "Períodos",
            "yaxisname": "Quantidade (Em R$)",
            "numberprefix": "R$",
            "showValues": 0,
            "theme": "fint"
        },
        "categories": [
            {
                "category": []
            }
        ],
        "dataset": []
    };

    $scope.pizzaDataSource = {
        chart: {
            caption: "Participação na Receita",
            startingangle: "120",
            showlabels: "0",
            showlegend: "1",
            enablemultislicing: "0",
            slicingdistance: "15",
            showpercentvalues: "1",
            showpercentintooltip: "0",
            plottooltext: "$label, $datavalue%",
            theme: "fint"
        },
        data: []
    };

    

    

    $scope.$watch('type',function(){
        if($scope.type=='consultant')
            loadConsultants();
        else{
            $scope.showRelatorio=false;
            $scope.showGrafica=false;
            $scope.showPizza=false;
            $scope.listLeft=[];
            $scope.listRight=[];
        }
    })


    $scope.moveRightSide=function(){
        if(!$scope.selectedLeft)return;
        $scope.listLeft=$scope.listLeft.filter(function(item){
            if($scope.selectedLeft.indexOf(item.co_usuario)==-1)
                return true;
            else{
                $scope.listRight.push(item)
                return false;
            }
        })        
    }

    $scope.moveLeftSide=function(){
        if(!$scope.selectedRight)return;
        $scope.listRight=$scope.listRight.filter(function(item){
            if($scope.selectedRight.indexOf(item.co_usuario)==-1)
                return true;
            else{
                $scope.listLeft.push(item)
                return false;
            }
        })        
    }

    $scope.report=function(type){
        if(!$scope.listRight.length)return $scope.$emit('alert','Voce debe seleccionar pelo menos um consultor.');
        var data={
            fechaIni:$scope.fecha_init,
            fechaFin:$scope.fecha_end,
            consultors:$scope.listRight
        }
        $scope.showRelatorio=false;
        $scope.showGrafica=false;
        $scope.showPizza=false;
        $scope.$emit('alert',false);
        util.ajax({url:'factura_desempenho',data:data,method:'post'},function(error,data){
            if(error)return $scope.$emit('alert','Ocorreu um erro ao carregar os dados');
            switch(type){
                case 'relatorio':{
                    $scope.datosDesempenho = data.relatorio.datos;
                    $scope.showRelatorio=true;
                }break;
                case 'grafico':{
                    $scope.chartOptions = {
                        "chart": {"type": "column"},
                        "plotOptions": {"series": {"stacking": ""}},
                        "series": [],
                        "title": {text: 'Performance Comercial'},
                        "subtitle": {text: "akakakak"},
                        "xAxis": {
                            categories: []
                        },
                        "yAxis": [{ // Primary yAxis
                            labels: {
                                format: '{value}$R',
                                style: {
                                    color: Highcharts.getOptions().colors[1]
                                }
                            },
                            title: {
                                text: 'Quantidade (Em R$)',
                                style: {
                                    color: Highcharts.getOptions().colors[1]
                                }
                            }
                        }]
                    };
                    try {
                        var periodsResult = data.periods;
                        var sameYear = periodsResult.sameYear;
                        var periods = periodsResult.data;
                        var firstPeriod = periods[0];
                        var lastPeriod = periods[periods.length - 1];
                        $scope.chartOptions.subtitle.text = firstPeriod.monthName
                            + " de " + firstPeriod.year + " a "
                            + lastPeriod.monthName + " de " + lastPeriod.year;

                        periods.forEach(function (period) {
                            var category = {
                                label: sameYear ? period.monthName : period.monthName + "-" + period.year
                            };
                            $scope.chartOptions.xAxis.categories.push(category.label);
                        });
                        $scope.chartOptions.series = data.grafico;
                        console.log('gggg:',$scope.chartOptions);
                        $scope.showGrafica=true;
                    } catch (error) {
                        console.log('Error:',error);
                        
                    }
                    
                }break;
                case 'pizza':{
                    $scope.pizzaDataSource.data=[]
                    data.relatorio.datos.forEach(function (el) {
                        var piePiece = {
                            label: el.no_usuario,
                            value: el.receita_liquida_total * 100 / data.relatorio.receita_liquida_total
                        }
                        $scope.pizzaDataSource.data.push(piePiece);
                    });
                    $scope.showPizza=true;
                }break;
            }
            
        })
    }

    function loadConsultants(){
        util.ajax({url:'load_consultants'},function(error,data){
            if(error)return $scope.$emit('alert','Erro ao carrier consultores');
            $scope.listLeft=data
        })
    }

    



})