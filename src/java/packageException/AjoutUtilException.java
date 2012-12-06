/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package packageException;

/**
 *
 * @author Emilien
 */
public class  AjoutUtilException  extends Exception {
    
    private String erreur;
    
    public AjoutUtilException (String erreur)
    {
        this.setErreur(erreur);
    }
    
    public String toString()
    {
        return this.getErreur();
    }

    /**
     * @return the erreur
     */
    public String getErreur() {
        return erreur;
    }

    /**
     * @param erreur the erreur to set
     */
    public void setErreur(String erreur) {
        this.erreur = erreur;
    }
    
    
    
}



