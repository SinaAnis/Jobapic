<?php


function lesCandidatures(){
	require ("./modele/annonceBD.php") ;
	//$annonces = afficherAnnonceEmployeur($_SESSION['idUser']);

	require('./vue/lesCandidats.tpl');

}

?>
