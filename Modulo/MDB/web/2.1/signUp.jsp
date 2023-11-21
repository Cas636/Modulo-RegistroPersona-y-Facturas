<%@page import="back.DAOS.*,back.Modelo.*" contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<head>
    <title>Registro</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="css/styles.css">
    <script src="js/validaciones.js"></script>
</head>

<body>

    <form id="miFormulario" action="registro.jsp" method="post" >
        <h1>Registro</h1>
        <label for="tipoPersona">Tipo de Persona </label>
        <select name="tipoPersona" id="tipoPersona">
            <%
                TipoPersonaDAO tpc = new TipoPersonaDAO();
                tpc.getTipoPersona();
                for(TipoPersona tp : tpc.getTp()){
            %>
            <option value="<%=tp.getIdTipoPersona()%>"><%=tp.getDesTipoPersona()%></option>
            <%}%>
        </select><br>          
        <label for="tipoDocumento">Tipo de Documento </label>
        <select name="tipoDocumento" id="tipoDocumento">
            <%
                TipoDocDAO tdc = new TipoDocDAO();
                tdc.getTipoDoc();
                for(TipoDoc td : tdc.getTd()){
            %>
            <option value="<%=td.getIdTipoDoc()%>"><%=td.getDescTipoDoc()%></option>
            <%}%>
        </select><br>
        <label for="nDocumento">Numero de Documento</label>
        <input type="text" name="nDocumento" id="nDocumento" oninput="validarCaracteresEspeciales(this)"><br>
        <label for="nombre">Nombre </label>
        <input type="text" name="nombre" id="nombre" oninput="validarCaracteresEspeciales(this)"><br>
        <label for="apellido">Apellido </label>
        <input type="text" name="apellido" id="apellido" oninput="validarCaracteresEspeciales(this)"><br>
        
        <label id="button" onclick="mostrarOcultarDiv(this)">Insertar Contacto</label>
        <div id="contCont">
            <%--<select name="tipoContacto" id="tipoContacto">
            <%
                TipoContactoDAO tdco = new TipoContactoDAO();
                tdco.getTipoContacto();
                for(TipoDoc tc : tdco.getTd()){
            %>
            <option value="<%=tc.getIdTipoContacto()%>"><%=tc.getDescTipoContacto()%></option>
            <%}%>
        </select>
             <input type="text" name="descContacto" id="descContacto" oninput="validarCaracteresEspeciales(this)"><br>
            <br>--%>
            <label id="button" onclick="duplicarDiv(this)">Insertar otro Contacto</label>
            <div id="c">
                
            </div>
        </div>
        <label id="button" onclick="mostrarOcultarDiv(this)">Insertar Direccion</label>
        <div id="direc">
            <div id="contDirecc">
                <h1>Direccion </h1>
                <div id="cont">
                    <%
                        ComponenteDireccDAO cdc = new ComponenteDireccDAO();
                        cdc.getComponenteDirecc();
                        for(ComponenteDirecc cd : cdc.getCd()){
                    %>
                    <label for="<%=cd.getPosicion()%>"><%=cd.getDescPosicion()%></label>
                    <%
                       NomenclaturaDAO nc = new NomenclaturaDAO();
                       nc.getNomenclatura(cd.getPosicion());
                       if(nc.getN().size()!=0){
                    %>
                    <select id="<%=cd.getPosicion()%>" name="<%=cd.getPosicion()%>" 
                            onchange="actualizarCampoTexto(this);" >
                        <%
                                for(Nomenclatura n : nc.getN()){
                        %>
                        <option value="<%=n.getIdNomen()%>"><%=n.getDescNomen()%></option>
                        <%      
                                }
                        %>
                    </select>
                    <%      
                        }else{
                    %>
                    <input type="text" id="<%=cd.getPosicion()%>" name="<%=cd.getPosicion()%>" 
                           oninput="validarCaracteresEspeciales(this)" onchange="actualizarCampoTexto(this)">
                    <%  }
                    }
                    %>
                </div>
            </div>
            <textarea id="direccion" readonly ></textarea>
            <label id="button" onclick="duplicarDiv(this)">Insertar otra Dirección</label>
            <div id="contenedor">

            </div>

        </div>


        <input type="submit" name="button" id="button" onclick="var formulario = document.getElementById('miFormulario');
                                                                formulario.addEventListener('submit', handleSubmit);" value="Enviar">
    </form>
</body>
