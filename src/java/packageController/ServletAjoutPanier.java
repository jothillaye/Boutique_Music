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
import packageException.AjoutException;
import packageException.ListAlbumException;
import packageModel.Album;
import packageModel.AlbumCart;
import packageModel.Utilisateur;

/**
 *
 * @author Emilien
 */
public class ServletAjoutPanier extends HttpServlet {

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
        
        
        Integer idAlbum = Integer.parseInt(request.getParameter("ID"));
        Integer qte = Integer.parseInt(request.getParameter("qte"));
        HttpSession sess = request.getSession();
        Utilisateur util = (Utilisateur)sess.getAttribute("user");
        
        try
        {
              
            if(qte<1)
            {
                throw new AjoutException("errorQte");
            }
            Business busi = new Business();
            Album alb =  busi.getAlbum(idAlbum);
            // if(alb==null)
            //{
                //throw new AjoutException("errorUnknowAlbum");
            //}
            //else
            //{
                if(util.getHasmMapPanier().containsKey(idAlbum))
                {
                    AlbumCart abCart = (AlbumCart)util.getHasmMapPanier().get(idAlbum);
                    if(abCart.getQte() + qte > 100)
                    {
                        throw new AjoutException("errorQte");
                    }
                    else
                    {
                        abCart.setQte(qte + abCart.getQte());
                    }
                }
                else
                {
                    AlbumCart abCart = new AlbumCart(alb,qte);
                    util.getHasmMapPanier().put(abCart.getIdAlbum(), abCart);
                }
                
                sess.setAttribute("user",util);
                RequestDispatcher rd = request.getRequestDispatcher("cart.jsp");
                rd.forward(request, response);
           // }                   

        } 
        catch (ListAlbumException ex) 
        {
            //Logger.getLogger(ServletAjoutPanier.class.getName()).log(Level.SEVERE, null, ex);
                RequestDispatcher rd = request.getRequestDispatcher("erreur.jsp");
                request.setAttribute("reponse",ex);
                rd.forward(request, response);
        }
        catch(AjoutException ex)
        {
                RequestDispatcher rd = request.getRequestDispatcher("erreur.jsp");
                request.setAttribute("reponse",ex);
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
