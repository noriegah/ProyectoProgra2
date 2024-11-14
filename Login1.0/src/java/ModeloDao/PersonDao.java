
package ModeloDao;

import Interfaces.CRUD;
import java.util.List;
import modelo.Persona;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import modelo.Conexion;

public class PersonDao implements CRUD{
    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    Persona p=new Persona();
    
    @Override
    public List listar() {
        ArrayList<Persona>list=new ArrayList<>();
        String sql="select * from persona";
        try{
           con=cn.getConnection();
           ps=con.prepareStatement(sql);
           rs=ps.executeQuery();
           while(rs.next()){
               Persona per=new Persona();
               per.setId(rs.getInt("ID"));
               per.setNombre(rs.getString("NOMBRE"));
               per.setCorreo(rs.getString("CORREO"));
               per.setClave(rs.getString("CLAVE"));
               list.add(per);
           }
        }catch(Exception e){
            
        }
        return list;
    }

    @Override
    public Persona list(int id) {
       String sql="select * from persona where ID="+id;
        try{
           con=cn.getConnection();
           ps=con.prepareStatement(sql);
           rs=ps.executeQuery();
           while(rs.next()){
            
               p.setId(rs.getInt("ID"));
               p.setNombre(rs.getString("NOMBRE"));
               p.setCorreo(rs.getString("CORREO"));
               p.setClave(rs.getString("CLAVE"));
           }
        }catch(Exception e){
            
        }
        return p;
    }

    @Override
    public boolean add(Persona per) {
        String sql="insert into persona(ID, NOMBRE, CORREO, CLAVE)values('"+per.getId()+"','"+per.getNombre()+"','"+per.getCorreo()+"','"+per.getClave()+"')";
        try{
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        }catch(Exception e){
            
        }
        return false;
    }

    @Override
    public boolean edit(Persona per) {
         String sql="update persona set ID='"+per.getId()+"',NOMBRE='"+per.getNombre()+"',CORREO='"+per.getCorreo()+"',CLAVE='"+per.getClave()+"'where ID="+per.getId();
         try{
             con=cn.getConnection();
             ps=con.prepareStatement(sql);
             ps.executeUpdate();
         }catch(Exception e){
             
         }
         return false;
    }

    @Override
    public boolean eliminar(int id) {
       String sql="delete from persona where ID="+id;
       try{
           con=cn.getConnection();
           ps=con.prepareStatement(sql);
           ps.executeUpdate();
       }catch(Exception e){
           
       }
       return false;
    }
       
    
}
