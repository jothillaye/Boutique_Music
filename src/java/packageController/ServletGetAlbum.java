/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package packageController;

import java.io.IOException;
import java.util.Locale;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.jsp.jstl.core.Config;
import packageBusiness.Business;
import packageException.AlbumException;
import packageException.ListAlbumException;
import packageModel.Album;

/**
 *
 * @author Joachim
 */
public class ServletGetAlbum extends HttpServlet {

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
        Integer idAlbum = Integer.parseInt(request.getParameter("idAlbum"));
        Business bu = new Business();
        Album album;
        try
        {
            album = bu.getAlbum(idAlbum);
            HttpSession session = request.getSession();
            Locale locale = (Locale)Config.get(session, Config.FMT_LOCALE);

            String desc = bu.getDescAlbum(idAlbum,locale.toString());
            request.setAttribute("album", album);
            request.setAttribute("desc", desc);
            RequestDispatcher rd = request.getRequestDispatcher("detail.jsp");
            rd.forward(request, response);
        }
        catch (ListAlbumException e)
        {
            RequestDispatcher rd = request.getRequestDispatcher("erreur.jsp");
            request.setAttribute("reponse", e);
            rd.forward(request, response);
        }
        catch (AlbumException e)
        {
            RequestDispatcher rd = request.getRequestDispatcher("erreur.jsp");
            request.setAttribute("reponse", e);
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
