<?php

function afficherAnnonceEmploye($categorie) {
 require ("modele/connectBD.php");
  $categorie1 = $categorie[0];
  $categorie2 = $categorie[1];
  $categorie3 = $categorie[2];
	$select = "SELECT * FROM `annonce` WHERE IdCategorie IN ('%s','%s','%s')";
	$req = sprintf($select,$categorie1,$categorie2,$categorie3);
	$res = mysqli_query($link,$req) or die (utf8_encode("erreur de requête : ") . $req);

	return mysqli_fetch_all($res);
}

function afficherAnnonceEmployeur($idEmployeur) {
 require ("modele/connectBD.php");
	$select = "SELECT * FROM `annonce` WHERE idUser = '%s' ";
	$req = sprintf($select,$idEmployeur);
	$res = mysqli_query($link,$req) or die (utf8_encode("erreur de requête : ") . $req);

	return mysqli_fetch_all($res);
}

function creation_annonce($nomAnnonce,$adrAnnonce,$desAnnonce,$recAnnonce,$catAnnonce,$idUser){
  require ("./modele/connectBD.php");
  $req= "INSERT INTO `annonce`(`NomAnnonce`, `DateAnnonce`, `AdrAnnonce`, `DescripAnnonce`, `Recompense`, `IdCategorie`, `IdUser`)
  VALUES ('%s',CURRENT_TIME,'%s','%s','%s','%s','%s')";
  $sql = sprintf ($req,$nomAnnonce,$adrAnnonce,$desAnnonce,$recAnnonce,$catAnnonce,$idUser);
  $res = mysqli_query($link,$sql) or die ('erreur de requete : ' . $sql);
}

?>
