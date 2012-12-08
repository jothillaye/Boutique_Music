/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package packageBusiness;

import java.math.BigInteger;
import java.security.MessageDigest;
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
    
    public void ajoutUtilisateur(String nom,String prenom,String rue,String numero,String boite,String localite,String codePostal, String email,String motDePasse,String mdpConf,String numTel) throws InscriptionException
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
            MessageDigest mdEnc = MessageDigest.getInstance("MD5");
            mdEnc.update(motDePasse.getBytes(),0,motDePasse.length());
            String md5 = new BigInteger(1,mdEnc.digest()).toString(16);
            Utilisateur newUtilisateur = new Utilisateur(nom,prenom,rue,num,boite,localite,cp,email,md5,numTel);
            ac.ajoutUtilisateur(newUtilisateur);
        
        }
        catch(Exception ex)
        {
            throw new InscriptionException(ex.toString());
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
