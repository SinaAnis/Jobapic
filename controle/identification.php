<?php

/*controleur utilisateur.php :
  ensemble de fonctions-action de gestion des utilisateurs
*/


function ident(){
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
	$msg='';

	if (count($_POST)==0)
		require('./vue/Connexion/connexion.tpl');

  // SI ON SOUHAITE SE CONNECTER
	if(isset($_POST['mail']) && isset($_POST['mdp'])) {
		$emailConnexion = $_POST['mail'];
		$_SESSION['mdp'] = $_POST['mdp'];
		$profil = array(); //profil affecté par l'appel à verif_ident
	//	require ("modele/utilisateurBD.php") ;
	}



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
			 require('./vue/murEmploye.tpl') ;
		}

		if (verif_ident($emailConnexion,$_SESSION['mdp'],$profil) && !isset($_POST['ville']) ) {
				 $_SESSION['profil'] = $profil;
				 echo "<script language='JavaScript'>alert('Connexion!!')</script>";
				 getProfil($emailConnexion,$_SESSION['mdp']);
				 $questionAfficher=afficherAnnonce();
				 require('./vue/murEmploye.tpl') ;

			}
			else if(!empty($emailConnexion) && !empty($_SESSION['mdp'])) {
				echo "<script language='JavaScript'>alert('Mauvais Identifiant ou Mot de Passe!!')</script>";
			//	echo "<script language='JavaScript'>alert('".$emailConnexion."')</script>";
		 //			echo "<script language='JavaScript'>alert('".$_SESSION['mdp']."')</script>";
				require('./vue/Connexion/connexion.tpl') ;
			}
			else if(!isset($_POST['email'])&&!isset($_POST['ville'])) {
			//	echo "<script language='JavaScript'>alert('Retour au Menu!!')</script>";
				require_once('./vue/Connexion/connexion.tpl');
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

	function deconnexion (){
			session_destroy();
            header("Location:index.php");
			//require("vue/identification.tpl");
	}

	function affichermur(){
		   require ("modele/annonceBD.php");

		$questionAfficher=afficherAnnonce();
		require('./vue/murEmploye.tpl');
	}

	function affichermurEmploye(){
		   require ("modele/annonceBD.php");
echo "<script language='JavaScript'>alert('Section Employé !!')</script>";
		$questionAfficher=afficherAnnonce();
		require('./vue/murEmploye.tpl');
	}

	function affichermurEmployeur(){
		require ("modele/annonceBD.php");
		require ("modele/utilisateurBD.php") ;
		$categorie=getCategorieFavoris($_SESSION['idUser']);
		echo "<script language='JavaScript'>alert('Section Employeur !!')</script>";
		require('./vue/murEmployeur.tpl');
	}

?>
