<%@page import="back.*" contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Factura</title>
        <meta charset="utf-8">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="css/styles.css">

        <script type="text/javascript" src="js/html2canvas.js"></script>
        <script type="text/javascript" src="js/jspdf.min.js"></script>

        <script src="js/invoice.js"></script>

    </head>
    <body>
        <div class="invoice">
            <div id="capture">
                <h1>
                    <%   
                            Facturita factura = Facturita.crearFactura();
                            out.println(factura.getTipoFactura());
                    %></h1>
                <div class="invoice-details">
                    <p><strong>Número de <%out.println(factura.getTipoFactura());
                            %>:</strong><% 
                out.println(factura.getNumeroFact());%></p>
                    <p><strong>Fecha:</strong> <%out.println(factura.getFecha());%></p>
                </div>
                <div id="details">
                    <div class="person-details customer-details">
                        <h2>Datos del Cliente</h2>
                        <p><strong>Nombre:</strong> <%out.println(factura.getCliente().get("Nombre"));%></p>
                        <p><strong>Documento:</strong> <%out.println(factura.getCliente().get("Documento"));%></p>
                        <p><strong>Dirección:</strong> <%out.println(factura.getCliente().get("Direccion"));%></p>
                        <p><strong>Email:</strong> <%out.println(factura.getCliente().get("Correo"));%></p>
                    </div>
                    <div class="person-details seller-details">
                        <h2>Datos del Vendedor</h2>
                        <p><strong>Nombre:</strong> <%out.println(factura.getVendedor().get("Nombre"));%></p>
                        <p><strong>Documento:</strong> <%out.println(factura.getVendedor().get("Documento"));%></p>
                        <p><strong>Dirección:</strong> <%out.println(factura.getVendedor().get("Direccion"));%></p>
                        <p><strong>Email:</strong> <%out.println(factura.getVendedor().get("Correo"));%></p>
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
                <div class="cont" readonly>
                    <table >
                        <tbody >
                            <tr>
                                <th><div class="btntotal" onclick="sumarValoresTabla()">
                                        <p><strong>Total:</strong>
                                    </div></th>
                                <th id= "total" class="total"></th>
                            </tr>
                        </tbody>

                    </table>
                </div>
            </div>
            <button onclick="genPDF()">Generar PDF

            </button>

        </div>
    </body>
</html>
