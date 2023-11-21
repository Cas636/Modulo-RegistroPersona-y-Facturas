/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package back.DAOS;

import back.ConexionBD;
import back.Modelo.Nomenclatura;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author diego
 */
public class NomenclaturaDAO {
    private ArrayList<Nomenclatura> n=new ArrayList<>();
    public void getNomenclatura(int pos) throws SQLException{        
        ConexionBD con=new ConexionBD();
        Statement stm=con.obtenerConexion().createStatement();
        ResultSet rs=stm.executeQuery(
                "SELECT DISTINCT N.idNomen,N.DescNomen "
                        + "FROM Nomenclatura N, ComponenteDirecc C "
                        + "WHERE N.Posicion="+pos);
        while(rs.next()){
            Nomenclatura nc=new Nomenclatura();
            nc.setIdNomen(rs.getString("idNomen"));
            nc.setDescNomen(rs.getString("DescNomen"));
            n.add(nc);
        }
        con.close();
    }

    public ArrayList<Nomenclatura> getN() {
        return n;
    }

    public void setN(ArrayList<Nomenclatura> n) {
        this.n = n;
    }
    
}
