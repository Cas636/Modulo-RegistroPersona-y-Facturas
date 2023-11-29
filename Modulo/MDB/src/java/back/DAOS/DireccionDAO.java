/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package back.DAOS;

import back.ConexionBD;
import back.Modelo.Direccion;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author diego
 */
public class DireccionDAO {
    public void addDireccion(Direccion d){
        ConexionBD con=new ConexionBD();
        try{
            Statement stm=con.obtenerConexion().createStatement();
            stm.executeUpdate("INSERT INTO Direccion VALUES ('"+d.getPosicion()+"','"
                +d.getIdDireccion()+"','"+d.getIdTipoPersona()+"','"+d.getIdTipoDoc()+"','"
                +d.getnDocumento()+"','"+d.getIdNomen()+"','"+d.getValorDirec()+"')");
            con.close();
        }catch(SQLException e){
            e.getMessage();
        }
    }
    public int getMaxId() throws SQLException{
        ConexionBD con=new ConexionBD();
        Statement stm=con.obtenerConexion().createStatement();
        ResultSet rs=stm.executeQuery(
                "SELECT MAX(idDireccion) idMax FROM Direccion");
        if(rs.next()){
            int max=rs.getInt("idMax");
            con.close();
            return max;
        }else{
            con.close();
            return -1;
        }
    }
    public String getDirById(String id) throws SQLException{
        ConexionBD con=new ConexionBD();
        Statement stm=con.obtenerConexion().createStatement();
        ResultSet rs=stm.executeQuery("SELECT idnomen FROM direccion "
                + "where ndocumento='"+id+"' order by posicion");
        String dir = "";
        while(rs.next()){
            dir=dir+rs.getString("idnomen")+" ";     
        }
        con.close(); 
        return dir;
    }
}
