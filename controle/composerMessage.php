<?php

function creerMessage(){
//  require ("modele/messageBD.php") ;
  //$categorie = getCategorieFavoris($_SESSION['idUser']);
  //$categorie = getCategorie();
  require('./vue/composerMessage.tpl');
}

function afficherMessages(){
  require('./vue/consulterMessage.tpl');
}

function voirMessage(){
  require('./vue/voirMessage.tpl');
}


 ?>
