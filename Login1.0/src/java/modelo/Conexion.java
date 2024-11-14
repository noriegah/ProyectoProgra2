
package modelo;

import java.sql.Connection;  
import java.sql.DriverManager;  
import java.sql.SQLException;


public class Conexion {
    Connection con;
    public Connection getConnection() throws SQLException{
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/registro", "root", "");
        }catch (Exception e){
            
        }
        return con;
}
}