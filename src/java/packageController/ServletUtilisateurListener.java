/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package packageController;

import java.util.Locale;
import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;
import javax.servlet.jsp.jstl.core.Config;
import packageModel.Utilisateur;

/**
 * Web application lifecycle listener.
 *
 * @author Emilien
 */
@WebListener()
public class ServletUtilisateurListener implements HttpSessionListener {

    @Override
    public void sessionCreated(HttpSessionEvent se) {
        HttpSession session = se.getSession(); // Récupération de la session en cours
        Utilisateur user = new Utilisateur();
        //HashMap<Integer, AlbumCart> hashMapPanier = new HashMap();
        user.setMail("");
        user.setIdUtilisateur(0);
        //user.setHasmMapPanier(hashMapPanier);
        session.setAttribute("user", user);
        Locale locale = new Locale("fr");
        Config.set(session, Config.FMT_LOCALE, locale);
    }

    @Override
    public void sessionDestroyed(HttpSessionEvent se) {
        throw new UnsupportedOperationException("Not supported yet.");
    }
}
