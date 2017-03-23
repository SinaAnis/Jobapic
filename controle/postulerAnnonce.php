<?php

function postuler($id){
    require('./modele/annonceBD.php');
    $iduser=$_SESSION['idUser'];
    $annonce= afficherAnnonceById($id);
    $neme = getUserNameWithAnnonceId($id);
    $tomcat = getCatNameWithAnnonceId($id);
    postulerSQL($iduser, $id);
    require('./vue/uneAnnonce.tpl') ;
}

function create () {

}

?>
