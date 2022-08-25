<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="fr">
<head>
    <title>Inscription</title>
    <link rel="stylesheet" href="./styles/inscription.css"/>
</head>
<body>
<header>
    <div class="logo">
        <a href="">Enchères</a>
    </div>
    <div class="buttons">
        <a href="./connexion.jsp">Se connecter</a>
        <a href="inscription.jsp">S'inscrire</a>
    </div>
</header>
<main>
    <h1>Créer un compte</h1>
    <form action="">
        <div class="fieldsets">
            <fieldset>
                <legend>Vos informations</legend>
                <label for="pseudo">Pseudo</label>
                <input type="text" name="pseudo" id="pseudo" maxlength="30" required/>
                <label for="firstname">Prénom</label>
                <input type="text" name="firstname" id="firstname" maxlength="30" required/>
                <label for="name">Nom</label>
                <input type="text" name="name" id="name" maxlength="30" required/>
                <label for="phone">Téléphone</label>
                <input type="tel" name="phone" id="phone"/>
                <label for="email">Email</label>
                <input type="email" name="email" id="email" required/>
            </fieldset>
            <fieldset>
                <legend>Votre adresse</legend>
                <label for="street">Rue</label>
                <input type="text" name="street" id="street" maxlength="30" required/>
                <label for="city">Ville</label>
                <input type="text" name="city" id="city" maxlength="30" required/>
                <label for="zip">Code postal</label>
                <input type="text" name="zip" id="zip" pattern="[A-Za-z0-9]{0,5}" required/>
            </fieldset>
            <fieldset>
                <legend>Créer un mot de passe</legend>
                <label for="pwd">Mot de passe</label>
                <input type="password" name="pwd" id="pwd" pattern="[A-Za-z0-9]{8,30}" required/>
                <label for="pwdv">Confirmation</label>
                <input type="password" name="pwdv" id="pwdv" pattern="[A-Za-z0-9]{8,30}" required/>
            </fieldset>
        </div>
        <div class="submit">
            <button type="submit">S'inscrire</button>
            <a href="">Annuler</a>
        </div>
    </form>
    <p>Vous avez déjà un compte ? <a href="connexion.jsp">Connectez-vous</a></p>
</main>
</body>
</html>
