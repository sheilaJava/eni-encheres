package fr.eni.encheres.bo;

/**
 * @author Antoine
 */

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

public class Articles {

    private Integer noArticle;
    private String nomArticle;
    private String description;
    private LocalDate dateDebutEncheres;
    private LocalDate dateFinEncheres;
    private float miseAPrix;
    private float prixVente;
    private boolean etatVente = false;
    private Categorie categorieArticle;
    private Retrait lieuRetrait;
    private List<Enchere> encheres = new ArrayList<>();
    private List<Utilisateur> utilisateurs = new ArrayList<>();

    //Constructeur vide
    public Articles() {
    }

    public Articles(Integer noArticle, String nomArticle, String description, LocalDate dateDebutEncheres, LocalDate dateFinEncheres, float miseAPrix, float prixVente, boolean etatVente, Categorie categorieArticle) {
        this.noArticle = noArticle;
        this.nomArticle = nomArticle;
        this.description = description;
        this.dateDebutEncheres = dateDebutEncheres;
        this.dateFinEncheres = dateFinEncheres;
        this.miseAPrix = miseAPrix;
        this.prixVente = prixVente;
        this.etatVente = etatVente;
        this.categorieArticle = categorieArticle;
    }

    //Constructeur sans ID.
    public Articles(String nomArticle, String description, LocalDate dateDebutEncheres, LocalDate dateFinEncheres,
                    float miseAPrix, float prixVente, boolean etatVente, Categorie categorieArticle) {
        this.nomArticle = nomArticle;
        this.description = description;
        this.dateDebutEncheres = dateDebutEncheres;
        this.dateFinEncheres = dateFinEncheres;
        this.miseAPrix = miseAPrix;
        this.prixVente = prixVente;
        this.etatVente = etatVente;
        this.categorieArticle = categorieArticle;
    }

    //Constructeur sans catégorie de Catégorie.
    public Articles(String nomArticle, String description, LocalDate dateDebutEncheres, LocalDate dateFinEncheres, float miseAPrix, float prixVente, boolean etatVente) {
        this.nomArticle = nomArticle;
        this.description = description;
        this.dateDebutEncheres = dateDebutEncheres;
        this.dateFinEncheres = dateFinEncheres;
        this.miseAPrix = miseAPrix;
        this.prixVente = prixVente;
        this.etatVente = etatVente;
    }

    //Getter et Setter noArticle
    public Integer getNoArticle() {
        return noArticle;
    }

    public void setNoArticle(Integer noArticle) {
        this.noArticle = noArticle;
    }

    //Getter et Setter nomArticle
    public String getNomArticle() {
        return nomArticle;
    }

    public void setNomArticle(String nomArticle) {
        this.nomArticle = nomArticle;
    }

    //Getter et Setter Description
    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    //Getter et Setter Date Debut Encheres
    public LocalDate getDateDebutEncheres() {
        return dateDebutEncheres;
    }

    public void setDateDebutEncheres(LocalDate dateDebutEncheres) {
        this.dateDebutEncheres = dateDebutEncheres;
    }

    //Getter et Setter Date Fin Encheres
    public LocalDate getDateFinEncheres() {
        return dateFinEncheres;
    }

    public void setDateFinEncheres(LocalDate dateFinEncheres) {
        this.dateFinEncheres = dateFinEncheres;
    }

    //Getter et Setter Mise A Prix
    public float getMiseAPrix() {
        return miseAPrix;
    }

    public void setMiseAPrix(float miseAPrix) {
        this.miseAPrix = miseAPrix;
    }

    //Getter et Setter Prix de Vente
    public float getPrixVente() {
        return prixVente;
    }

    public void setPrixVente(float prixVente) {
        this.prixVente = prixVente;
    }

    //Getter et Setter Bool Etat Vente
    public boolean isEtatVente() {
        return etatVente;
    }

    public void setEtatVente(boolean etatVente) {
        this.etatVente = etatVente;
    }

    //Getter et Setter Catégorie Article
    public Categorie getCategorieArticle() {
        return categorieArticle;
    }

    public void setCategorieArticle(Categorie categorieArticle) {
        this.categorieArticle = categorieArticle;
    }

    //Getter et Setter Lieu de retrait
    public Retrait getLieuRetrait() {
        return lieuRetrait;
    }

    public void setLieuRetrait(Retrait lieuRetrait) {
        this.lieuRetrait = lieuRetrait;
    }

    //Getter et Setter List Encheres
    public List<Enchere> getEncheres() {
        return encheres;
    }

    public void setEncheres(List<Enchere> encheres) {
        this.encheres = encheres;
    }

    //Getter et Setter Liste Utilisateurs
    public List<Utilisateur> getUtilisateurs() {
        return utilisateurs;
    }

    public void setUtilisateurs(List<Utilisateur> utilisateurs) {
        this.utilisateurs = utilisateurs;
    }

    //Methode Ajouter une enchères a l'article
    public void addEnchere(Enchere enchere)
    {
        this.encheres.add(enchere);
    }

    //Methode Ajouter un utilisateur à l'article.
    public void addUtilisateur(Utilisateur utilisateur)
    {
        this.utilisateurs.add(utilisateur);
    }

    //ToString
    @Override
    public String toString() {
        return "ArticlesVendu{" +
                "noArticle=" + noArticle +
                ", nomArticle='" + nomArticle + '\'' +
                ", description='" + description + '\'' +
                ", dateDebutEncheres=" + dateDebutEncheres +
                ", dateFinEncheres=" + dateFinEncheres +
                ", miseAPrix=" + miseAPrix +
                ", prixVente=" + prixVente +
                ", etatVente=" + etatVente +
                ", categorieArticle=" + categorieArticle +
                '}';
    }
}