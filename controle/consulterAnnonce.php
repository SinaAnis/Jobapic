<?php

function consulterLesAnnonces(){
	require('./modele/annonceBD.php');
	$iduser=$_SESSION['idUser'];
	
	$tabAnnonces= afficherAnnonceEmploye($iduser);
	require('./vue/lesAnnonces.tpl') ;
}

function consulterMesAnnonces(){
	require('./vue/mesAnnonces.tpl');
}

function consulterAnnonceDetails(){
	require('./vue/uneAnnonce.tpl');
}

?>
