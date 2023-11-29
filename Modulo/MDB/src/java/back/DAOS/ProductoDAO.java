/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package back.DAOS;

import back.ConexionBD;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author diego
 */
public class ProductoDAO {
    public String getNomProductoById(String id) throws SQLException{
        ConexionBD con=new ConexionBD();
        Statement stm=con.obtenerConexion().createStatement();
        ResultSet rs=stm.executeQuery("SELECT nomProducto FROM Producto "
                + "WHERE refProducto='"+id+"'");
        if(rs.next()){           
            String nomProducto=rs.getString("nomProducto");
            con.close();
            return nomProducto;
        }else{
            con.close();
            return "Not a Ref";
        }
    }
    public int getPrecioById(String id) throws SQLException{
        ConexionBD con=new ConexionBD();
        Statement stm=con.obtenerConexion().createStatement();
        ResultSet rs=stm.executeQuery("SELECT H.VALOR FROM PRODUCTO P, HISTORICOPRECIO H "
                + "WHERE P.REFPRODUCTO='"+id+"' AND P.REFPRODUCTO=H.REFPRODUCTO AND H.FECHAFIN IS NULL");
        if(rs.next()){           
            int nomProducto=rs.getInt("VALOR");
            con.close();
            return nomProducto;
        }else{
            con.close();
            return 0;
        }
    }
    public String getIdCatById(String id) throws SQLException{
        ConexionBD con=new ConexionBD();
        Statement stm=con.obtenerConexion().createStatement();
        ResultSet rs=stm.executeQuery("SELECT idCatProducto FROM Producto "
                + "WHERE refProducto='"+id+"'");
        if(rs.next()){           
            String nomProducto=rs.getString("idCatProducto");
            con.close();
            return nomProducto;
        }else{
            con.close();
            return "Not a Ref";
        }
    }
}
