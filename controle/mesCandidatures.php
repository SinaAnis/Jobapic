<?php

function mesCandidatures(){
    require('./modele/annonceBD.php');
	$iduser=$_SESSION['idUser'];
    $tabAnnonces = getPostuleById($iduser);
	require('./vue/mesCandidatures.tpl');
}

?>
