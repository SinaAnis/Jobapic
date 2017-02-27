<?php

/*controleur utilisateur.php :
  ensemble de fonctions-action de gestion des utilisateurs
*/

  function creerAnnonce(){
  	require('./vue/pageCreationAnnonce.tpl');
  }

function create () {

	$nomAnnonce=  isset($_POST['nomA'])?($_POST['nomA']):'';
	$adrAnnonce = isset($_POST['adr'])?($_POST['adr']):'';
	$desAnnonce=  isset($_POST['des'])?($_POST['des']):'';
	$recAnnonce=  isset($_POST['rec'])?($_POST['rec']):'';
	$catAnnonce=  isset($_POST['cat'])?($_POST['cat']):'';



	if  (count($_POST)==0) {
	  //  echo("Veuillez remplir les champs");
	   	require ("modele/utilisateurBD.php") ;
			$categorie=getCategorieFavoris($_SESSION['idUser']);
			require('./vue/pageCreationAnnonce.tpl') ;

	}
	else if (!empty($nomAnnonce)&&!empty($adrAnnonce)&&!empty($desAnnonce)&&!empty($recAnnonce) && isset($_POST['signup'])){
require ("modele/annonceBD.php") ;
			creation_annonce($nomAnnonce,$adrAnnonce,$desAnnonce,$recAnnonce,$catAnnonce,$_SESSION['idUser']);
			require('./vue/pageCreationAnnonce.tpl') ;
			echo "<script language='JavaScript'>alert('Création d annonce réussie ! Félicitation')</script>";
			$nomAnnonce= " " ; 	$catAnnonce= " "; $desAnnonce= " ";
		}
		else{
			echo "<script language='JavaScript'>alert('Manque des informations')</script>";
			require('./vue/pageCreationAnnonce.tpl') ;
		}

}

?>
