/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package back.DAOS;

import back.ConexionBD;
import back.Modelo.Empleado;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author diego
 */
public class EmpleadoDAO {
    public Empleado getEmpleadoById(String id) throws SQLException{
        ConexionBD con=new ConexionBD();
        Statement stm=con.obtenerConexion().createStatement();
        ResultSet rs=stm.executeQuery("SELECT nomEmpleado, apellEmpleado, Correo "
                + "FROM Empleado WHERE codEmpleado='"+id+"'");
        Empleado ec=new Empleado();
        if(rs.next()){
            ec.setNomEmpleado(rs.getString("nomEmpleado"));
            ec.setApellEmpleado(rs.getString("apellEmpleado"));
            ec.setCorreo(rs.getString("Correo"));
            con.close();
            return ec;
        }else{
            ec.setCodEmpleado("False");
            con.close();
            return ec;
        }
    }
}
