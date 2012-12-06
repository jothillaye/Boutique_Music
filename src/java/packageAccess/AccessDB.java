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
import packageException.ListAlbumException;
import packageModel.Album;

/**
 * @author BAVAY Emilien - THILLAYE Joachim
 */
public class AccessDB {
    private Connection connexion;
    
    public ArrayList<Album> getLastsAlbum() throws ListAlbumException
    {
        ArrayList<Album> arrayAlbum = new ArrayList<Album>();
        
        try
        {
            Context ctx = new InitialContext();
            DataSource source = (DataSource) ctx.lookup("jdbc/MusicStore");
            connexion = source.getConnection();

            String requeteSQL = "SELECT Album.idAlbum, Album.titre, Album.prix, Album.image, Artiste.nom "
                                + "FROM Album, Album_Artiste, Artiste "
                                + "WHERE Artiste_Album.idAlbum = Album.idAlbum AND Artiste_Album.idArtiste";
            PreparedStatement prepStat = connexion.prepareStatement(requeteSQL);
            ResultSet donnees = prepStat.executeQuery();
            boolean result = false; // Variable utilisée pour savoir si la requête retourne un résultat
            
            while (donnees.next())
            {
                Album album = new Album();
                album.setId(donnees.getInt(1));
                album.setTitre(donnees.getString(2));
                album.setPrix(donnees.getDouble(3));
                album.setImage(donnees.getString(4));
                album.setArtiste(donnees.getString(4));
                arrayAlbum.add(album);
                result = true; // Au moins un résultat
            }
            
            if (!result) // Si pas de résultat, renvoi d'une erreur
            {    
                throw new ListAlbumException("Aucun album présent dans la BD.");
            }
            
            connexion.close();
        }
        catch (SQLException exc)
        {
            throw new ListAlbumException("Erreur Listing Album SQL");
        }
        catch (NamingException exc) 
        {
            throw new ListAlbumException("Erreur Listing Album SQL");
        }
        
        return arrayAlbum;
    }
}
