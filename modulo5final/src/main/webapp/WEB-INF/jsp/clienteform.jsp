<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>   
<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href= "<c:url value= "/resources/css/stylesheet.css"/>">
    <link rel="stylesheet" href= "<c:url value= "/resources/css/menu.css"/>">
    <link rel="stylesheet" href= "<c:url value= "/resources/css/fontello.css"/>">
    <link rel="stylesheet" href="<c:url value="https://cdn.datatables.net/v/dt/dt-1.10.21/b-1.6.3/b-colvis-1.6.3/b-html5-1.6.3/b-print-1.6.3/cr-1.5.2/r-2.2.5/sc-2.0.2/sl-1.3.1/datatables.css"/>">
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/pdfmake.js"></script>
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/vfs_fonts.js"></script>
	<script type="text/javascript" src="https://cdn.datatables.net/v/dt/dt-1.10.21/b-1.6.3/b-colvis-1.6.3/b-html5-1.6.3/b-print-1.6.3/cr-1.5.2/r-2.2.5/sc-2.0.2/sl-1.3.1/datatables.js"></script>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <title>Segurimax - Seguridad Laboral</title>  
    <script>
                $(".submenu").click(function(){
        $(this).children("ul").slideToggle();
        })

        $("ul").click(function(ev){
        ev.stopPropagation();
        })
    </script>
</head>
    <body style="background-image: url(<c:url value="/resources/img/fondo.svg" />); background-position: center center; margin: 0%;">
        <header>

            <input type="checkbox" id="btn-menu" />
    <label for="btn-menu"><i class="fa fa-bars"></i></label>
    <nav class="menu" style="z-index: 4;">
        <ul>
            <li><a href="./index.jsp">Inicio</a></li>
            <li class="submenu"><a href="#">Clientes <i class="fa fa-caret-down"></i></a>
              <ul>
                <li><a href="nuevocliente">Crear Cliente</a></li>
                <li><a href="editcliente">Editar Cliente</a></li>
                <li><a href="deletecliente">Eliminar Cliente</a></li>
                <li><a href="listaclientes">Listado de Clientes</a></li>
                 <li><a href="nuevousuario"> nuevo usuario</a> </li>
              </ul>
            </li>
            <li class="submenu"><a href="#">Profesionales<i class="fa fa-caret-down"></i></a>
              <ul>
                  <li><a href="nuevoempleado">Ingresar Profesional</a></li>
                  <li><a href="editempleado">Editar Profesional</a></li>
                  <li><a href="deleteempleado">Eliminar Profesional</a></li>
                  <li><a href="listaempleadosC">Listado de Profesionales</a></li>
              </ul>
              
              
            </li>
            <li><a href="#">Accidentes</a>
                <ul>
                    <li><a href="nuevoaccidente">Ingreso Accidente</a></li>
                    <li><a href="listaaccidenteC">Listado Accidentes</a></li>
                </ul></li>
                 <li><a href="#">Visitas</a>
                <ul>
                    <li><a href="nuevavisitas">Agregar Visita</a></li>
                    <li><a href="listavisitas">Listar Visitas</a></li>
                </ul></li>
            
            <li><a href="#">Pagos</a>
                <ul>
                    <li><a href="nuevopago">Ingreso Pago</a></li>
                    <li><a href="listapagos">Mostrar Pagos</a></li>
                </ul></li>
                
                <li><a href="#">Asesorias</a>
                <ul>
                    <li><a href="agregarasesoria">Ingreso Asesoria</a></li>
                    <li><a href="agregarasesoriaespecial">Ingreso Asesoria Especial</a></li>
                    <li><a href="listaasesoriasC">Listado de Asesorias</a></li>
                </ul></li>
                
                 <li><a href="#">Capacitaciones</a>
                <ul>
                    <li><a href="nuevacapacitaciones">Ingreso Capacitaciones</a></li>
                    <li><a href="listacapacitaciones">Listado de Capacitaciones</a></li>
                </ul></li>
                
                 <li><a href="#">Check List</a>
                <ul>
                    <li><a href="nuevochequeo">Ingreso Check List</a></li>
                    <li><a href="listachequeosC">Listado de Check List</a></li>
                </ul></li>
                
                 <li><a href="#"> Mejoras</a>
                <ul>
                    <li><a href="agregarmejoras ">Ingreso Mejoras</a></li>
                    <li><a href="listamejorasC">Listado de Mejoras</a></li>
                </ul></li>
                
                 <li><a href="#">Informes</a>
                <ul>
                    <li><a href="listareporte">Reporte Global</a></li>
                    <li><a href="listareportecliente">Reporte Global de un cliente</a></li>
                    <li><a href="listaactividades">Visualizar Actividades</a></li>
                    <li><a href="revisarcliente">Revisar Cliente</a></li>
                </ul></li>
                    
            </ul>
        </nav>
    </header>
    <div id="header_img">
        
        <img src="<c:url value="/resources/img/img_header_admin.png"/>" title="Segurimax - Inicio" style="width: 100%;">
    </div>
    <div id="pdf-login" style="text-align: end; background-color: dimgrey; padding:2%; margin:-1% 0% 5% 0%;">
    <a>  Bienvenido  </a><c:if test="${nombre != null}">
	<h2 style="margin:0% 3% 0% 0%"><c:out value="${nombre}"></c:out></h2>
</c:if>
<a style="margin:0% 1%">Cerrar Sesion</a> <input type=image src="<c:url value="/resources/img/exit.svg"/>" onclick="logout" style="margin:0% 10% 0% 0%; width: 2%;">
</div>

            <div id="titulo">
            <a><img src="<c:url value="/resources/img/employee-add.svg"/>" title="Ingreso Clientes" style="width: 10%;"></img></a>
            <h1>Creacion de Clientes</h1>
            <h3>Por favor, llene todos los campos del formulario</h3>
        </div>
            <div class="formulario">
                <form method="post" action="guardarcliente">
                    <label for="rut">RUT </label><br/>
                    <input type="number" class="campo_formulario" name="rut"/><br/>
                    <label for="nombre">Nombre </label><br/>
                    <input type="text" class="campo_formulario" name="nombre"/><br/>
                    <label for="telefono">Telefono </label><br/>
                    <input type="tel" class="campo_formulario" name="telefono" /><br/>
                    <label for="correo">Correo electronico </label><br/>
                    <input type="email" class="campo_formulario" name="mail" /><br/>
                    <label for="rubro">Rubro </label><br/>
                    <input type="text" class="campo_formulario" name="rubro" /><br/>
                    <label for="direccion">Direccion </label><br/>
                    <input type="text" class="campo_formulario" name="direccion" /><br/>
                    <input type="submit" value="Agregar cliente" />
                </form>
        </div>
        <footer>
            <p>Dise�o - Talentosos Desarrolladores Jr - 2020</p>
        </footer>
    </body>

</html>