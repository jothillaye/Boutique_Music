/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package packageModel;

/**
 *
 * @author Emilien
 */
public class Utilisateur {
    private String nom;
    private String prenom;
    private String rue;
    private String localite;
    private String mail;
    private String password;
    private String boite;
    private int numero;
    private int codepostal;
    private String numTel;
    
    
    public Utilisateur(String nom,String prenom,String rue,int numero,String boite,String localite,int codePostal, String email,String motDePasse,String numTel)
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
    public int getNumero() {
        return numero;
    }

    /**
     * @param numero the numero to set
     */
    public void setNumero(int numero) {
        this.numero = numero;
    }

    /**
     * @return the codepostal
     */
    public int getCodepostal() {
        return codepostal;
    }

    /**
     * @param codepostal the codepostal to set
     */
    public void setCodepostal(int codepostal) {
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
}
