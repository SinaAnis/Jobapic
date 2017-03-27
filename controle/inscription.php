<?php

function inscription(){

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
	require("modele/identification.php");

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

function pageinscription(){
require('./vue/inscription.tpl');
/*
		if (isset($_POST['cocher'])) {
				require('./vue/inscription.tpl') ;
		}
		else
		{
			alert('veuillez accepter le contrat pur continuer');
		}
    */

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
