<%@page import="java.sql.ResultSet"%>
<%@page import="Modelo.Empleado"%>
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   <%-- 
    Document   : index
    Created on : 10-20-2021, 02:55:13 PM
    Author     : Balmore
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="css/css.css" rel="stylesheet" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <!-- CSS only -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.6.1/font/bootstrap-icons.css">
<link href="//cdn.jsdelivr.net/npm/@sweetalert2/theme-dark@4/dark.css" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous"><link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.6.1/font/bootstrap-icons.css">
    
    </head>
    <body>
        <%
            int id = Integer.parseInt((String) request.getAttribute("IdEmpleado"));
            String Nombre = (String)request.getAttribute("Nombre");
            String Email = (String)request.getAttribute("Email");
            String Telefono = (String)request.getAttribute("Telefono");
            String FechaNac = (String)request.getAttribute("FechaNac");
            String Direccion = (String)request.getAttribute("Direccion");
            String Dui = (String)request.getAttribute("Dui");
            String Nit = (String)request.getAttribute("Nit");
            String Area = (String)request.getAttribute("Area");

        %>     
      <nav class="navbar navbar-expand-lg navbar-light" style="background-color: #185D5D;">
  <a class="navbar-brand" href="Controlador?accion=Principal">Libreria Monseñor Romero</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Usuarios
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="Controlador?accion=Usuarios">Listar usuarios</a>
          <a class="dropdown-item" href="Controlador?accion=Nuevo">Crear Nuevo Usuarios</a>
        </div>
      </li>
      
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Categoria
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="Controlador?accion=ListarCategoria">Listar Categoria</a>
          <a class="dropdown-item" href="Controlador?accion=NuevaCate">Crear Nueva Categoria</a>
          
        </div>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Empleados
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="Controlador?accion=ListarEmpleados">Listar Empleados</a>
          <a class="dropdown-item" href="Controlador?accion=NuevoEmpleado">Crear Nuevo Empleado</a>
          
        </div>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Productos
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="Controlador?accion=ListarProducto">Listar Producto</a>
          <a class="dropdown-item" href="Controlador?accion=NuevoProducto">Nuevo Producto</a>
          
        </div>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Movimientos
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="Controlador?accion=RealizarCompra">Realizar Compra</a>
          <a class="dropdown-item" href="Controlador?accion=MostrarVentas">Realizar Ventas</a>
          
        </div>
      </li>
    </ul>
    <form class="form-inline my-2 my-lg-0" action="Controlador" method="post">
                    <a><i class="fa fa-user-circle" aria-hidden="true" style="color: black"></i> <%= session.getAttribute("user")%></a>
                    <button class="btn btn-outline-primary my-2 my-sm-0 ml-2" type="submit" name="accion" value="Salir">Logout</button>
                </form>
  </div>
</nav>
        
        
        <div class="col-md-4 mx-auto text-center">
            <h3>Empleado</h3>
        </div>
        <br>
        <div class="col-md-4 mx-auto border border-primary" style="padding: 20px; border-radius: 15px;">
            <form class="form-control" action="Controlador" method="get">
                
                        <label  for="inlineFormInputName2">Código</label>
                        <input type="text" name="txtIdEmpleado" class="form-control" id="inlineFormInputName2"  value="<%= id%>" readonly="true">
                   
                        <label  for="inlineFormInputName2">Nombre</label>
                <input type="text" name="txtNombre" class="form-control" id="inlineFormInputName2" value="<%= Nombre%>" placeholder="Ingrese la categoria...">
                    
                
                
                

                <label  for="inlineFormInputGroupUsername2">Email</label>
                <div class="input-group">
                    <input type="text" name="txtEmail" class="form-control" id="inlineFormInputGroupUsername2" value="<%= Email%>" placeholder="Ingrese la descripción...">
                </div>
                <label  for="inlineFormInputName2">Telefono</label>
                <input type="text" name="txtTelefono" class="form-control" id="inlineFormInputName2"  value="<%= Telefono%>">

                <label  for="inlineFormInputName2">Fecha De Nacimiento</label>
                <input type="date" name="txtFechaNac" class="form-control" id="inlineFormInputName2" value="<%= FechaNac%>" placeholder="Ingrese Fecha Nacimiento...">
                <label class="sr-only" for="inlineFormInputGroupUsername2">Direccion</label>
                <div class="input-group">
                    <input type="text" name="txtDireccion" class="form-control" id="inlineFormInputGroupUsername2" value="<%= Direccion%>" placeholder="Ingrese la descripción...">
                </div>
                <label for="inlineFormInputName2">Dui</label>
                <input type="text" name="txtDui" class="form-control" id="inlineFormInputName2"  value="<%= Dui%>">

                <label  for="inlineFormInputName2">Nit</label>
                <input type="text" name="txtNit" class="form-control" id="inlineFormInputName2" value="<%= Nit%>" placeholder="Ingrese la categoria...">

                <label  for="inlineFormInputGroupUsername2">Area</label>
                <div class="input-group">
                    <input type="text" name="txtArea" class="form-control" id="inlineFormInputGroupUsername2" value="<%= Area%>" placeholder="Ingrese la descripción...">
                </div>
                    <br>
                <button type="submit" value="Guardar Empleado" name="accion" class="btn btn-primary mb-2">Modificar</button>
            </form>
        </div>
    </body>  
        <script src="https://kit.fontawesome.com/7cae056f8b.js" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
<script src="//cdn.jsdelivr.net/npm/sweetalert2@11/dist/sweetalert2.min.js"></script>  
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>

</html>

