/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package packageModel;

/**
 * @author BAVAY Emilien - THILLAYE Joachim
 */
public class Album {
    private int id;
    private String titre, image, artiste;
    private double prix;
    
    public Album() {}
    // Getters
    public int getId() {return id;}
    public String getTitre() {return titre;}
    public double getPrix() {return prix;}
    public String getImage() {return image;}
    public String getArtiste() {return artiste;}
    
    // Setters
    public void setId(int id) {this.id = id;}
    public void setTitre(String titre) {this.titre = titre;}
    public void setPrix(double prix) {this.prix = prix;}        
    public void setArtiste(String artiste) {this.artiste = artiste;}
    public void setImage(String image) {this.image = image;}

}
