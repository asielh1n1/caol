
caol = angular.module("caol", ['ngRoute','ng-fusioncharts', 'highcharts-ng']);

caol.config(function($routeProvider){
  $routeProvider
      .when("/",{
          controller: "Main",
          templateUrl: "/www/caol/view/home.html"
      })
      .when("/performance_comercial",{
          controller: "PerformanceComercial",
          templateUrl: "/www/caol/view/performance_comercial.html"
      })

  $routeProvider.otherwise({"redirectTo": "/"});
});

angular.module('caol').factory('util',function($http){

	return {
		//Funcion que realiza peticiones ajax al servidor
		/*
		 	options:{
				url:String,
				method:String,
				data:Object
			},
			fnCallback:function
		*/
		ajax:function(options,fnCallback){
			/* var csrf_token=document.querySelector('[name="csrf_token"]');
			options.headers= {
				'csrf_token': csrf_token.content
			} */
			if(!options.noLoading)
				loading(true,"Espere por favor...");
			$http(options).then(function successCallback(response) {
				loading(false);
				fnCallback(null,response.data);				
			}, function errorCallback(response) {
				if(response.status==403)
				{
					loading(false);	
					return alert("Uds no tiene permiso para realizar esta operación.")
				}
				if(response.status==405){
					loading(false);	
					return alert("Uds no tiene permiso para realizar esta operación.")
				}
				loading(false);				
				fnCallback(response,null);				
			});
		}
	}
})

caol.directive('alert', function() {
	return {
			restrict : 'E',
			template : '<div id="alert" ng-show="msg" class="alert alert-danger mt-5" role="alert">{{msg}}</div>',
			controller: ['$scope', function($scope) {
				$scope.msg=false;
				$scope.$on('alert', function(event, msg) {
					console.log('KKK:',msg);
					
					if(!msg){
						try {
							$scope.$apply(function(){
								$scope.msg=false;
							})
						} catch (error) {
							$scope.msg=false;
						}
						return;
					}					
					$scope.msg=msg;
				})
			}]
	};
});


//Muestra los mensajes de que se esta cargando el sistema
function loading(value,text){
  if(value){
    if(text)
      $('#loading-text').html(text);
    $('#loading').css("display","inline");
  }else{
    $('#loading-text').html("");
    $('#loading').css("display","none");
  }
}

function alert(message,title){
  title=(title)?title:'Información';
  $('#alert-title').html(title);
  $('#alert-message').html(message);
  $('#alert').modal('show');
}







 


