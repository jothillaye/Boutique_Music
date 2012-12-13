/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package packageModel;

/**
 *
 * @author Emilien
 */
public class Categorie {
    
        private Integer idCategorie;
        private String libelle;

        public Categorie(){}
        
        public Categorie(Integer idCategorie,String libelle)
        {
            this.idCategorie=idCategorie;
            this.libelle=libelle;
        }
    /**
     * @return the idCategorie
     */
    public Integer getIdCategorie() {
        return idCategorie;
    }

    /**
     * @param idCategorie the idCategorie to set
     */
    public void setIdCategorie(Integer idCategorie) {
        this.idCategorie = idCategorie;
    }

    /**
     * @return the libelles
     */
    public String getLibelle() {
        return libelle;
    }

    /**
     * @param libelles the libelles to set
     */
    public void setLibelle(String libelle) {
        this.libelle = libelle;
    }
        
    
}
