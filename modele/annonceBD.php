<?php

function afficherAnnonceEmploye($iduser) {
 require ("modele/connectBD.php");
	$select = "SELECT * FROM `annonce` where annonce.idUser <> %s and annonce.idCategorie in (select idCategorie from `categoriepref`, `utilisateur` where utilisateur.IdUser = categoriepref.IdUser) ORDER BY idAnnonce";
	$req = sprintf($select,$iduser);
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

function getAnnonceWithIdUser($id) {
 require ("modele/connectBD.php");
	$select = "SELECT * FROM `annonce` where idUser = '%s' ORDER BY idAnnonce";
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

function getCandidatsIDWithAnnonceId($id) {
 require ("modele/connectBD.php");
	$select = "SELECT idUser FROM `postule` where idAnnonce = '%s'";
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

function postulerSQL($iduser,$id){
  require ("./modele/connectBD.php");
  $req= "INSERT INTO `postule`(`IdAnnonce`, `IdUser`) VALUES (%s,%s)";
  $sql = sprintf ($req,$id,$iduser);
  $res = mysqli_query($link,$sql);// or die ('erreur de requete : ' . $sql);
}

function getPostuleById($id){
    require ("modele/connectBD.php");
	$select = "SELECT * FROM `annonce`, `postule` WHERE postule.idUser = %s AND annonce.idAnnonce = postule.idAnnonce ";
	$req = sprintf($select,$id);
	$res = mysqli_query($link,$req) or die (utf8_encode("erreur de requête : ") . $req);

	return mysqli_fetch_all($res);
}

function getStatutWithIdAnnonceAndUser($iduser, $idann){
    require ("modele/connectBD.php");
	$select = "SELECT statut FROM `postule` WHERE postule.idUser = %s AND postule.idAnnonce = %s ";
	$req = sprintf($select,$iduser, $idann);
	$res = mysqli_query($link,$req) or die (utf8_encode("erreur de requête : ") . $req);

	return mysqli_fetch_all($res);
}

function getUserByID($iduser){
    require ("modele/connectBD.php");
	$select = "SELECT * FROM `utilisateur` WHERE idUser = %s ";
	$req = sprintf($select,$iduser);
	$res = mysqli_query($link,$req) or die (utf8_encode("erreur de requête : ") . $req);

	return mysqli_fetch_all($res);
}

?>
