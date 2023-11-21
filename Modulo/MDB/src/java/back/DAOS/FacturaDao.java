package back.DAOS;

import back.Modelo.Factura;
import back.ConexionBD;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

public class FacturaDao {
    
     

    public static void getFacturaDao(){
        
        
        String tipoFactura = "Factura";
        Number numeroFact = 12345;
        Date fecha = new Date();

        Map<String, String> cliente = new HashMap<>();
        cliente.put("Nombre", "Pepito Perez");
        cliente.put("Documento", "123456789");
        cliente.put("Direccion", "cra14 12 c 45");
        cliente.put("Correo", "Pepitoperez@gmil.com");

        Map<String, String> vendedor = new HashMap<>();
        vendedor.put("Nombre", "Pepito Vadenas");
        vendedor.put("Documento", "123456789");
        vendedor.put("Direccion", "cra14 12 c 45");
        vendedor.put("Correo", "Pepitoperez@gmil.com");

       

        

    }
 

    
    /*
    public void getPersonaDAO() throws SQLException{
        Persona persona=new Persona();
        ConexionBD con=new ConexionBD();
        Statement stm=con.obtenerConexion().createStatement();
        ResultSet rs=stm.executeQuery("SELECT * FROM persona");
        while(rs.next()){
            persona.setnDocumento(rs.getString("nDocumento"));
            persona.setTipoDoc("idTipoDoc");
            persona.setNombre(rs.getString("nombre"));
            persona.setApellido(rs.getString("apellido"));
            persona.setDireccion(rs.getString("direccion"));
            persona.setCorreo(rs.getString("correo"));
            persona.setCelular(rs.getString("celular"));
            personas.add(persona);
        }
        con.close();
    }
    public void addPersona(Persona persona){
        ConexionBD con=new ConexionBD();
        try{
            Statement stm=con.obtenerConexion().createStatement();
            stm.executeUpdate("INSERT INTO Persona VALUES ('"+persona.getTipoDoc()+"','"
                +persona.getnDocumento()+"','"+persona.getNombre()+"','"+persona.getApellido()+"','"
                +persona.getDireccion()+"','"+persona.getCorreo()+"','"+persona.getCelular()+"')");
            con.close();
        }catch(SQLException e){
            e.getMessage();
        }
        
    }
    public boolean existente(String nDocumento){
        ConexionBD con=new ConexionBD();
        try{
            Statement stm=con.obtenerConexion().createStatement();
            ResultSet rs=stm.executeQuery("SELECT nDocumento FROM persona WHERE nDocumento='"+nDocumento+"'");
            return rs.next();
        }catch(SQLException e){
            e.getMessage();        
        }
        return false;
    }*/

}
