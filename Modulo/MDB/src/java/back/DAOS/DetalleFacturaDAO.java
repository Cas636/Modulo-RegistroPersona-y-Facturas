/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package back.DAOS;

import back.ConexionBD;
import back.Modelo.DetalleFactura;
import back.Modelo.Factura;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author diego
 */
public class DetalleFacturaDAO {
    public String addDetalleFactura(DetalleFactura f){
        ConexionBD con=new ConexionBD();
        try{
            Statement stm=con.obtenerConexion().createStatement();
            stm.executeUpdate("INSERT INTO DETALLEFACTURA VALUES ('"+f.getIdTipoFac()+"','"
                +f.getnFactura()+"',"+f.getItem()+",'"+f.getIdCatProducto()+"','"
                +f.getRefProducto()+"',"+f.getCantidad()+","+f.getPrecio()+")");
            con.close();
            return "succesful";
        }catch(SQLException e){
            return e.getMessage();
        }
    }
    public int getMaxItem() throws SQLException{
        ConexionBD con=new ConexionBD();
        Statement stm=con.obtenerConexion().createStatement();
        ResultSet rs=stm.executeQuery("SELECT MAX(ITEM) idMax FROM DETALLEFACTURA ");
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
