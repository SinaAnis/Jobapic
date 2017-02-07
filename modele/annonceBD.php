<?php

function afficherAnnonce() {
 require ("modele/connectBD.php");
	$select = "SELECT * FROM `annonce`";
	$req = sprintf($select);
	$res = mysqli_query($link,$req) or die (utf8_encode("erreur de requête : ") . $req);
	
	return mysqli_fetch_all($res);
}

?>
