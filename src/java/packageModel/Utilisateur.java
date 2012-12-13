/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package packageModel;

import java.io.Serializable;
import java.util.HashMap;

/**
 *
 * @author Emilien
 */
public class Utilisateur implements Serializable{
    
    private String nom;
    private String prenom;
    private String rue;
    private String localite;
    private String mail;
    private String password;
    private String boite;
    private Integer numero;
    private Integer codepostal;
    private Integer idUtilisateur;
    private String numTel;
    private HashMap<Integer, AlbumCart> hasmMapPanier = new HashMap();
    
    
    public Utilisateur(String nom,String prenom,String rue,Integer numero,String boite,String localite,Integer codePostal, String email,String motDePasse,String numTel)
    {
        this.setBoite(boite);
        this.setCodepostal(codePostal);
        this.setLocalite(localite);
        this.setMail(email);
        this.setNom(nom);
        this.setNumero(numero);
        this.setPassword(motDePasse);
        this.setPrenom(prenom);
        this.setRue(rue);
        this.setNumTel(numTel);
    }

    public Utilisateur(){}
    
    /**
     * @return the nom
     */
    public String getNom() {
        return nom;
    }

    /**
     * @param nom the nom to set
     */
    public void setNom(String nom) {
        this.nom = nom;
    }

    /**
     * @return the prenom
     */
    public String getPrenom() {
        return prenom;
    }

    /**
     * @param prenom the prenom to set
     */
    public void setPrenom(String prenom) {
        this.prenom = prenom;
    }

    /**
     * @return the rue
     */
    public String getRue() {
        return rue;
    }

    /**
     * @param rue the rue to set
     */
    public void setRue(String rue) {
        this.rue = rue;
    }

    /**
     * @return the localite
     */
    public String getLocalite() {
        return localite;
    }

    /**
     * @param localite the localite to set
     */
    public void setLocalite(String localite) {
        this.localite = localite;
    }

    /**
     * @return the mail
     */
    public String getMail() {
        return mail;
    }

    /**
     * @param mail the mail to set
     */
    public void setMail(String mail) {
        this.mail = mail;
    }

    /**
     * @return the password
     */
    public String getPassword() {
        return password;
    }

    /**
     * @param password the password to set
     */
    public void setPassword(String password) {
        this.password = password;
    }

    /**
     * @return the boite
     */
    public String getBoite() {
        return boite;
    }

    /**
     * @param boite the boite to set
     */
    public void setBoite(String boite) {
        this.boite = boite;
    }

    /**
     * @return the numero
     */
    public Integer getNumero() {
        return numero;
    }

    /**
     * @param numero the numero to set
     */
    public void setNumero(Integer numero) {
        this.numero = numero;
    }

    /**
     * @return the codepostal
     */
    public Integer getCodepostal() {
        return codepostal;
    }

    /**
     * @param codepostal the codepostal to set
     */
    public void setCodepostal(Integer codepostal) {
        this.codepostal = codepostal;
    }

    /**
     * @return the numTel
     */
    public String getNumTel() {
        return numTel;
    }

    /**
     * @param numTel the numTel to set
     */
    public void setNumTel(String numTel) {
        this.numTel = numTel;
    }

    /**
     * @return the hasmMapPanier
     */
    public HashMap<Integer, AlbumCart> getHasmMapPanier() {
        return hasmMapPanier;
    }

    /**
     * @param hasmMapPanier the hasmMapPanier to set
     */
    public void setHasmMapPanier(HashMap<Integer, AlbumCart> hasmMapPanier) {
        this.hasmMapPanier = hasmMapPanier;
    }

    /**
     * @return the idUtilisateur
     */
    public Integer getIdUtilisateur() {
        return idUtilisateur;
    }

    /**
     * @param idUtilisateur the idUtilisateur to set
     */
    public void setIdUtilisateur(Integer idUtilisateur) {
        this.idUtilisateur = idUtilisateur;
    }
}
