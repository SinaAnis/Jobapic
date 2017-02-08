<?php

function afficherAnnonce() {
 require ("modele/connectBD.php");
	$select = "SELECT * FROM `annonce`";
	$req = sprintf($select);
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
