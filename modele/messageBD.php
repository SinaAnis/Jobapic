<?php

function creation_message($destinataire,$expediteur,$texte,$objet,$date){
  require ("./modele/connectBD.php");
  $req= "INSERT INTO `message`(`Expediteur`, `Destinataire`, `objet`, `Texte` , `Date`, `Lu` , `Favoris`)
  VALUES ('%s','%s','%s','%s','%s','%s','%s')";
  $sql = sprintf ($req,$expediteur,$destinataire,$objet,$texte,$date,0,0);
  $res = mysqli_query($link,$sql) or die ('erreur de requete : ' . $sql);
}

function getMessages($idUser){
  require ("./modele/connectBD.php");
  $req= "SELECT idMessage , destinataire , objet , Texte , Date ,Lu , Favoris FROM message WHERE destinataire LIKE '%s' ORDER BY idMessage DESC ";
  $sql = sprintf ($req,$idUser);
  $res = mysqli_query($link,$sql) or die ('erreur de requete : ' . $sql);
  return $res;
}


function getMessage($idMessage){
  require ("./modele/connectBD.php");
  $req= "SELECT idMessage  , expediteur , destinataire , objet , Texte , Date ,Lu , Favoris FROM message WHERE idMessage LIKE '%s' ";
  $sql = sprintf ($req,$idMessage);
  $res = mysqli_query($link,$sql) or die ('erreur de requete : ' . $sql);
  return $res;
}

function getNbMessages($idUser){
  require ("./modele/connectBD.php");
  $req= "SELECT COUNT(*) AS total FROM message WHERE destinataire LIKE '%s' ";
  $sql = sprintf ($req,$idUser);
  $res = mysqli_query($link,$sql) or die ('erreur de requete : ' . $sql);
  return $res;
}


?>
