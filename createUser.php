<html>
    <head>
       <meta charset="utf-8">
        <!-- importer le fichier de style -->
        <link rel="stylesheet" href="style.css" media="screen" type="text/css" />
    </head>
    <body>
        <div id="container">
            <!-- zone de connexion -->
            
            <form action="bd_connect.php" method="POST">
                <h1>Créer un compte</h1>
                
                <label><b>Nom d'utilisateur</b></label>
                <input type="text" placeholder="Entrer le nom d'utilisateur" name="login" required>

                <label><b>Prénom utilisateur</b></label>
                <input type="text" placeholder="Entrer le Prénom de l'utilisateur" name="login" required>

                <label><b>Courriel</b></label>
                <input type="text" placeholder="Entrer le courriel de l'utilisateur" name="login" required>

                <label><b>Telephone</b></label>
                <input type="number" placeholder="Entrer le telephone de l'utilisateur" name="login" required>

                <label><b>Civilité</b></label>
                <input type="text" placeholder="Entrer la civilité de l'utilisateur" name="login" required>

                <label><b>Titre</b></label>
                <input type="text" placeholder="Entrer le titre de l'utilisateur" name="login" required>

                <label><b>Fonction</b></label>
                <input type="text" placeholder="Entrer la fonction de l'utilisateur" name="login" required>

                <label><b>SIREN</b></label>
                <input type="number" placeholder="Entrer le SIREN de l'organisation" name="login" required>

                <label><b>Login</b></label>
                <input type="text" placeholder="Entrer le login de l'utilisateur" name="login" required>

                <label><b>Mot de passe</b></label>
                <input type="password" placeholder="Entrer le mot de passe" name="password" required>

                <input type="submit" id='submit' value='LOGIN' >
                <a href ="createUser.php" type="submit" id='submit' value='CREE UN COMPTE' >
                <?php
                if(isset($_GET['erreur'])){
                    $err = $_GET['erreur'];
                    if($err==1 || $err==2)
                        echo "<p style='color:red'>Utilisateur ou mot de passe incorrect</p>";
                }
                ?>
            </form>
        </div>
    </body>
</html>