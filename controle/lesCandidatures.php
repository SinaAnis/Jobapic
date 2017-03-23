<?php

function lesCandidatures(){
    require('./modele/annonceBD.php');
    $iduser=$_SESSION['idUser'];
    $annonce= getAnnonceWithIdUser($iduser);
	require('./vue/lesCandidats.tpl');
}

?>
