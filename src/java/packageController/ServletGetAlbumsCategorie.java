/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package packageController;

import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import packageBusiness.Business;
import packageException.GenreException;
import packageModel.Album;

/**
 *
 * @author Emilien
 */
public class ServletGetAlbumsCategorie extends HttpServlet {

    /**
     * Processes requests for both HTTP
     * <code>GET</code> and
     * <code>POST</code> methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        Business bus = new Business();
        
        try
        {
            Integer idCat = Integer.parseInt(request.getParameter("id"));
            String genre = bus.getGenre(idCat);
            ArrayList<Album> listAlbum = bus.getAlbumsCategorie(idCat);           
            RequestDispatcher rd = request.getRequestDispatcher("categorie.jsp");
            request.setAttribute("genre", genre); 
            request.setAttribute("idGenre", idCat); 
            request.setAttribute("albums", listAlbum);            
            rd.forward(request, response);
    
        }
        catch(GenreException ex)
        {
            RequestDispatcher rd = request.getRequestDispatcher("erreur.jsp");
            request.setAttribute("reponse", ex);            
            rd.forward(request, response);
        }
        catch(NumberFormatException ex)
        {
            RequestDispatcher rd = request.getRequestDispatcher("erreur.jsp");
            request.setAttribute("reponse", "errorNbArg");            
            rd.forward(request, response);
        }
        
        
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP
     * <code>GET</code> method.
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
     * Handles the HTTP
     * <code>POST</code> method.
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
