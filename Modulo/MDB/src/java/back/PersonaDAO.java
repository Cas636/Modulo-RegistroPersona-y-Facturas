package back;


import back.Persona;
import back.ConexionBD;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class PersonaDAO {
    ArrayList<Persona> personas;
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
    }
}
