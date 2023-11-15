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
                if(persona.existente(request.getParameter("nDocumento"))){
                out.println("El documento del usuario si esta pero falta verificarlo y reenviarlo a otra pagina"); } 
                else{ 
                out.println("El documento del usuario no se encuentra registrado, registrese ");   
                String enlace = "<a href=\"signUp.html\">Ir a la página de registro</a>";
                out.println(enlace);
    }; %>

        </form>
    </body>

</html>