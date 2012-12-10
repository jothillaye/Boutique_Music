/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package packageModel;

import java.io.Serializable;
import java.text.DecimalFormat;

/**
 * @author BAVAY Emilien - THILLAYE Joachim
 */
public class Album implements Serializable{
    private int idAlbum;
    private String titre, image, artiste, label, labelImg;
    private double prix, prixPromo;
    private Boolean promo;
    
    public Album() {}
    // Getters
    public int getIdAlbum() {return idAlbum;}
    public String getTitre() {return titre;}
    public String getPrix() 
    {        
        DecimalFormat myFormatter = new DecimalFormat("#.##");
        String output = myFormatter.format(prix);
        return output;
    }
    public String getPrixPromo() 
    {        
        DecimalFormat myFormatter = new DecimalFormat("#.##");
        String output = myFormatter.format(prixPromo);
        return output;
    }
    public String getImage() {return image;}
    public String getArtiste() {return artiste;}
    public String getLabel() {return label;}
    public String getLabelImg() {return labelImg;}
    public Boolean getPromo() {return promo;}
    
    // Setters
    public void setIdAlbum(int idAlbum) {this.idAlbum = idAlbum;}
    public void setTitre(String titre) {this.titre = titre;}
    public void setPrix(double prix) {this.prix = prix;}
    public void setPrixPromo(double prixPromo) {this.prixPromo = prixPromo;}        
    public void setArtiste(String artiste) {this.artiste = artiste;}
    public void setImage(String image) {this.image = image;}
    public void setLabel(String label) {this.label = label;}
    public void setLabelImg(String labelImg) {this.labelImg = labelImg;}
    public void setPromo(Boolean promo) {this.promo = promo;}
    
}