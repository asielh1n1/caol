
caol = angular.module("caol", ['ngRoute']);

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







 


