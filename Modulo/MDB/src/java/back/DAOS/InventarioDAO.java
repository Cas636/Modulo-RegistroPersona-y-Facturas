/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package back.DAOS;

import back.ConexionBD;
import back.Modelo.Inventario;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author diego
 */
public class InventarioDAO {
    public String addInventario(Inventario f) throws SQLException{
        ConexionBD con=new ConexionBD();
        try{
            Statement stm=con.obtenerConexion().createStatement();
            stm.executeUpdate("INSERT INTO INVENTARIO VALUES ("+f.getConsecInven()+",'"
                +f.getIdTipoFac()+"','"+f.getnFactura()+"',"+f.getItem()+","+f.getInv_consecInven()+",'"
                +f.getIdCatProducto()+"','"+f.getRefProducto()+"',CURRENT_DATE,"
                +f.getSalen()+","+f.getEntran()+","+f.getExistencia()+")");
            con.close();
            return "succesful";
        }catch(SQLException e){
            con.close();
            return e.getMessage();
        }
    }
    public int getExistenciaReciente(String id) throws SQLException{
        ConexionBD con=new ConexionBD();
        Statement stm=con.obtenerConexion().createStatement();
        ResultSet rs=stm.executeQuery("SELECT existencia FROM Inventario "
                + "WHERE refProducto='"+id+"' AND "
                + "CURRENT_DATE-fechaInve=(SELECT MIN(CURRENT_DATE-fechaInve) FROM Inventario "
                + "WHERE refProducto='"+id+"')");
        if(rs.next()){
            int existencia=rs.getInt("existencia");
            con.close();
            return existencia;
        }else{
            con.close();
            return 0;
        }
    }
    public int getConsecReciente(String id) throws SQLException{
        ConexionBD con=new ConexionBD();
        Statement stm=con.obtenerConexion().createStatement();
        ResultSet rs=stm.executeQuery("SELECT consecInven FROM Inventario "
                + "WHERE refProducto='"+id+"' AND "
                + "CURRENT_DATE-fechaInve=(SELECT MIN(CURRENT_DATE-fechaInve) FROM Inventario "
                + "WHERE refProducto='"+id+"')");
        if(rs.next()){
            int existencia=rs.getInt("consecInven");
            con.close();
            return existencia;
        }else{
            con.close();
            return 0;
        }
    }
    public int getMaxConsec() throws SQLException{
        ConexionBD con=new ConexionBD();
        Statement stm=con.obtenerConexion().createStatement();
        ResultSet rs=stm.executeQuery("SELECT MAX(consecInven) idMax FROM Inventario");
        if(rs.next()){
            int existencia=rs.getInt("idMax");
            con.close();
            return existencia;
        }else{
            con.close();
            return -1;
        }
    }
    public boolean getExistenciasSuficientes(int pedido, String id) throws SQLException{  
        return pedido<getExistenciaReciente(id);
    }
}
