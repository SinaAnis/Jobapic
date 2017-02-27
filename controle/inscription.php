<?php

function inscription(){

    $mail=  isset($_POST['mail'])?($_POST['mail']):'';
	$nom=  isset($_POST['nom'])?($_POST['nom']):'';
	$prenom=  isset($_POST['prenom'])?($_POST['prenom']):'';
	$mdp1=  isset($_POST['mdp1'])?($_POST['mdp1']):'';
    $mdp2=  isset($_POST['mdp2'])?($_POST['mdp2']):'';

	if  (count($_POST)==0) {
		require ("vue/identification.tpl") ;
	}
	else {
		require ("modele/inscriptionBD.php") ;
		if  (check_free($logi,$mdp,$profil)) {
			$_SESSION['profil'] = $profil;
			header("Location:index.php?controle=inscript&action=init");
		}
		else{
			$msg2 ="Erreur de saisie, veuillez ressayer : ";
			require ("vue/identification.tpl") ;
		}
	}
}
?>
