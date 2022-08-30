<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="fr.eni.encheres.messages.LecteurMessage" %>
<%@ page import="java.util.Date" %>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Accueil</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/styles/modifierProfil.css"/>
</head>
<body>
<header>
    <div class="logo">
        <a href="${pageContext.request.contextPath}/accueil">COCOWIKI</a>
    </div>

    <c:if test="${connecte}">
        <div class="buttons">
            <a class="logout" href="">Mes Enchères</a>
            <a class="logout" href="${pageContext.request.contextPath}/NouvelleVente">Vendre un Article</a>
            <a class="logout" href="${pageContext.request.contextPath}/MonProfil">Mon Profil</a>
            <a class="account" href="${pageContext.request.contextPath}/deconnexion">Se Déconnecter</a>

        </div>
    </c:if>
    <c:if test="${!connecte}">
        <div class="buttons">
            <a class="logout" href="${pageContext.request.contextPath}/connexion">Se connecter</a>
            <a class="account" href="${pageContext.request.contextPath}/inscription">S'inscrire</a>
        </div>
    </c:if>
</header>
<main>
    <div class="content">
        <h1>Détails</h1>
        <h3><c:out value="${article.nomArticle}"/></h3>
        <p>Description : <c:out value="${article.description}"/></p>
        <p>Catégorie : <c:out value="${article.categorieArticle.libelle}"/></p>
        <p>Mise à prix : <c:out value="${article.miseAPrix}"/></p>
        <p>Prix de vente (meilleure offre) : <c:out value="${article.prixVente}"/></p>
        <fmt:parseDate  value="${article.dateFinEncheres}"  type="date" pattern="yyyy-MM-dd" var="finEncheres" />
        <p>Fin de l'enchère : <fmt:formatDate value="${finEncheres}" pattern="dd/MM/yyyy"/></p>
        <p>Retrait : <c:out value="${article.lieuRetrait.rue}"/> <c:out value="${article.lieuRetrait.codePostal}"/> <c:out value="${article.lieuRetrait.ville}"/></p>
        <p>Vendeur : <c:out value="${article.utilisateurs.pseudo}"/></p>
        <c:if test="${connecte && article.utilisateurs.pseudo != sessionScope.utilisateurs.pseudo}">
            <form method="post" action="${pageContext.request.contextPath}/NouvelleEnchere">
                <label for="montant">Ma proposition : </label>
                <input name="noArticle" type="hidden" value="${article.noArticle}"/>
                <input name="prixVente" type="hidden" value="${article.prixVente}"/>
                <input type="number" id="montant" name="montant" min="${article.prixVente}" placeholder="${article.prixVente}"/>
                <button type="submit">Enchérir</button>
            </form>
        </c:if>
        <c:if test="${connecte && article.utilisateurs.pseudo == sessionScope.utilisateurs.pseudo}">
            <form method="post" action="${pageContext.request.contextPath}/modifierVente">
                <button type="submit">Modifier cette vente</button>
            </form>
        </c:if>

        <%--<fmt:parseDate value="${test}" pattern="yyyy-MM-dd'T'HH:mm" var="parsedDateTime" type="both" />
        <fmt:formatDate pattern="dd/MM/yyyy à HH:mm" value="${ parsedDateTime }" />--%>

        <%--<jsp:useBean id="now" class="java.util.Date" />
        <fmt:formatDate var="today" value="${now}" pattern="yyyy-MM-dd" />--%>




    </div>
</main>

</body>
</html>
