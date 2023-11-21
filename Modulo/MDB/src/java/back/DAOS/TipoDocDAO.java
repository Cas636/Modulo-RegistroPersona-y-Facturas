/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package back.DAOS;

import back.ConexionBD;
import back.Modelo.TipoDoc;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author diego
 */
public class TipoDocDAO {
    private ArrayList<TipoDoc> td=new ArrayList<>();
    public void getTipoDoc() throws SQLException{
        ConexionBD con=new ConexionBD();
        Statement stm=con.obtenerConexion().createStatement();
        ResultSet rs=stm.executeQuery("SELECT * FROM TipoDoc");
        while(rs.next()){
            TipoDoc tdc=new TipoDoc();
            tdc.setIdTipoDoc(rs.getString("idTopoDoc"));
            tdc.setDescTipoDoc(rs.getString("descTipoDoc"));
            td.add(tdc);
        }
        con.close();
    }

    public ArrayList<TipoDoc> getTd() {
        return td;
    }

    public void setTd(ArrayList<TipoDoc> td) {
        this.td = td;
    }
    
}
