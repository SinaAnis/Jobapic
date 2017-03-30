<?php


function accueil(){
	require ("vue/test.tpl") ;
}

function faqEmploye(){
	require ("vue/faq2.tpl") ;
}

function faqEmployeur(){
	require ("vue/faq.tpl") ;
}

function getCategorieFavoris($idUser){
 require ("./modele/utilisateurBD.php") ;
  $categorie = getCategorieFavoris($_SESSION['idUser']);
	require ("./vue/index.php?controle=creerAnnonce&action=create") ;
}

?>
