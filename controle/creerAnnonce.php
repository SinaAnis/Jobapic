<?php

/*controleur utilisateur.php :
  ensemble de fonctions-action de gestion des utilisateurs
*/

function create () {

	$nomAnnonce=  isset($_POST['nom'])?($_POST['nom']):'';
	$adrAnnonce = isset($_POST['adr'])?($_POST['adr']):'';
	$desAnnonce=  isset($_POST['des'])?($_POST['des']):'';
	$recAnnonce=  isset($_POST['rec'])?($_POST['rec']):'';
	$catAnnonce=  isset($_POST['cat'])?($_POST['cat']):'';


	if  (count($_POST)==0) {
	    echo("Veuillez remplir les champs");
			require('./vue/pageCreation.tpl') ;

	}
	else if (count($_POST)==5){
		require ("modele/annonceBD.php") ;
			creation_annonce($nomAnnonce,$adrAnnonce,$desAnnonce,$recAnnonce,$catAnnonce);
			echo "<script language='JavaScript'>alert('Création d'annonce réussie ! Félicitation')</script>";
		}
		else{
			echo "<script language='JavaScript'>alert('Manque des informations')</script>";
			//require ("vue/identification.tpl") ;
		}

}
?>
