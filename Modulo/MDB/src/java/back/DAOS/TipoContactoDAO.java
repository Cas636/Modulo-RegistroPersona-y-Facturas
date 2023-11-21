/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package back.DAOS;

import back.ConexionBD;
import back.Modelo.TipoContacto;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author diego
 */
public class TipoContactoDAO {
    private ArrayList<TipoContacto> td;
    public void getTipoDoc() throws SQLException{
         TipoContacto tdc=new TipoContacto();
        ConexionBD con=new ConexionBD();
        Statement stm=con.obtenerConexion().createStatement();
        ResultSet rs=stm.executeQuery("SELECT * FROM TipoContacto");
        while(rs.next()){
            tdc.setIdTipoContacto(rs.getString("idTipoContacto"));
            tdc.setDescTipoContacto(rs.getString("descTipoContacto"));
            td.add(tdc);
        }
        con.close();
    }
}
