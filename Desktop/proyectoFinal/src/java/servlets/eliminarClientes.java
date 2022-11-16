/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import interfaces.IPersistencia;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import objetosNegocio.Cliente;
import persistencia.PersistenciaBD;

/**
 *
 * @author Administrador
 */
@WebServlet(name = "eliminarClientes", urlPatterns = {"/eliminarClientes"})
public class eliminarClientes extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
           
        IPersistencia crud = new PersistenciaBD();
        
        Cliente c = new Cliente();
        
        String numCredencial = request.getParameter("id");
        String nombre = request.getParameter("nombre");
        String direccion = request.getParameter("direccion");
        String telefono = request.getParameter("telefono");
        c.setNumCredencial(numCredencial);
        c.setNombre(nombre);
        c.setDireccion(direccion);
        c.setTelefono(telefono);

        try{
            crud.eliminar(c);
            response.sendRedirect("servletListadoClientes");
        }catch(Exception e){
            response.sendRedirect("error.jsp");
        }
        
        //      try{
//          HttpSession session =request.getSession();
//          session.setAttribute("miListaClientes", c);
//                  response.sendRedirect("eliminarCliente");
//        } catch (RuntimeException =) {
//                      response.sendRedirect("error.jsp");
//                  }
//                  try{
//                      if( request.getParameter("eliminar").equals("eliminar")){
//                          String idCliente = request.getParameter("id");
//                          Cliente c = new Cliente();
//                          c.setNumCredencial(idCliente);
//                          crud.obten(c);
//                      }
//                             
//                  }
//        
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet eliminarClientes</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet eliminarClientes at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
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
