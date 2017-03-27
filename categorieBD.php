<?php

function enregistrerCategorie($idcat,$iduser) {
		require ("./modele/connectBD.php");
	
		//$uid=$_SESSION['uid'];
		$req= "INSERT INTO categoriepref (`IdCategorie`, `IdUser`)
		VALUES (%s,%s)";
		$sql = sprintf ($req,$idcat,$iduser);
		$res = mysqli_query($link,$sql) or die ('erreur de requete : ' . $sql);
		
	}


?>
