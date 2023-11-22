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
public class CargoDAO {
    public String getDescCargoByID(String idCargo) throws SQLException{
        ConexionBD con=new ConexionBD();
        Statement stm=con.obtenerConexion().createStatement();
        ResultSet rs=stm.executeQuery("SELECT UPPER(nomCargo) cargo FROM Cargo "
                + "WHERE codCargo='"+idCargo+"' AND estadoCargo=1");       
        if(rs.next()){
            String nCargo=rs.getString("cargo");
            con.close();
            return nCargo;
        }else{
            con.close();
            return "Cargo inactivo o inexistente";
        }
    }
}
