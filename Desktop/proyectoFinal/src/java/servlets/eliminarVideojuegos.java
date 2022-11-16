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
import objetosNegocio.Videojuego;
import persistencia.PersistenciaBD;

/**
 *
 * @author Administrador
 */
@WebServlet(name = "eliminarVideojuegos", urlPatterns = {"/eliminarVideojuegos"})
public class eliminarVideojuegos extends HttpServlet {

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
        Videojuego v = new Videojuego();
        String numCatalogo = request.getParameter("id");
        String titulo = request.getParameter("titulo");
        String genero = request.getParameter("genero");
        String clasificacion = request.getParameter("clasificacion");
        String consola = request.getParameter("consola");
        String fabricante = request.getParameter("fabricante");
        String version = request.getParameter("version");
        v.setNumCatalogo(numCatalogo);
        v.setTitulo(titulo);
        v.setGenero(genero);
        v.setClasificacion(clasificacion);
        v.setConsola(consola);
        v.setFabricante(fabricante);
        v.setVersion(0);
        
        try{
            crud.eliminar(v);
            response.sendRedirect("servletListadoVideojuegos");
        }catch(Exception e){
            response.sendRedirect("error.jsp");
        }
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet eliminarVideojuegos</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet eliminarVideojuegos at " + request.getContextPath() + "</h1>");
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
