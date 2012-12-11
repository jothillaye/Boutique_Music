/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package packageModel;

import java.text.DecimalFormat;

/**
 *
 * @author Emilien
 */
public class AlbumCart {
    
        private int idAlbum;
        private int qte;
        private double prix;

        public AlbumCart(int idAlbum,int qte)
        {
            this.idAlbum=idAlbum;
            this.qte=qte;
        }
    /**
     * @return the idAlbum
     */
    public int getIdAlbum() {
        return idAlbum;
    }

    /**
     * @param idAlbum the idAlbum to set
     */
    public void setIdAlbum(int idAlbum) {
        this.idAlbum = idAlbum;
    }

    /**
     * @return the qte
     */
    public int getQte() {
        return qte;
    }

    /**
     * @param qte the qte to set
     */
    public void setQte(int qte) {
        this.qte = qte;
    }

    /**
     * @return the prix
     */
    public double getPrix() {
        return qte;
    }
    
    public String getTot()
    {
       DecimalFormat df = new DecimalFormat("#######.##");
        double tot = qte * prix;
        return df.format(tot);
    }

    /**
     * @param prix the prix to set
     */
    public void setPrix(double prix) {
        this.prix = prix;
    }
    
}
