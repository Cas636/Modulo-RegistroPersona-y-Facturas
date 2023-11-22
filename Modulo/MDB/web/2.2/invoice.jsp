<%@page import="back.DAOS.*" contentType="text/html" pageEncoding="UTF-8" %>
<%@ page import="java.io.*, java.util.*" %>

<!DOCTYPE html>
<html>
    <head>
        <title>Factura</title>
        <meta charset="utf-8">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="css/styles.css">
    <param id="user">
    <script type="text/javascript" src="js/html2canvas.js"></script>
    <script type="text/javascript" src="js/jspdf.min.js"></script>
    <script src="js/invoice.js" id="user"></script>


</head>
<body>



    <div class="invoice">
        <div id="capture">
            <h1>
                <%   
                        EmpleadoCargoDAO ec = new EmpleadoCargoDAO();
                        if(!ec.getEmpleadoCargoByCodEmp(request.getParameter("nDocumento")).getCodEmpleado().equals("False")){
                            CargoDAO c= new CargoDAO();
                            if(c.getDescCargoByID(ec.getEmpleadoCargoByCodEmp(request.getParameter("nDocumento")).getCodCargo()).equals("VENDEDOR")){
                                out.println("Factura Venta");
                            }
                            if(c.getDescCargoByID(ec.getEmpleadoCargoByCodEmp(request.getParameter("nDocumento")).getCodCargo()).equals("AUXILIAR DE COMPRAS")){
                                out.println("Factura Compra");
                            }
                            if(c.getDescCargoByID(ec.getEmpleadoCargoByCodEmp(request.getParameter("nDocumento")).getCodCargo()).equals("DIRECTOR DE COMPRAS")){
                                out.println("Factura Venta");
                            }
                            if(c.getDescCargoByID(ec.getEmpleadoCargoByCodEmp(request.getParameter("nDocumento")).getCodCargo()).equals("REPRESENTANTE DE VENTAS")){
                                out.println("Factura Devolucion Venta");
                            }
                            out.println(request.getParameter("user"));
                %></h1>
            <div class="invoice-details">
                <p><strong>Número de <!--%out.println(factura.getTipoFactura());
                        %-->:</strong><!--% 
            out.println(factura.getNumeroFact());%--></p>
                <p><strong>Fecha:</strong> <!--%out.println(factura.getFecha());%--></p>
            </div>
            <div class="box">
                <a href="#popup-box"> 
                    <div id="details">
                        <div class="person-details customer-details">
                            <h2>Datos del Cliente</h2>
                            <p><strong>Nombre:</strong> <!--%out.println(factura.getCliente().get("Nombre"));%--></p>
                            <p><strong>Documento:</strong> <!--%out.println(factura.getCliente().get("Documento"));%--></p>
                            <p><strong>Dirección:</strong> <!--%out.println(factura.getCliente().get("Direccion"));%--></p>
                            <p><strong>Email:</strong> <!--%out.println(factura.getCliente().get("Correo"));%--></p>
                        </div>
                        <div class="person-details seller-details">
                            <h2>Datos del Vendedor</h2>
                            <p><strong>Nombre:</strong> <!--%out.println(factura.getVendedor().get("Nombre"));%--></p>
                            <p><strong>Documento:</strong> <!--%out.println(factura.getVendedor().get("Documento"));%--></p>
                            <p><strong>Dirección:</strong> <!--%out.println(factura.getVendedor().get("Direccion"));%--></p>
                            <p><strong>Email:</strong> <!--%out.println(factura.getVendedor().get("Correo"));%--></p>
                        </div>
                    </div>
                </a>
            </div>
            <form id="miFormulario" action="validar.jsp" method="post" >
                <div id="popup-box" class="modal">
                    <div class="content">
                        <h1 style="color: purple;">
                            Inserte el documento de la persona implicada!
                        </h1>
                        <input id="PersonaImplicada" name="PersonaImplicada" oninput="validarCaracteresEspeciales(this)">
                        <br><br>
                        <a href="#"
                           class="box-close" id="button"onclick="nonulo()">
                            Guardar
                        </a>                    
                    </div>
                </div>
                <div class="invoice-items">
                    <h2>Productos</h2>
                    <table>
                        <thead>
                            <tr>
                                <th>Codigo</th>
                                <th>Descripción</th>
                                <th>Cantidad</th>
                                <th>Precio</th>
                            </tr>
                        </thead>
                        <tbody id="tbody">

                        </tbody>
                    </table>
                </div>
                <div class="btntotal" onclick="añadirProd()">
                    <p><strong>Añadir otro Producto</strong>
                </div>
                <div id="botoncito">
                    <input type="submit" name="button" id="button" onclick="var formulario = document.getElementById('miFormulario');
                    formulario.addEventListener('submit', handleSubmit);" value="Enviar">
                </div>
            </form>
        </div>
    </div>
    <%
        }else{
        out.println("Empleado no existe");
        }
    %>

</body>
</html>
