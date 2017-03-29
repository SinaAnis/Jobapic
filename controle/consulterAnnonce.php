<?php

function consulterLesAnnoncesCategorie(){
	require('./modele/annonceBD.php');
	$iduser=$_SESSION['idUser'];
	$categorie = $_GET['categorie'];
	$tabAnnonces= afficherAnnonceEmployeCat($iduser,$categorie);
	require('./vue/lesAnnonces.tpl') ;
}

function consulterLesAnnonces(){
	require('./modele/annonceBD.php');
	$iduser=$_SESSION['idUser'];

	$tabAnnonces= afficherAnnonceEmploye($iduser);
	require('./vue/lesAnnonces.tpl') ;
}

function consulterMesAnnonces(){
	require('./vue/mesAnnonces.tpl');
}

?>
