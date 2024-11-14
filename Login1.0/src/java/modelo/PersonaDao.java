/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package modelo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class PersonaDao implements Validar {
    Connection con;
    Conexion cn = new Conexion();
    PreparedStatement ps;
    ResultSet rs;

    @Override
    public int validar(Persona per) {
        String sql = "SELECT * FROM persona WHERE CORREO=? AND CLAVE=?";
        int r = 0;  // Inicializa r aquí
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            ps.setString(1, per.getCorreo());
            ps.setString(2, per.getClave());
            rs = ps.executeQuery();

            // Verifica si hay al menos un resultado
            if (rs.next()) {
                r = 1;  // Indica que la validación fue exitosa
                // Se pueden asignar los valores si es necesario
                per.setCorreo(rs.getString("CORREO"));
                per.setClave(rs.getString("CLAVE"));
            }
        } catch (SQLException e) {
            e.printStackTrace();  // Imprime la excepción para depuración
            return 0;
        } finally {
            // Cierra los recursos en el bloque finally
            try {
                if (rs != null) rs.close();
                if (ps != null) ps.close();
                if (con != null) con.close();
            } catch (SQLException e) {
                e.printStackTrace();  // Maneja excepciones al cerrar
            }
        }
        return r;  // Devuelve el resultado de la validación
    }
}
