<?php 

/*controleur utilisateur.php :
  ensemble de fonctions-action de gestion des utilisateurs
*/

function create () {

	$nomAnnonce=  isset($_POST['nom'])?($_POST['nom']):'';
	$intitule=  isset($_POST['intitule'])?($_POST['intitule']):'';
	
	if  (count($_POST)==0) {
	    echo("Veuillez remplir les champs");
	}
	else {
		require ("modele/creatAnnonceBD.php") ;
		if  (verif_identification($login,$mdp,$profil)) {
			creation_annonce($nomAnnonce,$intitule);
			?>
			<script>
			    alert("Création réussie");
			</script>
			<?php
			header("Location:index.php?controle=utilisateur=&action=accueil");
		} 
		else{
			$msg2 ="Erreur de saisie, veuillez ressayer : ";
			//require ("vue/identification.tpl") ;
		} 
	}
					
}
?>