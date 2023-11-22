<%@page import="back.DAOS.*,back.Modelo.*" contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro</title>
        <link rel="stylesheet" type="text/css" href="css/styles.css">
    </head>

    <body>
            <%
                PersonaDAO persona=new PersonaDAO();
                ContactoDAO contacto= new ContactoDAO();
                DireccionDAO direccion= new DireccionDAO();
                if(persona.existente(request.getParameter("nDocumento"))){
                    out.println("El documento del usuario ya ha sido registrado");
                }else{
                    Persona person=new Persona();
                    person.setIdTipoPersona(request.getParameter("tipoPersona"));
                    person.setIdTipoDoc(request.getParameter("tipoDocumento"));
                    person.setnDocumento(request.getParameter("nDocumento"));
                    person.setNombre(request.getParameter("nombre"));
                    person.setApellido(request.getParameter("apellido"));
                    persona.addPersona(person);
                    out.println("Usuario registrado exitosamente"+person);
                    Contacto c=new Contacto();
                    TipoContactoDAO tc=new TipoContactoDAO();
                    c.setIdTipoPersona(request.getParameter("tipoPersona"));
                    c.setIdTipoDoc(request.getParameter("tipoDocumento"));
                    c.setnDocumento(request.getParameter("nDocumento"));
                    for(String id : tc.getIds()){
                        c.setConsecContacto(contacto.getMaxId()+1);
                        c.setIdTipoContacto(id);
                        c.setDescTipoContacto(tc.getDescByID(id));
                        c.setDescContacto(request.getParameter("descContacto"));
                        contacto.addContacto(c);
                    }
                    Direccion d=new Direccion();                  
                    d.setIdDireccion(direccion.getMaxId()+1);
                    d.setIdTipoPersona(request.getParameter("tipoPersona"));
                    d.setIdTipoDoc(request.getParameter("tipoDocumento"));
                    d.setnDocumento(request.getParameter("nDocumento"));
                    d.setValorDirec("Dir");
                    ComponenteDireccDAO cd=new ComponenteDireccDAO();
                    for(int id : cd.getIds()){
                        d.setPosicion(id);
                        d.setIdNomen(request.getParameter(Integer.toString(id)));
                        direccion.addDireccion(d);
                    }
                }
            %>
    </body>
</html>