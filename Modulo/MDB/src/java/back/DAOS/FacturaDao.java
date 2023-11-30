package back.DAOS;

import back.Modelo.Factura;
import back.ConexionBD;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.ResultSet;


public class FacturaDAO {
    public String addFactura(Factura f){
        ConexionBD con=new ConexionBD();
        try{
            Statement stm=con.obtenerConexion().createStatement();
            stm.executeUpdate("INSERT INTO FACTURA VALUES ('"+f.getIdTipoFactura()+"','"
                +f.getnFactura()+"','"+f.getIdTipoPersona()+"','"+f.getIdTipoDoc()+"','"
                +f.getnDocumento()+"',"+f.getFac_idTipoFac()+","+f.getFac_nFactura()+",'"
                +f.getCodEmpleado()+"',CURRENT_DATE,'"+f.getTotalFactura()+"')");
            con.close();
            return "succesful";
        }catch(SQLException e){
            return e.getMessage();
        }
    }
    public int getMaxNFactura() throws SQLException{
        ConexionBD con=new ConexionBD();
        Statement stm=con.obtenerConexion().createStatement();
        ResultSet rs=stm.executeQuery("SELECT MAX(TO_NUMBER(nFactura_)) idMax FROM Factura ");
        if(rs.next()){
            int max=rs.getInt("idMax");
            con.close();
            return max;
        }else{
            con.close();
            return -1;
        }
    }
    public String getDateById(String nfac) throws SQLException{
        ConexionBD con=new ConexionBD();
        Statement stm=con.obtenerConexion().createStatement();
        ResultSet rs=stm.executeQuery("SELECT TO_CHAR(FechaFactura,'DD/MM/YYYY') fecha FROM Factura "
                + "WHERE NFACTURA_='"+nfac+"'");
        if(rs.next()){
            String max=rs.getString("fecha");
            con.close();
            return max;
        }else{
            con.close();
            return "No Date";
        }
    }
}
 

    
  