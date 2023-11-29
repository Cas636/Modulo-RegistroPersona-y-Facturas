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
 *SELECT VALOR FROM HISTORICOPRECIO WHERE FECHAFIN IS null AND REFPRODUCTO='00001';
 * @author diego
 */

public class HistoricoPrecioDAO {
    public int getPrecioById(String id) throws SQLException{
        ConexionBD con=new ConexionBD();
        Statement stm=con.obtenerConexion().createStatement();
        ResultSet rs=stm.executeQuery("SELECT VALOR FROM HISTORICOPRECIO "
                + "WHERE FECHAFIN IS null AND REFPRODUCTO='"+id+"'");
        if(rs.next()){
            int precio=rs.getInt("VALOR");
            con.close();
            return precio;
        }else{
            con.close();
            return -1;
        }
    }
}