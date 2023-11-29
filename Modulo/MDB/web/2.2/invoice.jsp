<%@page import="back.DAOS.*, back.Modelo.*" contentType="text/html" pageEncoding="UTF-8" %>
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
            <h1><%-- Proceso para la generación de la factura --%>
                <%-- Instanciación de objetos DAO --%>
                <%-- Lógica para determinar el tipo de factura --%>
                <%-- Creación de la factura en la base de datos --%>
                <%-- Mostrar información de la factura según el tipo --%>
      
                <%
                        PersonaDAO p=new PersonaDAO();
                        CargoDAO c= new CargoDAO();
                        EmpleadoCargoDAO ec = new EmpleadoCargoDAO();
                        DetalleFacturaDAO dfd=new DetalleFacturaDAO();
                        InventarioDAO ind=new InventarioDAO();
                        ProductoDAO pr=new ProductoDAO();
                        HistoricoPrecioDAO h=new HistoricoPrecioDAO();
                        FacturaDAO fac=new FacturaDAO();
                        Factura f=new Factura();
                        int i=1;
                        if(request.getParameter("item"+i)!=null){
                            if(c.getDescCargoByID(ec.getEmpleadoCargoByCodEmp(request.getParameter("nDocumento")).getCodCargo()).equals("VENDEDOR")){
                                f.setIdTipoFactura("VE");
                                f.setFac_idTipoFac(null);
                            }
                            if(c.getDescCargoByID(ec.getEmpleadoCargoByCodEmp(request.getParameter("nDocumento")).getCodCargo()).equals("AUXILIAR DE COMPRAS")){
                                f.setIdTipoFactura("CO");
                                f.setFac_idTipoFac(null);
                            }
                            if(c.getDescCargoByID(ec.getEmpleadoCargoByCodEmp(request.getParameter("nDocumento")).getCodCargo()).equals("DIRECTOR DE COMPRAS")){
                                f.setIdTipoFactura("DC");
                                f.setFac_idTipoFac("'CO'");
                                f.setFac_nFactura(request.getParameter("facDev"));
                            }
                            if(c.getDescCargoByID(ec.getEmpleadoCargoByCodEmp(request.getParameter("nDocumento")).getCodCargo()).equals("REPRESENTANTE DE VENTAS")){
                                f.setIdTipoFactura("DV");
                                f.setFac_idTipoFac("'VE'");
                                f.setFac_nFactura("'"+request.getParameter("facDev")+"'");
                            }
                            f.setnFactura(Integer.toString(fac.getMaxNFactura()+1));
                            f.setIdTipoPersona(p.getPersonaById(request.getParameter("PersonaImplicada")).getIdTipoPersona());
                            f.setIdTipoDoc(p.getPersonaById(request.getParameter("PersonaImplicada")).getIdTipoDoc());
                            f.setnDocumento(request.getParameter("PersonaImplicada"));
                            f.setCodEmpleado(request.getParameter("nDocumento"));
                            f.setTotalFactura(0);
                        }
                            boolean facturar=true;
                            while(request.getParameter("item"+i)!=null && (f.getIdTipoFactura().equals("VE") || f.getIdTipoFactura().equals("DC"))){
                                if(ind.getExistenciaReciente(request.getParameter("item"+i))<Integer.parseInt(request.getParameter("cant"+i))){
                                    facturar=false;
                                    out.println("Existencias de "+pr.getNomProductoById(request.getParameter("item"+i))+" insuficiente");
                                }
                                i++;
                            }
                            if(facturar){
                                fac.addFactura(f);
                                f.setFecha(fac.getDateById(f.getnFactura()));
                                i=1;
                                while(request.getParameter("item"+i)!=null){
                                    DetalleFactura df=new DetalleFactura();
                                    Inventario in=new Inventario();
                                    df.setIdTipoFac(f.getIdTipoFactura());
                                    df.setnFactura(f.getnFactura());
                                    df.setItem(i);
                                    df.setIdCatProducto(pr.getIdCatById(request.getParameter("item"+i)));
                                    df.setRefProducto(request.getParameter("item"+i));
                                    df.setCantidad(Integer.parseInt(request.getParameter("cant"+i)));
                                    df.setPrecio(h.getPrecioById(request.getParameter("item"+i)));
                                    dfd.addDetalleFactura(df);
                                    in.setConsecInven(ind.getMaxConsec()+1);
                                    in.setIdTipoFac(f.getIdTipoFactura());
                                    in.setnFactura(f.getnFactura());
                                    in.setItem(df.getItem());
                                    in.setIdCatProducto(pr.getIdCatById(request.getParameter("item"+i)));
                                    in.setRefProducto(request.getParameter("item"+i));
                                    in.setInv_consecInven(ind.getConsecReciente(in.getRefProducto()));
                                    in.setFechaInve(f.getFecha());
                                    if(f.getIdTipoFactura().equals("CO") || f.getIdTipoFactura().equals("DV")){
                                        in.setEntran(Integer.parseInt(request.getParameter("cant"+i)));
                                        in.setSalen(0);
                                        in.setExistencia(in.getEntran()+ind.getExistenciaReciente(in.getRefProducto()));
                                    }
                                    if(f.getIdTipoFactura().equals("VE") || f.getIdTipoFactura().equals("DC")){
                                        in.setEntran(0);
                                        in.setSalen(Integer.parseInt(request.getParameter("cant"+i)));
                                        in.setExistencia(ind.getExistenciaReciente(in.getRefProducto())-in.getSalen());
                                    }
                                    ind.addInventario(in);
                                    i++;
                                }
                            }else{
                                out.println("Factura no agregada");
                            }
                        if(!ec.getEmpleadoCargoByCodEmp(request.getParameter("nDocumento")).getCodEmpleado().equals("False")){
                            if(c.getDescCargoByID(ec.getEmpleadoCargoByCodEmp(request.getParameter("nDocumento")).getCodCargo()).equals("VENDEDOR")){
                                out.println("Factura Venta");
                            }
                            if(c.getDescCargoByID(ec.getEmpleadoCargoByCodEmp(request.getParameter("nDocumento")).getCodCargo()).equals("AUXILIAR DE COMPRAS")){
                                out.println("Factura Compra");
                            }
                            if(c.getDescCargoByID(ec.getEmpleadoCargoByCodEmp(request.getParameter("nDocumento")).getCodCargo()).equals("DIRECTOR DE COMPRAS")){
                                out.println("Factura Devolucion Compra");
                            }
                            if(c.getDescCargoByID(ec.getEmpleadoCargoByCodEmp(request.getParameter("nDocumento")).getCodCargo()).equals("REPRESENTANTE DE VENTAS")){
                                out.println("Factura Devolucion Venta");
                            }
                %></h1>
            <div class="invoice-details">
                <%
                if(f.getIdTipoFactura()!=null){
                %>
                <p><strong>Número de <%=f.getIdTipoFactura()%>:</strong><%=f.getnFactura()%></p>
                <p><strong>Fecha:</strong> <%=f.getFecha()%></p>
                <%}else{%>
                <p><strong>Número de factura:</strong></p>
                <p><strong>Fecha:</strong> </p>
                <%}%>
            </div>
            <div class="box">
                <a href="#popup-box">
                    <div id="details">
                        <div class="person-details customer-details">
                            <%
                                DireccionDAO d=new DireccionDAO();
                                ContactoDAO co=new ContactoDAO();
                                if(request.getParameter("PersonaImplicada")!=null){
                                    if(p.getPersonaById(request.getParameter("PersonaImplicada"))!=null){
                            %>
                            <h2>Datos del Cliente</h2>
                            <p><strong>Nombre:</strong> <%=p.getPersonaById(request.getParameter("PersonaImplicada")).getNombre()%> 
                                <%=p.getPersonaById(request.getParameter("PersonaImplicada")).getApellido()%></p>
                            <p><strong>Documento:</strong> <%=request.getParameter("PersonaImplicada")%></p>
                            <p><strong>Dirección:</strong> <%=d.getDirById(request.getParameter("PersonaImplicada"))%></p>
                            <p><strong>Email:</strong> <%=co.getCorreoById(request.getParameter("PersonaImplicada"))%></p>
                            <%}else{%>
                            <a href="../2.1/signUp.jsp">
                                <h2>Registrar Cliente</h2>
                            </a>
                            <%}}else{%>
                            <h2>Datos del Cliente</h2>
                            <p><strong>Nombre:</strong> </p>
                            <p><strong>Documento:</strong> </p>
                            <p><strong>Dirección:</strong> </p>
                            <p><strong>Email:</strong> </p>
                            <%}%> 
                        </div>
                        <div class="person-details seller-details">
                            <h2>Datos del Vendedor</h2>
                            <%
                                EmpleadoDAO e=new EmpleadoDAO();
                            %>
                            <p><strong>Nombre:</strong> <%=e.getEmpleadoById(request.getParameter("nDocumento")).getNomEmpleado()%> 
                                <%=e.getEmpleadoById(request.getParameter("nDocumento")).getApellEmpleado()%></p>
                            <p><strong>Codigo:</strong> <%=request.getParameter("nDocumento")%></p>
                            <p><strong>Email:</strong> <%=e.getEmpleadoById(request.getParameter("nDocumento")).getCorreo()%></p>
                        </div>
                    </div>
                </a>
            </div>
        </div>
        <form id="miFormulario" action="invoice.jsp" method="post" >
            <div id="popup-box" class="modal">
                <div class="content">
                    <h1 style="color: purple;">
                        Inserte el documento de la persona implicada!
                    </h1>
                    <input type="hidden" name="nDocumento" value="<%=request.getParameter("nDocumento")%>"/>
                    <input id="PersonaImplicada" name="PersonaImplicada" oninput="validarCaracteresEspeciales(this)">
                    <br><br>
                    <input type="submit" class="box-close" id="button"onclick="nonulo()" value="Guardar">
                </div>
            </div>
        </form>
        <form id="miFormulario2" action="invoice.jsp" method="post">
            <div id="productos">
                <input type="hidden" name="nDocumento" value="<%=request.getParameter("nDocumento")%>"/>
                <input type="hidden" name="PersonaImplicada" value="<%=request.getParameter("PersonaImplicada")%>"/>
                <%
                    if(c.getDescCargoByID(ec.getEmpleadoCargoByCodEmp(request.getParameter("nDocumento")).getCodCargo()).equals("DIRECTOR DE COMPRAS") || c.getDescCargoByID(ec.getEmpleadoCargoByCodEmp(request.getParameter("nDocumento")).getCodCargo()).equals("REPRESENTANTE DE VENTAS")){
                %>
                <center>
                    <strong><label>Numero de Factura a modificar</label></strong><br>
                    <input type="text" name="facDev" id="facDev" style="width: 200px; height: 30px; font-size: 16px;" oninput="validarCaracteresEspeciales(this)"><br>
                </center>
                <%}%>
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
                            <%
                                for(int j=1;j<i;j++){
                            %>
                            <tr>
                                <td><%=request.getParameter("item"+j)%></td>
                                <td><%=pr.getNomProductoById(request.getParameter("item"+j))%></td>
                                <td><%=request.getParameter("cant"+j)%></td>
                                <td><%=h.getPrecioById(request.getParameter("item"+j))%></td>
                                <%}%>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
            <div class="btntotal" onclick="añadirProd()">
                <p><strong>Añadir otro Producto</strong>
            </div>
            <div id="botoncito">
                <input type="submit" name="button" id="button" onclick="var formulario = document.getElementById('miFormulario');
                            formulario.addEventListener('submit', handleSubmit);" value="Enviar">
            </div>
        </form>
          <div id="totalito" class="cont" readonly>
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


        <button onclick="genPDF()">Generar PDF</button>
    </div>
    <%
        }else{
        out.println("Empleado no existe");
        }
    %>

</body>
</html>
