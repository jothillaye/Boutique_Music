/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package packageBusiness;

import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import java.util.regex.Pattern;
import packageAccess.AccessDB;
import packageException.AlbumException;
import packageException.CommandeException;
import packageException.ConnexionException;
import packageException.GenreException;
import packageException.InscriptionException;
import packageException.ListAlbumException;
import packageModel.Album;
import packageModel.AlbumCart;
import packageModel.Categorie;
import packageModel.Utilisateur;

/**
 *
 * @author Emilien
 */
public class Business {
    AccessDB ac = new AccessDB();    
    
    public Utilisateur connexion(String login, String pass) throws ConnexionException
    {
        try 
        {
            if(login == null || login == "" || pass == null || pass == "")
            {
                throw new ConnexionException("emptyLoginPass");
            }            
            MessageDigest mdEnc = MessageDigest.getInstance("MD5");
            mdEnc.update(pass.getBytes(),0,pass.length());
            String md5Pass = new BigInteger(1,mdEnc.digest()).toString(16);
            return ac.connexion(login, md5Pass);
        }
        catch(NoSuchAlgorithmException e)
        {
            throw new ConnexionException("md5Error");
        }
    }    
    
    public void ajoutUtilisateur(String nom,String prenom,String rue,String numero,String boite,String localite,String codePostal, String email,String motDePasse,String mdpConf,String numTel) throws InscriptionException
    {
        if(nom.isEmpty() || prenom.isEmpty() || rue.isEmpty() || numero.isEmpty() || localite.isEmpty() || codePostal.isEmpty() || email.isEmpty() || motDePasse.isEmpty() || mdpConf.isEmpty() || numTel.isEmpty())
        {
            throw new InscriptionException("errorField");
        }
        
        if(Pattern.matches("[a-zA-Z -]{2,100}+",prenom)==false)
        {
            throw new InscriptionException("errorFirstName");
        }
        
        if(Pattern.matches("[a-zA-Z -]{2,100}+",nom)==false)
        {
            throw new InscriptionException("errorName");
        }
        
        if(Pattern.matches("[a-zA-Z0-9 -]{2,255}+",rue)==false)
        {
            throw new InscriptionException("errorStreet");
        } 
        
        if(Pattern.matches("[0-9]+", numero)==false)
        {
            throw new InscriptionException("errorNumero");
        }
        
        if(Pattern.matches("[a-zA-Z0-9]{0,10}+",boite)==false)
        {
            throw new InscriptionException("errorBox");
        }
        
        if(Pattern.matches("[a-zA-Z -]{2,100}+",localite)==false)
        {
            throw new InscriptionException("errorLocality");
        }
        
        if(Pattern.matches("^[0-9]{4}$",codePostal)==false)
        {            
            throw new InscriptionException("errorPostalCode");
        }
        
        if (Pattern.matches("^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$+", email)==false)
        {
            throw new InscriptionException("errorMail");
        }
        
        if(Pattern.matches("[/.0-9/+//]{8,30}+",numTel)==false)
        {
            throw new InscriptionException("errorPhone");
        }
        
        if(Pattern.matches("([a-zA-Z0-9_\\.\\-]{6,20})$+",motDePasse)==false)
        {
            throw new InscriptionException("errorPw");
        }

        
        if(motDePasse.compareTo(mdpConf)!= 0 )
        {
            throw new InscriptionException("errorPwNotMatch");
        }
        
        // Continuer les vérifications
        try
        {
            Integer num = Integer.parseInt(numero);
            Integer cp= Integer.parseInt(codePostal);
            MessageDigest mdEnc = MessageDigest.getInstance("MD5");
            mdEnc.update(motDePasse.getBytes(),0,motDePasse.length());
            String md5 = new BigInteger(1,mdEnc.digest()).toString(16);
            Utilisateur newUtilisateur = new Utilisateur(nom,prenom,rue,num,boite,localite,cp,email,md5,numTel);
            ac.ajoutUtilisateur(newUtilisateur);        
        }
        catch(NumberFormatException ex)
        {
            throw new InscriptionException("errorNumero");
        }
        catch(Exception ex)
        {
            throw new InscriptionException(ex.toString());
        } 
    } 
    
    public ArrayList<Album> getLastAlbums(Integer nbAlbum) throws ListAlbumException
    {
        return ac.getLastAlbums(nbAlbum);
    }

    public Album getAlbum(Integer idAlbum) throws ListAlbumException
    {
        return ac.getAlbum(idAlbum);
    }
    
    public Album getArtistePromo() throws ListAlbumException
    {
        return ac.getArtistePromo();
    }
    
    public void ConfirmerCommande(Utilisateur util)throws CommandeException
    {
        for (Iterator iter = util.getHasmMapPanier().entrySet().iterator(); iter.hasNext();) //Vérification des quantités dans la hashmap
        {
                Map.Entry data = (Map.Entry)iter.next();
                AlbumCart album = (AlbumCart)data.getValue();
                if(album.getQte()<1 || album.getQte()>100)
                {
                    throw new CommandeException("errorQteCommande");
                }
        }
        ac.ConfirmerCommande(util);
                
    }
    
    public ArrayList<Categorie> getCategories() throws GenreException
    {
       return ac.getCategories();
    }
    
    public ArrayList<Album> getAlbumsCategorie(Integer idCat)throws GenreException
    {
        return ac.getAlbumsCategorie(idCat);
    }
    
    public String getDescAlbum(Integer idAlbum, String langue)throws AlbumException
    {
        return ac.getDescAlbum(idAlbum, langue);
    }
    
    public ArrayList<Album> getAlbumsArtiste(Integer idArtiste)throws AlbumException
    {
        return ac.getAlbumsArtiste(idArtiste);
    }

    public String getGenre(Integer idCat) throws GenreException
    {
        return ac.getGenre(idCat);
    }
    
    
}
