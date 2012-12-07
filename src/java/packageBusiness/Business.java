/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package packageBusiness;

import java.util.ArrayList;
import java.util.regex.Pattern;
import packageAccess.AccessDB;
import packageException.InscriptionException;
import packageException.ListAlbumException;
import packageModel.Album;
import packageModel.Utilisateur;

/**
 *
 * @author Emilien
 */
public class Business {
    AccessDB ac = new AccessDB();    
    
    public void ajoutUtilisateur(String nom,String prenom,String rue,String numero,String boite,String localite,String codePostal, String email,String motDePasse,String mdpConf) throws InscriptionException
    {
        if(nom.isEmpty() || prenom.isEmpty() || rue.isEmpty() || numero.isEmpty() || boite.isEmpty() || localite.isEmpty() || codePostal.isEmpty() || email.isEmpty() && motDePasse.isEmpty() && mdpConf.isEmpty())
       {
           throw new InscriptionException("Les champes n'étaient pas complets.");
       }
        
        if(motDePasse.compareTo(mdpConf)!= 0 )
        {
            throw new InscriptionException("Les mots de passes ne correspondent pas.");
        }
        
        if(Pattern.matches("[^a-zA-Z -]",prenom))
        {
            throw new InscriptionException("Le prénom ne respectait pas le format demandé.");
        }
        
        if(Pattern.matches("[^a-zA-Z -]",nom))
        {
            throw new InscriptionException("Le nom ne respectait pas le format demandé.");
        }

        // Continuer les vérifications
        try
        {
            int num = Integer.parseInt(numero);
            int cp= Integer.parseInt(codePostal);
            Utilisateur newUtilisateur = new Utilisateur(nom,prenom,rue,num,boite,localite,cp,email,motDePasse);
        
        }
        catch(Exception ex)
        {
            
        }
                
       
    } 

    
    public ArrayList<Album> getLastAlbums() throws ListAlbumException
    {
        return ac.getLastAlbums();
    }

    public Album getAlbum(int idAlbum) throws ListAlbumException
    {
        return ac.getAlbum(idAlbum);
    }
    
}
