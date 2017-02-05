<?php
/*Fonctions-modèle réalisant les requètes de gestion des utilisateurs en base de données*/

// verif_ident : fonction booléenne de vérification de l'utilisateur en base de données
// Si ok, alors le profil de l'utilisateur, à savoir son enregistrement, est affecté en sortie à $profil

function verif_ident($log='',$num='', &$profil) {
	require ("./modele/connectBD.php");
	$req= "SELECT * FROM Utilisateur WHERE idUser='%s' AND Mdp='%s'";
	$sql = sprintf ($req, $log, $num);
	$res = mysqli_query($link,$sql) or die ('erreur de requete : ' . $sql);

	if (mysqli_num_rows($res)>0) {
		$profil=mysqli_fetch_assoc($res);
		$_SESSION['profil']= $profil;	//Inclure dans une variable session le profil de l'user
		return true;
	}
	else return false;
}

function mail_disponible($mail=''){
	require ("./modele/connectBD.php");
	$req= "SELECT * FROM Utilisateur WHERE Mail ='%s'";
	$sql = sprintf ($req, $mail);
	$res = mysqli_query($link,$sql) or die ('erreur de requete : ' . $sql);

	if (mysqli_num_rows($res)>0) {
		$profil=mysqli_fetch_assoc($res);
		$_SESSION['profil']= $profil;	//Inclure dans une variable session le profil de l'user
		return false;
	}
	else return true;
}

function inscription($mail,$prenom,$nom,$mdp, $genre, $date, $ville , $telephone, $situation, &$profil) {
	require ("./modele/connectBD.php");
	$req= "INSERT INTO utilisateur (Nom,Prenom,Genre,DateNaissance,Adresse,Mail,Telephone,Situation,Mdp)
	VALUES ('%s','%s','%s','%s','%s','%s','%s','%s','%s')";
	$sql = sprintf ($req , $nom, $prenom, $genre ,$date , $ville, $mail, $telephone ,$situation , $mdp);
	$res = mysqli_query($link,$sql) or die ('erreur de requete : ' . $sql);

}

function getProfil($log='',$num=''){
	require ("./modele/connectBD.php");
	$req= "SELECT nom,prenom FROM Utilisateur WHERE idUser='%s' AND Mdp='%s'";
	$sql = sprintf ($req, $log, $num);
	$res = mysqli_query($link,$sql) or die ('erreur de requete : ' . $sql);
		foreach($res as $row)
		  $_SESSION['nom'] = $row['nom'];
			$_SESSION['prenom'] = $row['prenom'];
}



?>
