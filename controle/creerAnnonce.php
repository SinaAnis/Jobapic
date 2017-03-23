<?php

/*controleur utilisateur.php :
  ensemble de fonctions-action de gestion des utilisateurs
*/

  function creerAnnonce(){
    require ("modele/utilisateurBD.php") ;
    //$categorie = getCategorieFavoris($_SESSION['idUser']);
    $categorie = getCategorie();
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
			$categorie=getCategorie();
			require('./vue/pageCreationAnnonce.tpl') ;

	}
	else if ($nomAnnonce == ''|| $adrAnnonce == ''|| $desAnnonce == '' || $recAnnonce == ''){
            echo "<script language='JavaScript'>alert('Manque des informations')</script>";
            require ("modele/utilisateurBD.php") ;
			$categorie=getCategorie();
			require('./vue/pageCreationAnnonce.tpl') ;
            print_r ($_POST);
		}
		else{
            		require ("modele/annonceBD.php") ;
			require ("modele/utilisateurBD.php") ;
			creation_annonce($nomAnnonce,$adrAnnonce,$desAnnonce,$recAnnonce,$catAnnonce,$_SESSION['idUser']);
            		$categorie = getCategorie();
			echo "<script language='JavaScript'>alert('Création d annonce réussie ! Félicitation')</script>";
			require('./vue/pageCreationAnnonce.tpl') ;
			$nomAnnonce= " " ; 	$catAnnonce= " "; $desAnnonce= " ";
		}

}

?>
