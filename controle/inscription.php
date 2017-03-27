<?php

function preinscription(){
$emailInscription= isset($_POST['email'])?($_POST['email']):'';
$prenom= isset($_POST['prenom'])?($_POST['prenom']):'';
$nom= isset($_POST['nom'])?($_POST['nom']):'';
$mdp1= isset($_POST['mdp1'])?($_POST['mdp1']):'';
$mdp2= isset($_POST['mdp2'])?($_POST['mdp2']):'';

if (count($_POST)==0)
  require_once('./vue/Connexion/connexion.tpl');

if(!empty($emailInscription) && !empty($prenom) && !empty($nom) && !empty($mdp1) && !empty($mdp2) ) {
    $_SESSION['prenom'] = $_POST['prenom'];
    $_SESSION['nom'] = $_POST['nom'];
    $_SESSION['mdp'] = $_POST['mdp1'];
    $_SESSION['email'] = $emailInscription;
    require('./vue/contrat.tpl');
  }
}

function verifcontrat(){
  if (isset($_POST['cocher'])) {
    require ("modele/utilisateurBD.php");
    $categorie = getCategorie();
    require('./vue/inscription.tpl') ;
  }
  else
  {
   echo "<script language='JavaScript'>alert('Veuillez accepter le contrat pour continuer!!')</script>";
    require('./vue/contrat.tpl') ;
  }
}

function postinscription(){
  $emailInscription= isset($_POST['email'])?($_POST['email']):'';
  $prenom= isset($_POST['prenom'])?($_POST['prenom']):'';
  $nom= isset($_POST['nom'])?($_POST['nom']):'';
  $telephone= isset($_POST['telephone'])?($_POST['telephone']):'';
  $date= isset($_POST['date'])?($_POST['date']):'';
  $adresse= isset($_POST['adresse'])?($_POST['adresse']):'';
  $departement= isset($_POST['departement'])?($_POST['departement']):'';
  $ville= isset($_POST['ville'])?($_POST['ville']):'';
  $sexe= isset($_POST['sexe'])?($_POST['sexe']):'';
  $situation= isset($_POST['situation'])?($_POST['situation']):'';
  $cat1= isset($_POST['cat1'])?($_POST['cat1']):'';
  $cat1= isset($_POST['cat2'])?($_POST['cat2']):'';
  $cat1= isset($_POST['cat3'])?($_POST['cat3']):'';
  $mdp= $_SESSION['mdp'];

  require ("modele/utilisateurBD.php");
  if(isset($_POST['nom']) && isset($_POST['prenom']) && isset($_POST['telephone']) && isset($_POST['date']) && isset($_POST['sexe']) && isset($_POST['ville'])   ) {
    inscription($nom, $prenom, $sexe, $date, $adresse, $ville, $departement, $emailInscription, $telephone, $situation, $mdp);
    $idUser = getIdUser($nom,$mdp);
    getProfil($idUser[0],$mdp);
    require('./vue/murEmploye.tpl');
  }
}
/*
function inscription(){

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
	require("modele/identification.php");

	// SI ON SOUHAITE S'INSCRIRE
		if(isset($_POST['email']) && isset($_POST['prenom']) && isset($_POST['nom']) && isset($_POST['mdp']) ) {
			$emailInscription = $_POST['email'];
			$_SESSION['prenom'] = $_POST['prenom'];
			$_SESSION['nom'] = $_POST['nom'];
			$_SESSION['mdp'] = $_POST['mdp'];
		}

		if(isset($_POST['nom']) && isset($_POST['prenom']) && isset($_POST['telephone']) && isset($_POST['date']) && isset($_POST['sexe']) && isset($_POST['ville'])   ) {
    	$_SESSION['nom'] = $_POST['nom'];
			$_SESSION['prenom'] = $_POST['prenom'];
			$genre = $_POST['sexe'];
			$date = $_POST['date'];
			$ville = $_POST['ville'];
			$telephone = $_POST['telephone'];
			$situation = $_POST['situation'];
			$emailInscription = $_POST['email'];
		}

		if(isset($_POST['finis'])){
		inscription($emailInscription,$_SESSION['prenom'],$_SESSION['nom'],$_SESSION['mdp'], $genre, $date, $ville , $telephone, $situation, $profil);
		echo "<script language='JavaScript'>alert('Vous etes maintenant inscrit !!')</script>";
    afficherMurEmploye();
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
*/

function pageinscription(){
require('./vue/inscription.tpl');

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

?>
