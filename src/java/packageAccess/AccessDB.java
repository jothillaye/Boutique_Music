/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package packageAccess;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.SQLIntegrityConstraintViolationException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;
import packageException.CommandeException;
import packageException.ConnexionException;
import packageException.InscriptionException;
import packageException.ListAlbumException;
import packageModel.Album;
import packageModel.AlbumCart;
import packageModel.Utilisateur;

/**
 * @author BAVAY Emilien - THILLAYE Joachim
 */
public class AccessDB {
    private Connection connexion;
    
    public Utilisateur connexion(String login, String pass) throws ConnexionException 
    {
        Utilisateur user = new Utilisateur();
        user.setMail("");
        
        try
        {
            Context ctx = new InitialContext();
            DataSource source = (DataSource)ctx.lookup("jdbc/MusicStore");
            connexion = source.getConnection();        
            
            String requeteSQL = "SELECT motdepasse, prenom, IDUTILISATEUR FROM utilisateur WHERE mail = ?";
            PreparedStatement prepStat = connexion.prepareStatement(requeteSQL);
            prepStat.setString(1, login);
            ResultSet donnees = prepStat.executeQuery();
            
            while (donnees.next())
            {
                String passTest = donnees.getString(1);
                if (passTest.equals(pass) != true)
                {
                    throw new ConnexionException("wrongPass");
                }
                else
                {
                    user.setMail(login);  
                    user.setPrenom(donnees.getString(2));
                    user.setIdUtilisateur(donnees.getInt(3));
                }
            }    
            
            connexion.close();
        }
        catch (SQLException e)
        {
            throw new ConnexionException("sqlConnexionError");
        }    
        catch (NamingException e)
        {
            throw new ConnexionException("sqlException");
        }    
        return user;
    }
    
    public ArrayList<Album> getLastAlbums() throws ListAlbumException
    {
        ArrayList<Album> arrayAlbum = new ArrayList<Album>();
        
        try
        {
            Context ctx = new InitialContext();
            DataSource source = (DataSource) ctx.lookup("jdbc/MusicStore");
            connexion = source.getConnection();
            
            String promoSQL = " (Artiste_Album.idAlbum = Album.idAlbum AND " +
                " Artiste_Album.idArtiste = Artiste.idArtiste AND " +
                " Promotion_Artiste.idArtiste = Artiste.idArtiste AND " +
                " Promotion_Artiste.idPromotion = Promotion.idPromotion AND " +
                " Promotion.datedeb <= current_date AND Promotion.datefin >= current_date) ";
            
            String requeteSQL = "SELECT DISTINCT Album.idAlbum, Album.titre, Album.image, Artiste.nom, Album.Prix, " +
                " CASE WHEN " + promoSQL +
                    " THEN (Album.Prix - (Album.Prix * Promotion.prcremise * 0.01)) " +
                    " ELSE Album.Prix " +
                " END, " +
                " CASE WHEN " + promoSQL +
                    " THEN true " +
                    " ELSE false " +
                " END " +
                " FROM Album, Artiste_Album, Artiste, Promotion, Promotion_Artiste " +
                " WHERE " +
                    " CASE WHEN " + promoSQL +
                        " THEN " + promoSQL +
                        " ELSE (Artiste_Album.idAlbum = Album.idAlbum AND Artiste_Album.idArtiste = Artiste.idArtiste AND " +
                        "  Artiste.idArtiste NOT IN " +
                            " (SELECT Promotion_Artiste.idArtiste " +
                            " FROM Album, Artiste_Album, Artiste, Promotion, Promotion_Artiste " +
                            " WHERE " + promoSQL + " ))" +
                        " END";
            PreparedStatement prepStat = connexion.prepareStatement(requeteSQL);
            prepStat.setMaxRows(12);
            ResultSet donnees = prepStat.executeQuery();
            
            while (donnees.next())
            {
                Boolean promo = donnees.getBoolean(7);
                
                Album album = new Album();
                album.setIdAlbum(donnees.getInt(1));
                album.setTitre(donnees.getString(2));
                album.setImage(donnees.getString(3));
                album.setArtiste(donnees.getString(4));  
                album.setPrix(donnees.getDouble(5));
                if(promo)
                    album.setPrixPromo(donnees.getDouble(6));
                album.setPromo(promo);
                arrayAlbum.add(album);
            }
            
            if (arrayAlbum.isEmpty() == true) // Envoi erreur si aucune album
            {    
                throw new ListAlbumException("emptyListAlbum");
            }            
            connexion.close();
        }
        catch (SQLException e)
        {
            throw new ListAlbumException("listAlbumException"+e.getMessage());
        }
        catch (NamingException e) 
        {
            throw new ListAlbumException("sqlException");
        }
        
        return arrayAlbum;
    }

    public Album getAlbum(int idAlbum) throws ListAlbumException
    {
        Album album = new Album();
        
        try
        {
            Context ctx = new InitialContext();
            DataSource source = (DataSource) ctx.lookup("jdbc/MusicStore");
            connexion = source.getConnection();
            
            String requeteSQL= "select Album.idAlbum, Album.titre, Album.prix, Album.image, Artiste.nom, Label.Nom, Label.Image, PROMOTION.PRCREMISE from ARTISTE, ALBUM, ARTISTE_ALBUM, LABEL, PROMOTION,PROMOTION_ARTISTE "
            +" where "
            +   " PROMOTION.DATEDEB<= CURRENT_DATE "
            +   " and PROMOTION.DATEFIN>= CURRENT_DATE "
            +   " and PROMOTION_ARTISTE.IDARTISTE = ARTISTE.IDARTISTE "
            +   " and PROMOTION_ARTISTE.IDPROMOTION = PROMOTION.IDPROMOTION "
            +   " and ARTISTE_ALBUM.IDARTISTE = ARTISTE.IDARTISTE "
            +   " and ARTISTE_ALBUM.IDALBUM = ALBUM.IDALBUM "
            +   " and ALBUM.IDLABEL = LABEL.IDLABEL "
            +   " and ALBUM.IDALBUM = ? ";
            
            PreparedStatement prepStat = connexion.prepareStatement(requeteSQL);
            prepStat.setInt(1, idAlbum);
            ResultSet donnees = prepStat.executeQuery();
            
            if(donnees.next())
            {
                
                album.setIdAlbum(donnees.getInt(1));
                album.setTitre(donnees.getString(2));
                album.setPrix(donnees.getDouble(3));
                album.setImage(donnees.getString(4));
                album.setArtiste(donnees.getString(5));
                album.setLabel(donnees.getString(6));
                album.setLabelImg(donnees.getString(7));
                album.setPromo(true);
                album.setPrixPromo(album.getPrix()*(1-(donnees.getDouble(8)/100)));
                
                
                
            }
            else
            {

                requeteSQL = "SELECT Album.idAlbum, Album.titre, Album.prix, Album.image, Artiste.nom, Label.Nom, Label.Image "
                        + "FROM Album, Artiste_Album, Artiste, Label "
                        + "WHERE Album.idAlbum = ?"
                            + " AND Artiste_Album.idAlbum = Album.idAlbum "
                            + " AND Artiste_Album.idArtiste = Artiste.idArtiste "
                            + " AND Album.idLabel = Label.idLabel ";
                prepStat = connexion.prepareStatement(requeteSQL);
                prepStat.setInt(1, idAlbum);
                donnees = prepStat.executeQuery();

                while (donnees.next())
                {
                    album.setIdAlbum(donnees.getInt(1));
                    album.setTitre(donnees.getString(2));
                    album.setPrix(donnees.getDouble(3));
                    album.setImage(donnees.getString(4));
                    album.setArtiste(donnees.getString(5));
                    album.setLabel(donnees.getString(6));
                    album.setLabelImg(donnees.getString(7));
                    album.setPromo(false);
                }

                if (album == null) // Envoi erreur si aucune album
                {    
                    throw new ListAlbumException("albumNotExist");
                }            
                connexion.close();
            }
            
            return album;
            
        }
        catch (SQLException e)
        {
            throw new ListAlbumException("getAlbumException");
        }
        catch (NamingException e) 
        {
            throw new ListAlbumException("sqlException");
        }
        
        
    }
    
    public void ajoutUtilisateur(Utilisateur util) throws InscriptionException
    {
        try
        {
            Context cont = new InitialContext();
            DataSource source = (DataSource)cont.lookup("jdbc/MusicStore");
            connexion = source.getConnection();
            
            String requeteSQL = "INSERT INTO UTILISATEUR" + 
                                "(NOM, PRENOM, ADR_RUE, ADR_NUMERO, ADR_BOITE, ADR_CODEPOSTAL, ADR_LOCALITE,MAIL,MOTDEPASSE,NUMTEL)"
                                + "VALUES(?,?,?,?,?,?,?,?,?,?)";
            PreparedStatement prepStat = connexion.prepareStatement(requeteSQL);
            prepStat.setString(1, util.getNom());
            prepStat.setString(2,util.getPrenom());
            prepStat.setString(3,util.getRue());
            prepStat.setInt(4,util.getNumero());
            prepStat.setString(5, util.getBoite());
            prepStat.setInt(6,util.getCodepostal() );  
            prepStat.setString(7, util.getLocalite());
            prepStat.setString(8,util.getMail() );
            prepStat.setString(9, util.getPassword());
            prepStat.setString(10, util.getNumTel());
            
            prepStat.executeUpdate();
            
            connexion.close();
            
        }        
        catch(SQLIntegrityConstraintViolationException ex)
        {
            throw new InscriptionException("errorMailUsed");
        }
        catch(SQLException ex)
        {
            throw new InscriptionException("addUserException");
        }
        catch(NamingException ex)
        {
            throw new InscriptionException("sqlException");
        }
        
    }
    
    public ArrayList<Album> getAlbumPromo() throws ListAlbumException
    {
        ArrayList<Album> arrayAlbum = new ArrayList<Album>();
        
        try
        {
            Context ctx = new InitialContext();
            DataSource source = (DataSource) ctx.lookup("jdbc/MusicStore");
            connexion = source.getConnection();

            //String requeteSQL = "select Album.idAlbum, Album.titre, Album.prix, Album.image, Artiste.nom, PROMOTION.PRCREMISE from ARTISTE, ALBUM, ARTISTE_ALBUM, LABEL, PROMOTION,PROMOTION_ARTISTE where PROMOTION.DATEFIN >= CURRENT_DATE and PROMOTION_ARTISTE.IDARTISTE = ARTISTE.IDARTISTE and PROMOTION_ARTISTE.IDPROMOTION = PROMOTION.IDPROMOTION and ARTISTE_ALBUM.IDARTISTE = ARTISTE.IDARTISTE and ARTISTE_ALBUM.IDALBUM = ALBUM.IDALBUM and ALBUM.IDLABEL = LABEL.IDLABEL";
            String requeteSQL = "SELECT Album.idAlbum, Album.titre, Album.prix, Album.image, Artiste.nom, Promotion.prcremise"
                    + " FROM Artiste, Album, Artiste_Album, Label, Promotion, Promotion_Artiste"
                    + " WHERE Promotion.datedeb <= current_date"
                    + " AND Promotion.datefin >= current_date"
                    + " AND Promotion_Artiste.idArtiste = Artiste.idArtiste"
                    + " AND Promotion_Artiste.idPromotion = Promotion.idPromotion"
                    + " AND Artiste_Album.idArtiste = Artiste.idArtiste"
                    + " AND Artiste_Album.idAlbum = Album.idAlbum"
                    + " AND Album.idLabel = label.idLabel";
            
            PreparedStatement prepStat = connexion.prepareStatement(requeteSQL);
            ResultSet donnees = prepStat.executeQuery();
            
            
            
            while (donnees.next())
            {
                
                Album album = new Album();
                album.setIdAlbum(donnees.getInt(1));
                album.setTitre(donnees.getString(2));
                album.setPrix((donnees.getDouble(3)*(1-(donnees.getDouble(6)/100))));
                album.setImage(donnees.getString(4));
                album.setArtiste(donnees.getString(5));
                arrayAlbum.add(album);
            }
            
            if (arrayAlbum == null) // Envoi erreur si aucune album
            {    
                throw new ListAlbumException("noPromo");
            }            
            connexion.close();
        }
        catch (SQLException e)
        {
            throw new ListAlbumException("sqlException");
        }
        catch (NamingException e) 
        {
            throw new ListAlbumException("errorNaming");
        }
        
        return arrayAlbum;
    }
    
    
    public void ConfirmerCommande(Utilisateur util)throws CommandeException
    {
        try
        {
            for (Iterator iter = util.getHasmMapPanier().entrySet().iterator(); iter.hasNext();) //Vérification des quantités dans la hashmap
            {
                    Map.Entry data = (Map.Entry)iter.next();
                    AlbumCart album = (AlbumCart)data.getValue();
                    if(album.getQte()<1)
                    {
                        throw new CommandeException("errorQteCommande");
                    }
            }
            Context cont = new InitialContext();
            DataSource source = (DataSource)cont.lookup("jdbc/MusicStore");
            connexion = source.getConnection();
            
            String requeteSQL = "INSERT INTO COMMANDE (IDUTILISATEUR,STATUT,DATE) VALUES(?,?,CURRENT DATE)";
            
            PreparedStatement prepStat = connexion.prepareStatement(requeteSQL);
            prepStat.setInt(1,util.getIdUtilisateur() );
            prepStat.setString(2, "0");
            prepStat.executeUpdate();
            
            requeteSQL = "SELECT IDCommande, IDUtilisateur from Commande where IDUTILISATEUR=? AND IDCommande=(SELECT MAX(IDCommande) from Commande)";
            prepStat = connexion.prepareStatement(requeteSQL);
            prepStat.setInt(1, util.getIdUtilisateur());   
            
            ResultSet donnees = prepStat.executeQuery();
            
            donnees.next();
            int idCommande = donnees.getInt(1);
            
            if(donnees.getInt(2)==util.getIdUtilisateur())
            {
                
                for (Iterator iter = util.getHasmMapPanier().entrySet().iterator(); iter.hasNext();) //Vérification des quantités dans la hashmap
                {
                        Map.Entry data = (Map.Entry)iter.next();
                        AlbumCart album = (AlbumCart)data.getValue();
                        requeteSQL="INSERT INTO LIGNECOMMANDE (IDALBUM,IDCOMMANDE,QUANTITE,PRIX) VALUES (?,?,?,?)";
                        prepStat = connexion.prepareStatement(requeteSQL);
                        prepStat.setInt(1, album.getIdAlbum());
                        prepStat.setInt(2, idCommande);
                        prepStat.setInt(3, album.getQte());
                        if(album.getPromo())
                            prepStat.setDouble(4, album.getPrixPromo());
                        else
                            prepStat.setDouble(4, album.getPrix());
                        
                        prepStat.executeUpdate();
                        

                }
            }
        }
        catch(SQLException ex)
        {
            throw new CommandeException("errorSQL");
        }
        catch(NamingException ex)
        {
            throw new CommandeException("errorNaming");
        }
    }
    
}
