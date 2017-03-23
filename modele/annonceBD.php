<?php

function afficherAnnonceEmploye() {
 require ("modele/connectBD.php");
	$select = "SELECT * FROM `annonce` where annonce.idCategorie in (select idCategorie from `categoriepref`, `utilisateur` where utilisateur.IdUser = categoriepref.IdUser) ORDER BY idAnnonce";
	$req = sprintf($select);
	$res = mysqli_query($link,$req) or die (utf8_encode("erreur de requête : ") . $req);

	return mysqli_fetch_all($res);
}

function afficherAnnonceById($id) {
 require ("modele/connectBD.php");
	$select = "SELECT * FROM `annonce` where idAnnonce = '%s'";
	$req = sprintf($select, $id);
	$res = mysqli_query($link,$req) or die (utf8_encode("erreur de requête : ") . $req);

	return mysqli_fetch_all($res);
}

function getUserNameWithAnnonceId($id) {
 require ("modele/connectBD.php");
	$select = "SELECT utilisateur.Prenom FROM `annonce`, `utilisateur` where idAnnonce = '%s' AND utilisateur.idUser = annonce.idUser";
	$req = sprintf($select, $id);
	$res = mysqli_query($link,$req) or die (utf8_encode("erreur de requête : ") . $req);

	return mysqli_fetch_all($res);
}

function getCatNameWithAnnonceId($id) {
 require ("modele/connectBD.php");
	$select = "SELECT categorie.NomCategorie FROM `annonce`, `categorie` where idAnnonce = '%s' AND categorie.idCategorie = annonce.idCategorie";
	$req = sprintf($select, $id);
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
  VALUES ('%s',CURRENT_TIME,'%s','%s',%s,%s,%s)";
  $sql = sprintf ($req,$nomAnnonce,$adrAnnonce,$desAnnonce,$recAnnonce,$catAnnonce,$idUser);
  $res = mysqli_query($link,$sql) or die ('erreur de requete : ' . $sql);
}

?>
