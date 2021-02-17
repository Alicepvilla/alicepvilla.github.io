var img = "";
var nombre = "";
var mail = "";
var telefono = "";
var pago = "";

$(document).ready(function(){
  
    $("#escoger").click(function(){

    var imagen = $("#escoger").val();

    switch (imagen) {
        case '1':
          img="./img/usuarios/1.png";
          break;
        case '2':
          img="./img/usuarios/2.png";
          break;
        case '3':
          img="./img/usuarios/3.png";
          break;
        case '4':
          img="./img/usuarios/4.png";
          break;
        case '5':
          img="./img/usuarios/5.png";
          break;
        case '6':
          img="./img/usuarios/6.png";
          break;
        case '7':
          img="./img/usuarios/7.png";
          break;
        case '8':
          img="./img/usuarios/8.png";
          break;
        case '9':
          img="./img/usuarios/9.png";
          break;
        case '10':
          img="./img/usuarios/10.png";
          break;  
        case '11':
          img="./img/usuarios/11.png";
          break;
        case '12':
          img="./img/usuarios/12.png";
          break;
        case '13':
          img="./img/usuarios/13.png";
          break;
        case '14':
          img="./img/usuarios/14.png";
          break;
        case '15':
          img="./img/usuarios/15.png";
          break;
        case '16':
          img="./img/usuarios/16.png";
          break;
        case '17':
          img="./img/usuarios/17.png";
          break;
        case '18':
          img="./img/usuarios/18.png";
          break;
        case '19':
          img="./img/usuarios/19.png";
          break;
        case '20':
          img="./img/usuarios/20.png";
          break;  
        default:
          img="./img/usuarios/1.png";
          break;  
    }
 
      $("#avatar2").attr("src",img);
    
  });

    $('#historial').on('click', function(){
        $('#popup').fadeIn('slow');
        $('.popup-overlay').fadeIn('slow');
        $('.popup-overlay').height($(window).height());
        return false;
    });

    $('#close').on('click', function(){
        $('#popup').fadeOut('slow');
        $('.popup-overlay').fadeOut('slow');
        return false;
    });

    $(document).ready( function () {
      $('#myTable').DataTable();
  } );

  $('#actualizar').on('click', function(){
    $('#popup2').fadeIn('slow');
    $('.popup-overlay2').fadeIn('slow');
    $('.popup-overlay2').height($(window).height());
    return false;
});
$('#close2').on('click', function(){
  $('#popup2').fadeOut('slow');
  $('.popup-overlay2').fadeOut('slow');

    nombre =$("#nombre").val();
    mail =$("#email").val();
    telefono =$("#tel").val();
    pago =$("#mpago").val();

  if (nombre =="" || mail =="" || telefono == "" || pago == ""){
    alert ("Faltaron valores por ingresar, no se actualizaran los datos")
  }else {
    
    $("#username").text(nombre);  
    $("#mail").text(mail);  
    $("#telefo").text(telefono);  
    $("#pago").text(pago); 
    $("#avatar").attr("src",img);
    
  }
  return false;
  
});

});

