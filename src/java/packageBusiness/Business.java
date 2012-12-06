/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package packageBusiness;

import java.util.ArrayList;
import packageAccess.AccessDB;
import packageException.ListAlbumException;
import packageModel.Album;

/**
 *
 * @author Emilien
 */
public class Business {
    AccessDB ac = new AccessDB();    
    
    public void addUser(String nom,String prenom,String rue,String numero,String boite,String localite,String codePostal, String email,String motDePasse)
    {
        
    }
    
    public ArrayList<Album> getLastAlbums() throws ListAlbumException
    {
         System.out.println("testBu");
        return ac.getLastAlbums();
    }
    
}
