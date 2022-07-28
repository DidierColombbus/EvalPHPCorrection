<?php

// Je mets en require la connexion à la BDD

require 'inc/init.inc.php';

// Le traitement du formulaire pour l'insertion en BDD

if(!empty($_POST)){
    // vérification SQL et failles
    $_POST['title'] = htmlspecialchars($_POST['title']);
    $_POST['description'] = htmlspecialchars($_POST['description']);
    $_POST['image'] = htmlspecialchars($_POST['image']);
    $_POST['postal_code'] = htmlspecialchars($_POST['postal_code']);
    $_POST['city'] = htmlspecialchars($_POST['city']);
    $_POST['type'] = htmlspecialchars($_POST['type']);
    $_POST['price'] = htmlspecialchars($_POST['price']);
    $insertion = $pdoAppart->prepare("INSERT INTO advert (title,description,postal_code,city,type,price,reservation_message,image) VALUES (:title,:description,:postal_code,:city,:type,:price, NULL,:image)");
    $insertion->execute(array(
        ':title' => $_POST['title'],
        ':description' => $_POST['description'],
        ':postal_code' => $_POST['postal_code'],
        ':city' => $_POST['city'],
        ':type' => $_POST['type'],
        ':price' => $_POST['price'],
        ':image' => $_POST['image']

    ));
    header('location:annonces.php');
    exit();
}

?>

<!doctype html>
<html lang="fr">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <title>Le Bon Appart - Ajouter une annonce</title>
</head>

<body>
    <?php require('inc/nav.inc.php') ?>

    <div class="p-5 bg-light">
        <div class="container text-center">
            <h1 class="display-3">Le Bon Appart</h1>
            <p class="lead">Ajout d'une annonce</p>
        </div>
    </div>

    <div class="container mt-3">
        <div class="row">

            <div class="col-12 col-md-6 mx-auto">
                <!-- Mon formulaire pour insérer des éléments dans la BDD -->
                <form action="#" method="post" class="p-3 bg-light border border-primary rounded shadow">
                <div class="mb-3">
                    <label for="title" class="form-label">Titre du bien</label>
                    <input type="text" name="title" id="title" class="form-control" placeholder="">
                </div><!-- Titre -->
                <div class="mb-3">
                    <label for="description" class="form-label">Description</label>
                    <textarea type="text" name="description" id="description" class="form-control" placeholder=""></textarea>
                </div><!-- Description -->
                <div class="mb-3">
                    <label for="image" class="form-label">Image</label>
                    <input type="text" name="image" id="image" class="form-control" placeholder="URL de l'image">
                </div><!-- Image -->
                <div class="mb-3">
                    <label for="city" class="form-label">Ville</label>
                    <input type="text" name="city" id="city" class="form-control" placeholder="">
                </div><!-- Ville -->
                <div class="mb-3">
                    <label for="postal_code" class="form-label">Code postal</label>
                    <input type="number" name="postal_code" id="postal_code" class="form-control" placeholder="code postal">
                </div><!-- Code postal -->
                <div class="mb-3">
                    <label for="type" class="form-label">Type de bien</label>
                    <option value="">-- Choisir une option --</option>
                    <select name="type" id="type" class="form-select">
                    <option value="location">Location</option>
                    <option value="vente">vente</option>
                    </select>
                </div><!-- Type -->
                <div class="mb-3">
                    <label for="price" class="form-label">Prix</label>
                    <input type="number" name="price" id="price" class="form-control" placeholder="Prix">
                </div><!-- Prix -->
                <button type="submit" name="submit" class="btn btn-primary">Ajouter le bien</button>
                </form>
                <!-- Fin du formulaire -->
            </div>

        </div><!-- fin de la rangée -->
    </div><!-- fin du container -->


    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>

</html>