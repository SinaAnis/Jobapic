<?php


function consulterProfil(){
	require('./vue/monProfil.tpl');
	
}

function editerProfil(){
	require('./vue/modifProfil.tpl');
	
}

function getCategorieFavoris($idUser){
 require ("./modele/utilisateurBD.php") ;
  $categorie = getCategorieFavoris($_SESSION['idUser']);
	require ("./vue/index.php?controle=creerAnnonce&action=create") ;
}

?>
