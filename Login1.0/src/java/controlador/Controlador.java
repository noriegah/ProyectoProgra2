
package controlador;

import ModeloDao.PersonDao;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.Persona;
import modelo.PersonaDao;

public class Controlador extends HttpServlet {
    PersonaDao dao=new PersonaDao();
    Persona p=new Persona();
    PersonDao pdao=new PersonDao();
    int r;
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
    String accion=request.getParameter("accion");
    if(accion.equals("Ingresar")){
        String correo=request.getParameter("txtcorreo");
        String clave=request.getParameter("txtclave");
        p.setCorreo(correo);
        p.setClave(clave);
        r=dao.validar(p);
        if (r==1){
            request.getRequestDispatcher("Principal.jsp").forward(request, response);
    }else{
          request.getRequestDispatcher("index.jsp").forward(request, response);
        }
    }
}

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    String listar="vistas/listar.jsp";
    String add="vistas/add.jsp";
    String edit="vistas/edit.jsp";
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        String acceso="";
        String action=request.getParameter("accion");
        if (action.equalsIgnoreCase("listar")){
            acceso=listar;
            
        }else if(action.equalsIgnoreCase("add")){
            acceso=add;
        }
        else if(action.equalsIgnoreCase("Agregar")){
            String idString=request.getParameter("txtID");
            int id=Integer.parseInt(idString);
            String nombre=request.getParameter("txtNom");
            String correo=request.getParameter("txtCorreo");
            String clave=request.getParameter("txtClave");
            p.setId(id);
            p.setNombre(nombre);
            p.setCorreo(correo);
            p.setClave(clave);
            pdao.add(p);
            acceso=listar;
            
        }
        else if(action.equalsIgnoreCase("editar")){
            request.setAttribute("idper", request.getParameter("ID"));
            System.out.println("ID");
            acceso=edit;
        }
        else if(action.equalsIgnoreCase("Actualizar")){
            String idString=request.getParameter("txtID");
            int id=Integer.parseInt(idString);
            String nombre=request.getParameter("txtNom");
            String correo=request.getParameter("txtCorreo");
            String clave=request.getParameter("txtClave");
            p.setId(id);
            p.setNombre(nombre);
            p.setCorreo(correo);
            p.setClave(clave);
            pdao.edit(p);
            acceso=listar;
        }
        else if(action.equalsIgnoreCase("eliminar")){
            int id=Integer.parseInt(request.getParameter("ID"));
            p.setId(id);
            pdao.eliminar(id);
            acceso=listar;
        }
        RequestDispatcher vista=request.getRequestDispatcher(acceso);
        vista.forward(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
