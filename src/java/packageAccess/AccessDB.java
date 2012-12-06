/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package packageAccess;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;
import packageException.AjoutUtilException;
import packageException.ListAlbumException;
import packageModel.Album;
import packageModel.Utilisateur;

/**
 * @author BAVAY Emilien - THILLAYE Joachim
 */
public class AccessDB {
    private Connection connexion;
    
    public ArrayList<Album> getLastAlbums() throws ListAlbumException
    {
        ArrayList<Album> arrayAlbum = new ArrayList<Album>();
        
        try
        {
            Context ctx = new InitialContext();
            DataSource source = (DataSource) ctx.lookup("jdbc/MusicStore");
            connexion = source.getConnection();

            String requeteSQL = "SELECT Album.idAlbum, Album.titre, Album.prix, Album.image, Artiste.nom "
                    + "FROM Album, Artiste_Album, Artiste "
                    + "WHERE Artiste_Album.idAlbum = Album.idAlbum AND Artiste_Album.idArtiste = Artiste.idArtiste";
            PreparedStatement prepStat = connexion.prepareStatement(requeteSQL);
            ResultSet donnees = prepStat.executeQuery();
            
            while (donnees.next())
            {
                Album album = new Album();
                album.setId(donnees.getInt(1));
                album.setTitre(donnees.getString(2));
                album.setPrix(donnees.getDouble(3));
                album.setImage(donnees.getString(4));
                album.setArtiste(donnees.getString(5));
                arrayAlbum.add(album);
                System.out.println("testDB");
            }
            
            if (arrayAlbum.isEmpty() == true) // Envoi erreur si aucune album
            {    
                throw new ListAlbumException("Aucun album présent dans la BD.");
            }            
            connexion.close();
        }
        catch (SQLException e)
        {
            throw new ListAlbumException("Erreur Listing Album SQL <br />" + e.getMessage());
        }
        catch (Exception e) 
        {
            throw new ListAlbumException("Erreur Listing Album SQL 2 <br />" + e.getMessage());
        }
        
        return arrayAlbum;
    }
    
    public void ajoutUtilisateur(Utilisateur util) throws AjoutUtilException
    {
        try
        {
            Context cont = new InitialContext();
            DataSource source = (DataSource)cont.lookup("jdbc/MusicStore");
            connexion = source.getConnection();
            
            String requeteSQL = "INSERT INTO Utilisateur" + 
                                "Nom,Prenom,Adr_Rue,Ard_Numero" ;
        }
        catch(Exception ex)
        {
            
        }
        
                
    }
}
