<%-- 
    Document   : validar
    Created on : 22/11/2023, 12:53:39 p. m.
    Author     : JOHAN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <link rel="stylesheet" type="text/css" href="css/styles.css">
    </head>

    <body>
            <%
                var a =true;
                if(a){
                    out.println(request.getParameter("PersonaImplicada"));
                    out.println(request.getParameter("item1"));
                }else{
                   
                }
            %>
    </body>
</html>
