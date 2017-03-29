<?php

function connexionUtilisateur(){
  $emailConnexion = isset($_POST['mail'])?($_POST['mail']):'';
  $mdp = isset($_POST['mdp'])?($_POST['mdp']):'';

  require ("modele/utilisateurBD.php") ;
  require ("modele/messageBD.php") ;
  require ("modele/annonceBD.php");

  if (count($_POST)==0)
    require('./vue/Connexion/connexion.tpl');

  if (verif_ident($emailConnexion,$mdp,$profil)) {
         $_SESSION['profil'] = $profil;
         echo "<script language='JavaScript'>alert('Connexion réussie !')</script>";
         getProfil($emailConnexion,$mdp);
         $questionAfficher=afficherAnnonceEmploye($_SESSION['idUser']);
         $icones = geticones();
        $messages = getMessages($_SESSION['idUser']);
         require('./vue/murEmploye.tpl') ;

      }
      else if(empty($emailConnexion) && !empty($mdp)){
				echo "<script language='JavaScript'>alert('Veuillez entrer un identifiant.')</script>";
				require_once('./vue/Connexion/connexion.tpl') ;
      }
      else if(empty($mdp) && !empty($emailConnexion)){
				echo "<script language='JavaScript'>alert('Veuillez entrer un mdp.')</script>";
				require_once('./vue/Connexion/connexion.tpl') ;
      }
      else{
            echo "<script language='JavaScript'>alert('Erreur d'authentification.')</script>";
			require_once('./vue/Connexion/connexion.tpl') ;
      }
    /*
      else if(!verif_ident($emailConnexion,$mdp,$profil)) {
        echo "<script language='JavaScript'>alert('Mauvais Identifiant ou Mot de Passe ! Veuillez réessayer.')</script>";
				require_once('./vue/Connexion/connexion.tpl') ;
      }
      */

}

function connexionInscriptionUtilisateur(){
  //CONNEXION
  $emailConnexion = isset($_POST['mail'])?($_POST['mail']):'';
  $mdp = isset($_POST['mdp'])?($_POST['mdp']):'';
  //INSCRIPTION
  $emailInscription= isset($_POST['email'])?($_POST['email']):'';
  $prenom= isset($_POST['prenom'])?($_POST['prenom']):'';
  $nom= isset($_POST['nom'])?($_POST['nom']):'';
  $mdp1= isset($_POST['mdp1'])?($_POST['mdp1']):'';
  $mdp2= isset($_POST['mdp2'])?($_POST['mdp2']):'';


  require ("modele/utilisateurBD.php") ;
  require ("modele/annonceBD.php");

  if (count($_POST)==0)
    require('./vue/Connexion/connexion.tpl');

  if(isset($emailConnexion) || isset($mdp) ){
    if (verif_ident($emailConnexion,$mdp,$profil)) {
           $_SESSION['profil'] = $profil;
           echo "<script language='JavaScript'>alert('Connexion réussie !')</script>";
           getProfil($emailConnexion,$mdp);
           $questionAfficher=afficherAnnonceEmploye($_SESSION['idUser']);
           $nbMessage= "5";
           require('./vue/murEmploye.tpl') ;

        }
        else if(empty($emailConnexion) && !empty($mdp)){
  				echo "<script language='JavaScript'>alert('Veuillez entrer un identifiant.')</script>";
  				require_once('./vue/Connexion/connexion.tpl') ;
        }
        else if(empty($mdp) && !empty($emailConnexion)){
  				echo "<script language='JavaScript'>alert('Veuillez entrer un mdp.')</script>";
  				require_once('./vue/Connexion/connexion.tpl') ;
        }
  }

      if(!empty($emailInscription) && !empty($prenom) && !empty($nom) && !empty($mdp1) && !empty($mdp2) ) {
          $_SESSION['prenom'] = $_POST['prenom'];
          $_SESSION['nom'] = $_POST['nom'];
          $_SESSION['mdp'] = $_POST['mdp1'];
          $_SESSION['email'] = $emailInscription;
          require('./vue/contrat.tpl');
        }

        if (isset($_POST['cocher'])) {
          require ("modele/utilisateurBD.php");
          $categorie = getCategorie();
          require('./vue/inscription.tpl') ;
        }


}



 ?>
