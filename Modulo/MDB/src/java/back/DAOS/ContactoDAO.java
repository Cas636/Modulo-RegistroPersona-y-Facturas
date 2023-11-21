/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package back.DAOS;

import back.ConexionBD;
import back.Modelo.Contacto;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author diego
 */
public class ContactoDAO {
    public void addContacto(Contacto contacto){
        ConexionBD con=new ConexionBD();
        try{
            Statement stm=con.obtenerConexion().createStatement();
            stm.executeUpdate("INSERT INTO Contacto VALUES ('"+contacto.getConsecContacto()+"','"
                +contacto.getIdTipoContacto()+"','"+contacto.getDescTipoContacto()+"','"+contacto.getIdTipoPersona()+"','"
                +contacto.getIdTipoDoc()+"','"+contacto.getnDocumento()+"','"+contacto.getDescContacto()+"')");
            con.close();
        }catch(SQLException e){
            e.getMessage();
        }
        
    }
    public int getMaxId() throws SQLException{
        ConexionBD con=new ConexionBD();
        Statement stm=con.obtenerConexion().createStatement();
        ResultSet rs=stm.executeQuery(
                "SELECT MAX(consecContacto) idMax FROM Contacto ");
        if(rs.next()){
            int max=rs.getInt("idMax");
            con.close();
            return max;
        }else{
            con.close();
            return -1;
        }
    }
}
