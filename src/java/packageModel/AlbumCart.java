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
public class AlbumCart extends Album{
    
        private int qte;
        
        public AlbumCart()
        {
        
        }
        
        public AlbumCart(Album alb,int qte)
        {
            this.setArtiste(alb.getArtiste());
            this.setIdAlbum(alb.getIdAlbum());
            this.setImage(alb.getImage());
            this.setLabel(this.getLabel());
            this.setLabelImg(this.getLabelImg());
            this.setPrix(Double.parseDouble(alb.getPrix()));
            this.setPrixPromo(Double.parseDouble(this.getPrixPromo()));
            this.setPromo(this.getPromo());
            this.setTitre(this.getTitre());
            this.setQte(qte);
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

    
    public String getTot()
    {
       DecimalFormat df = new DecimalFormat("#######.##");
       double tot ;
       if(this.getPromo())
       {
         tot = qte * Double.parseDouble(this.getPrixPromo());
       }
       else
       {
         tot = qte * Double.parseDouble(this.getPrix());
       }                        
        return df.format(tot);
    }

    
}
