<%@page import="back.*" contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro</title>
        <link rel="stylesheet" type="text/css" href="css/styles.css">
    </head>

    <body>
        <form>
            <% PersonaDAO persona=new PersonaDAO(); 
                //if(persona.existente(request.getParameter("nDocumento"))){
                //out.println("El documento del usuario ya ha sido registrado"); } 
                //else{ /*
                Persona person=new Persona();
                person.setnDocumento(request.getParameter("nDocumento"));
                person.setTipoDoc(request.getParameter("tipoDocumento"));
                person.setNombre(request.getParameter("nombre")); 
                person.setApellido(request.getParameter("apellido"));
                person.setDireccion(request.getParameter("direccion"));
                person.setCorreo(request.getParameter("correo")); 
                person.setCelular(request.getParameter("celular"));
                person.setTipoPersona(Integer.parseInt(request.getParameter("tipoPersona")));
                person.setTipoContacto(Integer.parseInt(request.getParameter("tipoContacto")));
                person.setTipo_via(request.getParameter("tipo_via"));
                person.setNum_nom_principal(request.getParameter("num_nom_principal"));
                person.setLet_num_principal(request.getParameter("let_num_principal"));
                person.setPrefBis(request.getParameter("prefBis"));
                person.setLet_num_prebis(request.getParameter("let_num_prebis"));
                person.setCuadrante(request.getParameter("cuadrante"));
                person.setNum_via_gener(Integer.parseInt(request.getParameter("num_via_gener")));
                person.setLet_num_via_gener(request.getParameter("let_num_via_gener"));
                person.setSufBis(request.getParameter("sufBis"));
                person.setLet_num_su_bis(request.getParameter("let_num_su_bis"));
                person.setNum_placa(Integer.parseInt(request.getParameter("num_placa")));
                person.setCuadrante_via_gener(request.getParameter("cuadrante_via_gener"));
                person.setComplemento1(request.getParameter("complemento1"));
                person.setBarrio(request.getParameter("barrio"));
                person.setNom_barrio(request.getParameter("nom_barrio"));
                person.setUrbanizacion(request.getParameter("urbanizacion"));
                person.setNom_urbanizacion(request.getParameter("nom_urbanizacion"));
                person.setManzana(request.getParameter("manzana"));
                person.setNom_manzana(request.getParameter("nom_manzana"));
                person.setTipo_predio(request.getParameter("tipo_predio"));
                person.setNom_predio(request.getParameter("nom_predio"));
                person.setComplemento2(request.getParameter("complemento2")); 
                
                persona.addPersona(person);
                out.println("Usuario registrado exitosamente"+person); } %>

        </form>
    </body>

</html>