<?php 


function connectionAndroid($login,$mdp){
	require ("modele/utilisateurBD.php") ;
	require ("modele/annonceBD.php");
	if (verif_ident($login,$mdp,$profil)) {
			$_SESSION['profil'] = $profil;
		   // echo "<script language='JavaScript'>alert('Connexion réussie !')</script>";
			//getProfil($login,$mdp);
			//$questionAfficher=afficherAnnonceEmploye();
		   // require('./vue/murEmploye.tpl') ;
           return true;
			}
	return false;
}

?>