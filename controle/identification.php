<?php

/*controleur utilisateur.php :
  ensemble de fonctions-action de gestion des utilisateurs
*/


function ident(){
	require ("modele/utilisateurBD.php") ;
	require ("modele/annonceBD.php");
	require ("modele/messageBD.php");


// Connexion
$emailConnexion= isset($_POST['mail'])?($_POST['mail']):'';
$mdp= isset($_POST['mdp'])?($_POST['mdp']):'';
// INSCRIPTION
$emailInscription= isset($_POST['email'])?($_POST['email']):'';
$prenom= isset($_POST['prenom'])?($_POST['prenom']):'';
$nom= isset($_POST['nom'])?($_POST['nom']):'';
$mdp1= isset($_POST['mdp1'])?($_POST['mdp1']):'';
$mdp2= isset($_POST['mdp2'])?($_POST['mdp2']):'';


	$categorie1 = isset($_POST['cat1'])?($_POST['cat1']):'';
	$categorie2 = isset($_POST['cat2'])?($_POST['cat2']):'';
	$msg='';

	if (count($_POST)==0)
		require('./vue/Connexion/connexion.tpl');

  // SI ON SOUHAITE SE CONNECTER
	if(isset($_POST['mail']) && isset($_POST['mdp'])) {
		$emailConnexion = $_POST['mail'];
		$_SESSION['mdp'] = $_POST['mdp'];
		$profil = array(); //profil affecté par l'appel à verif_ident
	}

	else if(empty($emailConnexion) && !empty($mdp)){
		echo "<script language='JavaScript'>alert('Veuillez entrer un identifiant.')</script>";
		require_once('./vue/Connexion/connexion.tpl') ;
	}
	else if(empty($mdp) && !empty($emailConnexion)){
		echo "<script language='JavaScript'>alert('Veuillez entrer un mdp.')</script>";
		require_once('./vue/Connexion/connexion.tpl') ;
	}

	// CONNEXION
	if(isset($_SESSION['mdp'])){
		if (verif_ident($emailConnexion,$_SESSION['mdp'],$profil) && !isset($_POST['ville']) ) {
				 $_SESSION['profil'] = $profil;
				 echo "<script language='JavaScript'>alert('Connexion réussie !')</script>";
				 echo "<script language='JavaScript'>alert('".$_POST['Latitude']."')</script>";
				 echo "<script language='JavaScript'>alert('".$_POST['Longitude']."')</script>";
				 $_SESSION['Latitude'] = $_POST['Latitude'];
				 $_SESSION['Longitude'] = $_POST['Longitude'];
				 getProfil($emailConnexion,$_SESSION['mdp']);
				 $questionAfficher=afficherAnnonceEmploye($_SESSION['idUser']);
				 $icones = geticones();
		 		 $messages = getMessages($_SESSION['idUser']);
				 require('./vue/murEmploye.tpl') ;
			}
		}

		// SI ON SOUHAITE S'INSCRIRE
		if(isset($_POST['email']) && isset($_POST['prenom']) && isset($_POST['nom']) && isset($_POST['mdp1']) && isset($_POST['mdp2']) && mail_disponible($_POST['email'])){

				$emailInscription = $_POST['email'];
				$_SESSION['mdp1'] = $_POST['mdp1'];
				$profil = array();
			}

			else if(isset($_POST['email']) && isset($_POST['prenom']) && isset($_POST['nom']) && isset($_POST['mdp1']) && isset($_POST['mdp2']) && !mail_disponible($_POST['email'])) {
				echo "<script language='JavaScript'>alert('Ce mail n'est pas disponible')</script>";
				 require('./vue/Connexion/connexion.tpl') ;
			}

   if(isset($_SESSION['mdp1'])){
		if(!empty($emailInscription) && !empty($prenom) && !empty($nom) && !empty($mdp1) && !empty($mdp2) ) {
		    $_SESSION['email'] = $emailInscription;
				$_SESSION['prenom'] = $prenom;
				$_SESSION['nom'] = $nom;
		    require('./vue/contrat.tpl');
		  }
			else if(isset($_SESSION['email']))
		  {
				if (isset($_POST['cocher'])) {

					$categorie = getCategorie();
					require('./vue/inscription.tpl') ;
				}
				else if(isset($_POST['contrat']) && !isset($_POST['cocher']))
			  {
			   echo "<script language='JavaScript'>alert('Veuillez accepter le contrat pour continuer!!')</script>";
			    require('./vue/contrat.tpl') ;
			  }
				else if(isset($_POST['finis']))
				{
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
				  $cat2= isset($_POST['cat2'])?($_POST['cat2']):'';
				  $cat3= isset($_POST['cat3'])?($_POST['cat3']):'';

					if(!empty($_POST['nom']) && !empty($_POST['adresse']) && !empty($_POST['prenom']) && !empty($_POST['telephone']) && !empty($_POST['date']) && !empty($_POST['sexe']) && !empty($_POST['ville'])   ) {
            if ($cat1 <> $cat2 && $cat1 <> $cat3 && $cat2 <> $cat3 ) {
							inscription($nom, $prenom, $sexe, $date, $adresse, $ville, $departement, $emailInscription, $telephone, $situation, $mdp);
							$idUser = getIdUser($nom,$mdp);
							setCategorieFavoris($cat1,$idUser);
							setCategorieFavoris($cat2,$idUser);
							setCategorieFavoris($cat3,$idUser);
							getProfil($idUser,$mdp);
							$questionAfficher=afficherAnnonceEmploye($idUser[0]);
							require('./vue/murEmploye.tpl');
            }
						else {
 						 echo "<script language='JavaScript'>alert('Veuillez selectionner différentes catégories !!')</script>";
 						 $categorie = getCategorie();
             $_SESSION['telephone'] = $_POST['telephone'];
						 $_SESSION['date'] = $_POST['date'];
						 $_SESSION['ville'] = $_POST['ville'];
						 $_SESSION['adresse'] = $_POST['adresse'];
 						 require('./vue/inscription.tpl');
 					 }
					}

					else if((!empty($_POST['nom']) && !empty($_POST['adresse']) && !empty($_POST['prenom']) && empty($_POST['telephone']) && !empty($_POST['date']) && !empty($_POST['sexe']) && !empty($_POST['ville'])   )){
           echo "<script language='JavaScript'>alert('Veuillez entrer un numéro de téléphone!!')</script>";
					 $categorie = getCategorie();
					 $_SESSION['date'] = $_POST['date'];
					 $_SESSION['ville'] = $_POST['ville'];
					 $_SESSION['adresse'] = $_POST['adresse'];
					 require('./vue/inscription.tpl');
					}

					else if((!empty($_POST['nom']) &&  !empty($_POST['adresse'])  && !empty($_POST['prenom']) && !empty($_POST['telephone']) && empty($_POST['date']) && !empty($_POST['sexe']) && !empty($_POST['ville'])   )){
           echo "<script language='JavaScript'>alert('Veuillez entrer une date de naissance!!')</script>";
					 $categorie = getCategorie();
					 $_SESSION['telephone'] = $_POST['telephone'];
					 $_SESSION['ville'] = $_POST['ville'];
					 $_SESSION['adresse'] = $_POST['adresse'];
					 require('./vue/inscription.tpl');
					}

					else if((!empty($_POST['nom']) && !empty($_POST['adresse']) && !empty($_POST['prenom']) && !empty($_POST['telephone']) && !empty($_POST['date']) && !empty($_POST['sexe']) && empty($_POST['ville'])   )){
           echo "<script language='JavaScript'>alert('Veuillez entrer une ville!!')</script>";
					 $categorie = getCategorie();
					 $_SESSION['telephone'] = $_POST['telephone'];
					 $_SESSION['date'] = $_POST['date'];
					 $_SESSION['adresse'] = $_POST['adresse'];
					 require('./vue/inscription.tpl');
				   }
					else if((!empty($_POST['nom']) && empty($_POST['adresse']) && !empty($_POST['prenom']) && !empty($_POST['telephone']) && !empty($_POST['date']) && !empty($_POST['sexe']) && !empty($_POST['ville']) )){
           echo "<script language='JavaScript'>alert('Veuillez entrer une adresse!!')</script>";
					 $categorie = getCategorie();
					 $_SESSION['telephone'] = $_POST['telephone'];
					 $_SESSION['date'] = $_POST['date'];
					 $_SESSION['ville'] = $_POST['ville'];
					 require('./vue/inscription.tpl');
					}

				}
		  }

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
    require ("modele/messageBD.php") ;
		$nbMessage = getNbMessages($_SESSION['idUser']);
		foreach ($nbMessage as $value) {
			$nbMes = $value['total'];
		}
		$icones = geticones();
		$messages = getMessages($_SESSION['idUser']);
		echo "<script language='JavaScript'>alert('Section Employé !!')</script>";
		$questionAfficher=afficherAnnonceEmploye($_SESSION['idUser']);
		require('./vue/murEmploye.tpl');
	}

	function afficherMurEmployeur(){
		require ("modele/annonceBD.php");
    require ("modele/utilisateurBD.php") ;
		$categorie=getCategorieFavoris($_SESSION['idUser']);
		echo "<script language='JavaScript'>alert('Section Employeur !!')</script>";
		  require ("modele/messageBD.php") ;
		$icones = geticones();
		$messages = getMessages($_SESSION['idUser']);
		$questionAfficher=afficherAnnonceEmployeur($_SESSION['idUser']);
		require('./vue/murEmployeur.tpl');
}

?>
