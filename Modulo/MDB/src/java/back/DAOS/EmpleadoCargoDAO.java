/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package back.DAOS;

import back.ConexionBD;
import back.Modelo.EmpleadoCargo;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author diego
 */
public class EmpleadoCargoDAO {
    public EmpleadoCargo getEmpleadoCargoByCodEmp(String codEmp) throws SQLException{
        ConexionBD con=new ConexionBD();
        Statement stm=con.obtenerConexion().createStatement();
        ResultSet rs=stm.executeQuery("SELECT * FROM EmpleadoCargo "
                + "WHERE codEmpleado='"+codEmp+"'");
        EmpleadoCargo ecc=new EmpleadoCargo();
        if(rs.next()){            
            ecc.setCodCargo(rs.getString("codCargo"));
            ecc.setCodEmpleado(rs.getString("codEmpleado"));
            con.close();
            return ecc;
        }else{
            ecc.setCodEmpleado("False");
            con.close();
            return ecc;
        }
        
    }
}
