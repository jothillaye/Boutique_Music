/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package packageController;

import java.io.IOException;
import java.util.HashMap;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import packageBusiness.Business;
import packageException.CommandeException;
import packageModel.Utilisateur;

/**
 *
 * @author Emilien
 */
public class ServletConfirmerCommande extends HttpServlet {

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
        
        HttpSession sess = request.getSession();
        Utilisateur util = (Utilisateur)sess.getAttribute("user");
        try
        {
            if(util.getIdUtilisateur()==0)
            {
                throw new CommandeException("errorConnectionCommande");
            }
            else
            {
            bus.ConfirmerCommande(util);
            RequestDispatcher redirect = request.getRequestDispatcher("confirmationCommande.jsp");
            request.setAttribute("reponse","granSuccès !!"); // bon à modifier :p
            redirect.forward(request, response);
            
            util.setHasmMapPanier(new HashMap());
            
            }
        }
        catch(CommandeException ex)
        {
            RequestDispatcher redirect = request.getRequestDispatcher("erreur.jsp");
            request.setAttribute("reponse",ex);
            redirect.forward(request, response);
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
