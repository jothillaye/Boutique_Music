/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package packageModel;

import java.util.HashMap;
import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

/**
 * Web application lifecycle listener.
 *
 * @author Emilien
 */
@WebListener()
public class UtilisateurListener implements HttpSessionListener {

    @Override
    public void sessionCreated(HttpSessionEvent se) {
        HttpSession session = se.getSession(); // Récupération de la session en cours
        Utilisateur user = new Utilisateur();
        HashMap<Integer, AlbumCart> hashMapPanier = new HashMap();
        user.setMail("");
        user.setIdUtilisateur(0);
        user.setHasmMapPanier(hashMapPanier);
        session.setAttribute("user", user);
    }

    @Override
    public void sessionDestroyed(HttpSessionEvent se) {
        throw new UnsupportedOperationException("Not supported yet.");
    }
}
