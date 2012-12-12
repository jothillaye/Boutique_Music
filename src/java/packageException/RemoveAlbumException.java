/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package packageException;

/**
 *
 * @author BAVAY Emilien - THILLAYE Joachim
 */
public class RemoveAlbumException extends Exception{
    
    private String mess;
    
    public RemoveAlbumException(String msg)
    {
        this.mess = msg;
    }
    
    @Override
    public String toString()
    {
        return this.mess;
    }
    
}

