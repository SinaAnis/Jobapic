<?php

function getFormationWithIdUser($id) {
 require ("modele/connectBD.php");
	$select = "SELECT * FROM `formation` where idUser = '%s' ";
	$req = sprintf($select, $id);
	$res = mysqli_query($link,$req) or die (utf8_encode("erreur de requête : ") . $req);

	return mysqli_fetch_all($res);
}

function getExperienceWithIdUser($id) {
 require ("modele/connectBD.php");
	$select = "SELECT * FROM `experience` where idUser = '%s' ";
	$req = sprintf($select, $id);
	$res = mysqli_query($link,$req) or die (utf8_encode("erreur de requête : ") . $req);

	return mysqli_fetch_all($res);
}

function getLoisirWithIdUser($id) {
 require ("modele/connectBD.php");
	$select = "SELECT * FROM `loisir` where idUser = '%s' ";
	$req = sprintf($select, $id);
	$res = mysqli_query($link,$req) or die (utf8_encode("erreur de requête : ") . $req);

	return mysqli_fetch_all($res);
}


?>
