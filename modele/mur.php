<?php

function getAnnonce() {
  require ("./modele/connectBD.php");
	$req= "SELECT NomAnnonce FROM annonce";
	$sql = sprintf ($req);
	$res = mysqli_query($link,$sql) or die ('erreur de requete : ' . $sql);
	return $res;
}


?>
