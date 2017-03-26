<?php

/*controleur utilisateur.php :
  ensemble de fonctions-action de gestion des utilisateurs
*/


function ident(){
	require ("modele/utilisateurBD.php") ;
	require ("modele/annonceBD.php");
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
	//$_SESSION['categorie']=getCategorieFavoris($_SESSION['idUser']);
	//$iduser=$_SESSION['idUser'];
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
				 $questionAfficher=afficherAnnonceEmploye($_SESSION['idUser']);
				 require('./vue/murEmploye.tpl') ;

			}
			else if(!empty($emailConnexion) && !empty($_SESSION['mdp'])) {
				echo "<script language='JavaScript'>alert('Mauvais Identifiant ou Mot de Passe ! Veuillez réessayer.')</script>";
				require('./vue/Connexion/connexion.tpl') ;
			}
			else if(!isset($_POST['email'])&&!isset($_POST['ville'])) {
				require_once('./vue/Connexion/connexion.tpl');
			}

		else if(validEmail($emailInscription)==false){
			//echo "<script language='JavaScript'>alert('Mail non valable !')</script>";
			require('./vue/Connexion/connexion.tpl') ;
		}
		else if (mail_disponible($emailInscription) && isset($_POST['email'])){
			$_SESSION['profil'] = $profil;
		//  echo "<script language='JavaScript'>alert('Inscription !')</script>";
		//  require('./vue/inscription.tpl') ;

		  echo "<script language='JavaScript'>alert('Etape suivante !')</script>";
		  require('./vue/inscription.tpl') ;
		}

		/*else if (mail_disponible($emailInscription) && isset($_POST['email'])){
			$_SESSION['profil'] = $profil;
		  echo "<script language='JavaScript'>alert('Etape suivante !')</script>";
		  require('./vue/inscription.tpl') ;
		}*/
		else if(isset($_POST['email']) && isset($_POST['prenom']) && isset($_POST['nom']) && isset($_POST['mdp']) && !isset($_POST['finis']) ) {
			echo "<script language='JavaScript'>alert('Mail pas disponible !')</script>";
		}


	}

/*function ident(){
	$emailConnexion= isset($_POST['mail'])?($_POST['mail']):'';
	$_SESSION['mdp']= isset($_POST['mdp'])?($_POST['mdp']):'';
    //$_SESSION['prenom'] = "SALUT";
	//$emailInscription= isset($_POST['email'])?($_POST['email']):'';
	//$_SESSION['nom'] =isset($_POST['nom'])?($_POST['nom']):'';
	//$_SESSION['prenom'] = isset($_POST['prenom'])?($_POST['prenom']):'';
	//$genre = isset($_POST['sexe'])?($_POST['sexe']):'';
	//$date = isset($_POST['date'])?($_POST['date']):'';
	//$ville = isset($_POST['ville'])?($_POST['ville']):'';
	//$telephone = isset($_POST['telephone'])?($_POST['telephone']):'';
	//$situation = isset($_POST['situation'])?($_POST['situation']):'';

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
				echo "<script language='JavaScript'>alert('Connexion reussie !')</script>";
				getProfil($emailConnexion,$_SESSION['mdp']);
				$questionAfficher=afficherAnnonceEmploye($_SESSION['idUser']);
				require('./vue/murEmploye.tpl') ;
			}
			else if(!empty($emailConnexion) && !empty($_SESSION['mdp'])) {
				echo "<script language='JavaScript'>alert('Mauvais Identifiant ou Mot de Passe ! Veuillez reessayer.')</script>";
				require('./vue/Connexion/connexion.tpl') ;
			}
			else if(!isset($_POST['email'])&&!isset($_POST['ville'])) {
				require_once('./vue/Connexion/connexion.tpl');
			}
	}
	}*/

	//A CONTINUER RENVOIE PAGE INSCRIPTION
	function pageinscription(){

		if (isset($_POST['cocher'])) {
				require('./vue/inscription.tpl') ;
		}
		else
		{
			alert('veuillez accepter le contrat pur continuer');
		}

	}

	// ENLEVER MAJUSCULE POUR LADRESSE MAIL
	function validEmail($email)
{
    $isValid = true;
    $atIndex = strrpos($email, "@");
    if (is_bool($atIndex) && !$atIndex)
    {
        $isValid = false;
    }
    else
    {
        $domain = substr($email, $atIndex+1);
        $local = substr($email, 0, $atIndex);
        $localLen = strlen($local);
        $domainLen = strlen($domain);
        if ($localLen < 1 || $localLen > 64)
        {
            // local part length exceeded
            $isValid = false;
        }
        else if ($domainLen < 1 || $domainLen > 255)
        {
            // domain part length exceeded
            $isValid = false;
        }
        else if ($local[0] == '.' || $local[$localLen-1] == '.')
        {
            // local part starts or ends with '.'
            $isValid = false;
        }
        else if (preg_match('/\\.\\./', $local))
        {
            // local part has two consecutive dots
            $isValid = false;
        }
        else if (!preg_match('/^[A-Za-z0-9\\-\\.]+$/', $domain))
        {
            // character not valid in domain part
            $isValid = false;
        }
        else if (preg_match('/\\.\\./', $domain))
        {
            // domain part has two consecutive dots
            $isValid = false;
        }
        else if (!preg_match('/^(\\\\.|[A-Za-z0-9!#%&`_=\\/$\'*+?^{}|~.-])+$/', str_replace("\\\\","",$local)))
        {
            // character not valid in local part unless
            // local part is quoted
            if (!preg_match('/^"(\\\\"|[^"])+"$/', str_replace("\\\\","",$local)))
            {
                $isValid = false;
            }
        }
        if ($isValid && !(checkdnsrr($domain,"MX") || checkdnsrr($domain,"A")))
        {
            // domain not found in DNS
            $isValid = false;
        }
    }
    return $isValid;
}
	function deconnexion (){
			session_destroy();
            header("Location:index.php");
	}


	function afficherMurEmploye(){
		require ("modele/annonceBD.php");
		require ("modele/utilisateurBD.php") ;
		$categorie=getCategorieFavoris($_SESSION['idUser']);
		echo "<script language='JavaScript'>alert('Section Employé !!')</script>";
		$questionAfficher=afficherAnnonceEmploye($_SESSION['idUser']);
		require('./vue/murEmploye.tpl');
	}

	function afficherMurEmployeur(){
		require ("modele/annonceBD.php");
    require ("modele/utilisateurBD.php") ;
		$categorie=getCategorieFavoris($_SESSION['idUser']);
		echo "<script language='JavaScript'>alert('Section Employeur !!')</script>";
		$questionAfficher=afficherAnnonceEmployeur($_SESSION['idUser']);
		require('./vue/murEmployeur.tpl');
}

?>
