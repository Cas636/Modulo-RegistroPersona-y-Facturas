package back;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConexionBD {
	private final String stringConexion = "jdbc:oracle:thin:@localhost:1521:xe";	
        private Connection conexion = null;
	//Metodo para acceder a la BD
	public Connection obtenerConexion(){
            if(conexion!=null){
                return conexion;
            }else{
                try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conexion = DriverManager.getConnection(stringConexion, "MODFINAL","MODFINAL");
		} catch (ClassNotFoundException e) {
			System.out.println("No se encuentra el driver");
		}
		catch(SQLException e){
			System.out.println("Error en la conexión");
		}
		return conexion;
            }
	}
        public void close() throws SQLException{
            conexion.close();
        }
}
