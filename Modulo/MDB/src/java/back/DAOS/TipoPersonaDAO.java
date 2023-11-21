/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package back.DAOS;

import back.ConexionBD;
import back.Modelo.TipoPersona;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author diego
 */
public class TipoPersonaDAO {
    private ArrayList<TipoPersona> tp=new ArrayList<>();
    
    public void getTipoPersona() throws SQLException{
        ConexionBD con=new ConexionBD();
        Statement stm=con.obtenerConexion().createStatement();
        ResultSet rs=stm.executeQuery("SELECT * FROM TipoPersona");
        while(rs.next()){
            TipoPersona tpc=new TipoPersona();
            tpc.setIdTipoPersona(rs.getString("idTipoPersona"));
            tpc.setDesTipoPersona(rs.getString("DescTipoPesona"));
            tp.add(tpc);
        }       
        con.close();
    }
    public void addTipoPersona(TipoPersona tp){
        ConexionBD con=new ConexionBD();
        try{
            Statement stm=con.obtenerConexion().createStatement();
            stm.executeUpdate("INSERT INTO TipoPersona VALUES ('"+tp.getIdTipoPersona()+"','"
                +tp.getDesTipoPersona()+"')");
            con.close();
        }catch(SQLException e){
            e.getMessage();
        }
    }

    public ArrayList<TipoPersona> getTp() {
        return tp;
    }

    public void setTp(ArrayList<TipoPersona> tp) {
        this.tp = tp;
    }
}
