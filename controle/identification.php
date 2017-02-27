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
	}

		if (verif_ident($emailConnexion,$_SESSION['mdp'],$profil) && !isset($_POST['ville']) ) {
				 $_SESSION['profil'] = $profil;
				 echo "<script language='JavaScript'>alert('Connexion réussie !')</script>";
				 getProfil($emailConnexion,$_SESSION['mdp']);
				 $questionAfficher=afficherAnnonce();
				 require('./vue/mur.tpl') ;

			}
			else if(!empty($emailConnexion) && !empty($_SESSION['mdp'])) {
				echo "<script language='JavaScript'>alert('Mauvais Identifiant ou Mot de Passe ! Veuillez réessayer.')</script>";
				require('./vue/Connexion/connexion.tpl') ;
			}
			else if(!isset($_POST['email'])&&!isset($_POST['ville'])) {
				require_once('./vue/Connexion/connexion.tpl');
			}
	}

	function deconnexion (){
			session_destroy();
            header("Location:index.php");
	}

	function afficherMur(){
		require ("modele/annonceBD.php");
		$questionAfficher=afficherAnnonce();
		require('./vue/mur.tpl');
	}
	
?>
