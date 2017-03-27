<?php

function lesCandidatures(){
    require('./modele/annonceBD.php');
    $iduser=$_SESSION['idUser'];
    $annonce= getAnnonceWithIdUser($iduser);
	require('./vue/lesCandidats.tpl');
}

function valider($id, $idAnnonce){
    require('./modele/annonceBD.php');
    $iduser=$_SESSION['idUser'];
    validerCandidat($id, $idAnnonce);
    $iduser=$_SESSION['idUser'];
    $annonce= getAnnonceWithIdUser($iduser);
    require('./vue/lesCandidats.tpl') ;
}

?>
