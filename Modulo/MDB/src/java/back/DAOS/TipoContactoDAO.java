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
    private ArrayList<TipoContacto> tc=new ArrayList<>();
    public void getTipoContacto() throws SQLException{
        ConexionBD con=new ConexionBD();
        Statement stm=con.obtenerConexion().createStatement();
        ResultSet rs=stm.executeQuery("SELECT * FROM TipoContacto");
        while(rs.next()){
            TipoContacto tcc=new TipoContacto();
            tcc.setIdTipoContacto(rs.getString("idTipoContacto"));
            tcc.setDescTipoContacto(rs.getString("descTipoContacto"));
            tc.add(tcc);
        }
        con.close();
    }
    public String getDescByID(String id) throws SQLException{
        ConexionBD con=new ConexionBD();
        Statement stm=con.obtenerConexion().createStatement();
        ResultSet rs=stm.executeQuery("SELECT descTipoContacto FROM TipoContacto "
                + "WHERE idTipoContacto='"+id+"'");
        if(rs.next()){
            String desc;
            desc=rs.getString("descTipoContacto");
            con.close();
            return desc;
        }else{
            return "Invalid Type";
        }
        
    }
    public ArrayList<String> getIds() throws SQLException{
        ConexionBD con=new ConexionBD();
        Statement stm=con.obtenerConexion().createStatement();
        ResultSet rs=stm.executeQuery("SELECT idTipoContacto FROM TipoContacto");
        ArrayList<String> ids=new ArrayList<>();
        while(rs.next()){           
            ids.add(rs.getString("idTipoContacto"));           
        }
        con.close();
        return ids;
    }
    public ArrayList<TipoContacto> getTc() {
        return tc;
    }

    public void setTc(ArrayList<TipoContacto> tc) {
        this.tc = tc;
    }
    
}
