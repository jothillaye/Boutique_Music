/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package packageException;

/**
 *
 * @author Emilien
 */
public class AjoutException extends Exception {
    
    private String mess;
    
    public AjoutException(String msg)
    {
        this.mess = msg;
    }
    
    @Override
    public String toString()
    {
        return this.mess;
    }
}
