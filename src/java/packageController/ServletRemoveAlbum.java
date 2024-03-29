/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package packageController;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import packageException.RemoveAlbumException;
import packageModel.Utilisateur;

/**
 *
 * @author Joachim
 */
public class ServletRemoveAlbum extends HttpServlet {

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
        
        HttpSession sess = request.getSession();
        Utilisateur util = (Utilisateur)sess.getAttribute("user");  
        
        try
        {            
            int idAlbum = Integer.parseInt(request.getParameter("idAlbum"));
            if(util.getHasmMapPanier().containsKey(idAlbum))
            {
                util.getHasmMapPanier().remove(idAlbum);
            }
            else
            {
                throw new RemoveAlbumException("albumNoExist");  
            }

            RequestDispatcher rd = request.getRequestDispatcher("cart.jsp");
            rd.forward(request, response);  
        }
        catch(NumberFormatException e)
        {
            RequestDispatcher rd = request.getRequestDispatcher("cart.jsp");
            request.setAttribute("message","errorNbArg");
            rd.forward(request, response);        
        }    
        catch(RemoveAlbumException e)
        {
            RequestDispatcher rd = request.getRequestDispatcher("cart.jsp");
            request.setAttribute("message",e);
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
