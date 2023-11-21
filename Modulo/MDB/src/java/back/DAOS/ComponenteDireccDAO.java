/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package back.DAOS;

import back.ConexionBD;
import back.Modelo.ComponenteDirecc;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author diego
 */
public class ComponenteDireccDAO {
    private ArrayList<ComponenteDirecc> cd=new ArrayList<>();
    public void getComponenteDirecc() throws SQLException{
        ConexionBD con=new ConexionBD();
        Statement stm=con.obtenerConexion().createStatement();
        ResultSet rs=stm.executeQuery("SELECT * FROM ComponenteDirecc");
        while(rs.next()){
            ComponenteDirecc cdc=new ComponenteDirecc();
            cdc.setPosicion(rs.getInt("Posicion"));
            cdc.setDescPosicion(rs.getString("descPosicion"));
            cdc.setObligatoriedad(rs.getBoolean("Obligatoriedad"));
            cd.add(cdc);
        }
        con.close();
    }
    public ArrayList<Integer> getIds() throws SQLException{
        ConexionBD con=new ConexionBD();
        Statement stm=con.obtenerConexion().createStatement();
        ResultSet rs=stm.executeQuery("SELECT Posicion FROM ComponenteDirecc");
        ArrayList<Integer> ids = new ArrayList<>();
        while(rs.next()){
            int id;
            id= rs.getInt("Posicion");
            ids.add(id);
        }
        con.close();
        return ids;
    }
    public ArrayList<ComponenteDirecc> getCd() {
        return cd;
    }

    public void setCd(ArrayList<ComponenteDirecc> cd) {
        this.cd = cd;
    }
    
}
