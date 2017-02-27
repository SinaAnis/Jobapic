<?php

function inscript(){
	$emailConnexion= isset($_POST['mail'])?($_POST['mail']):'';
	$_SESSION['mdp']= isset($_POST['mdp'])?($_POST['mdp']):'';
    $_SESSION['prenom'] = "SALUT";
	$emailInscription= isset($_POST['email'])?($_POST['email']):'';
	$_SESSION['nom'] =isset($_POST['nom'])?($_POST['nom']):'';
	$_SESSION['prenom'] = isset($_POST['prenom'])?($_POST['prenom']):'';
	$genre = isset($_POST['sexe'])?($_POST['sexe']):'';
	$date = isset($_POST['date'])?($_POST['date']):'';
	$ville = isset($_POST['ville'])?($_POST['ville']):'';
	$telephone = isset($_POST['telephone'])?($_POST['telephone']):'';
	$situation = isset($_POST['situation'])?($_POST['situation']):'';
	
	require ("modele/utilisateurBD.php") ;
	require ("modele/annonceBD.php");
	
	// SI ON SOUHAITE S'INSCRIRE
		if(isset($_POST['email']) && isset($_POST['prenom']) && isset($_POST['nom']) && isset($_POST['mdp']) ) {
			$emailInscription = $_POST['email'];
			$_SESSION['prenom'] = $_POST['prenom'];
			$_SESSION['nom'] = $_POST['nom'];
			$_SESSION['mdp'] = $_POST['mdp'];
			$profil = array(); //profil affecté par l'appel à verif_ident
		//	require ("modele/utilisateurBD.php") ;
		}

		if(isset($_POST['nom']) && isset($_POST['prenom']) && isset($_POST['telephone']) && isset($_POST['date']) && isset($_POST['sexe']) && isset($_POST['ville'])   ) {
    	$_SESSION['nom'] = $_POST['nom'];
			$_SESSION['prenom'] = $_POST['prenom'];
			$genre = $_POST['sexe'];
			$date = $_POST['date'];
			$ville = $_POST['ville'];
			// MAIL
		//	$departement = $_POST['departement'];
			$telephone = $_POST['telephone'];
			$situation = $_POST['situation'];
			$emailInscription = $_POST['email'];
			$profil = array(); //profil affecté par l'appel à verif_ident
		//	require ("modele/utilisateurBD.php") ;
		}

		if(isset($_POST['finis'])){
		inscription($emailInscription,$_SESSION['prenom'],$_SESSION['nom'],$_SESSION['mdp'], $genre, $date, $ville , $telephone, $situation, $profil);
		echo "<script language='JavaScript'>alert('Vous etes maintenant inscrit !!')</script>";
			 require('./vue/mur.tpl') ;
		}

		if (mail_disponible($emailInscription) && isset($_POST['email'])){
			$_SESSION['profil'] = $profil;
		  echo "<script language='JavaScript'>alert('Inscription!!')</script>";
		  require('./vue/inscription.tpl') ;
		}
		else if(isset($_POST['email']) && isset($_POST['prenom']) && isset($_POST['nom']) && isset($_POST['mdp']) && !isset($_POST['finis']) ) {
			echo "<script language='JavaScript'>alert('Mail pas disponible !!')</script>";
		}
}
?>
