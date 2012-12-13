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
import packageBusiness.Business;
import packageException.ConnexionException;
import packageModel.Utilisateur;

/**
 *
 * @author Joachim
 */
public class ServletConnexion extends HttpServlet {

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
        String login = request.getParameter("login");
        String pass = request.getParameter("password");
        String url = request.getParameter("url");
        
        Business business = new Business();
        Utilisateur user;
        
        try
        {
            user = business.connexion(login, pass);
            
            if(user.getMail() == "")
            {
                throw new ConnexionException("wrongMail");
            }
            else
            {
                HttpSession session = request.getSession();
                Utilisateur GuestUtil = (Utilisateur)session.getAttribute("user");
                user.setHasmMapPanier(GuestUtil.getHasmMapPanier());
                session.setAttribute("user", user);

                RequestDispatcher rd = request.getRequestDispatcher(url);
                request.setAttribute("connexionMsg", "connexionOK");
                rd.forward(request, response);
            }
        }
        catch (ConnexionException e)
        {
            RequestDispatcher rd = request.getRequestDispatcher(url);
            request.setAttribute("connexionMsg", e);            
            request.setAttribute("emailMsg", login);
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
