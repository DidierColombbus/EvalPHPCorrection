<?php
// Je mets en require la connexion à la bbd
require 'inc/init.inc.php';

// Ma requête pour afficher les 15 derniers biens immobiliers
$requete = $pdoAppart->query(" SELECT * FROM advert ORDER BY id DESC ");

?>
<!doctype html>
<html lang="fr">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <title>Le Bon Appart - Annonces</title>
</head>

<body>
    <?php require('inc/nav.inc.php') ?>

    <div class="p-5 bg-light">
        <div class="container text-center">
            <h1 class="display-3">Le Bon Appart</h1>
            <p class="lead">Toutes les annonces</p>
        </div>
    </div>

    <div class="container">
        <div class="row my-5">

            <?php while ($annonces = $requete->fetch(PDO::FETCH_ASSOC)) { ?>
                <!-- Ouverture de la boucle WHILE. Ce n'est pas parce que je ne suis plus dans un passage PHP que ma boucle ne continue pas. Tans qu'il n'y a pas d'accolade fermante dans un passage PHP, la boucle continue -->
                
                <!-- si je n'ai pas de message de réservation dans ma BDD alors j'affiche une card "normale" -->
                <?php if (empty($annonces['reservation_message'])) { ?>

                    <div class="col-12 col-md-6 col-lg-3 mb-5">
                        <div class="card text-center shadow">
                            <img class="card-img-top" src="<?php echo $annonces['image'] ?>" alt="">
                            <div class="card-body">
                                <h4 class="card-title text-uppercase fs-6"><?php echo $annonces['title'] ?></h4>
                                <!-- j'affiche une partie de la description accompagné d'un bouton lire la suite -->
                                <p class="card-text"><?php echo substr($annonces['description'], 0, 30) ?> ... <a href="annonce.php?id=<?php echo $annonces['id'] ?>" class="btn btn-primary btn-sm mt-1">CONSULTER L'ANNONCE</a></p>
                            </div>
                            <div class="card-footer">
                                <p>En <?php echo $annonces['type'] ?></p>
                                <p><?php
                                    /* je mets le prix et grâce à la fonction prédéfinir suivante je le mets sous un format "argent" */
                                    $formatArgent = numfmt_create('fr_FR', NumberFormatter::CURRENCY);
                                    echo numfmt_format_currency($formatArgent, $annonces['price'], "EUR");

                                    ?></p>
                            </div>
                        </div>
                    </div>

                    <!-- SINON j'affiche une card avec un bouton de réservation et grisée -->
                <?php } else { ?>

                    <div class="col-12 col-md-6 col-lg-3 mb-5">
                        <div class="card text-center shadow position-relative">
                            <img class="card-img-top opacity-50" src="<?php echo $annonces['image'] ?>" alt="">
                            <div class="card-body opacity-50">
                                <h4 class="card-title text-uppercase fs-6"><?php echo $annonces['title'] ?></h4>
                                <p class="card-text"><?php echo substr($annonces['description'], 0, 30) ?> ... <a href="annonce.php?id=<?php echo $annonces['id'] ?>" class="btn btn-primary btn-sm mt-1">CONSULTER L'ANNONCE</a></p>
                            </div>
                            <div class="card-footer opacity-50">
                                <p>En <?php echo $annonces['type'] ?></p>
                                <p><?php
                                    $formatArgent = numfmt_create('fr_FR', NumberFormatter::CURRENCY);
                                    echo numfmt_format_currency($formatArgent, $annonces['price'], "EUR");
                                    ?></p>
                            </div>
                            <!-- Mon bouton "réservé" -- Bootstrap v.5 -->
                            <span class="position-absolute top-0 start-50 translate-middle badge rounded-pill border border-white shadow p-3 bg-danger text-uppercase">Déjà réservé</span>
                        </div>
                    </div>

                <?php } ?>

            <?php } ?>
            <!-- fin de la boucle -->

        </div><!-- fin de la rangée -->
    </div><!-- fin du container -->


    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>

</html>