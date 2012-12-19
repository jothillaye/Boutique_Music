/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package packageException;

/**
 *
 * @author Emilien
 */
public class InscriptionException extends Exception {
    
    private String erreur;
    
    public InscriptionException(String erreur)
    {
        this.erreur=erreur;
    }
    
    public String toString()
    {
        return this.erreur;
    }

}
