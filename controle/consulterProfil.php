<?php
/*function afficheProfil($id){
    require('./modele/annonceBD.php');
	 require('./modele/formationBD.php');
   // $iduser=$_SESSION['idUser'];
    //$annonce= afficherAnnonceById($id);
    //$neme = getUserNameWithAnnonceId($id);
    //$tomcat = getCatNameWithAnnonceId($id);
	$candidat = getUserByID($id);
	$formation = getFormationWithIdUser($id);
	$experience = getExperienceWithIdUser($id);
	$loisir = getLoisirWithIdUser($id);

    require('./vue/unProfil.tpl') ;
}*/

function afficheProfil($id){
    require('./modele/annonceBD.php');
	 require('./modele/formationBD.php');
   // $iduser=$_SESSION['idUser'];
    //$annonce= afficherAnnonceById($id);
    //$neme = getUserNameWithAnnonceId($id);
    //$tomcat = getCatNameWithAnnonceId($id);
	$candidat = getUserByID($id);
	$formation = getFormationWithIdUser($id);
	$experience = getExperienceWithIdUser($id);
	$loisir = getLoisirWithIdUser($id);

    require('./vue/unProfil.tpl') ;
}

function afficheProfilEmployeur($id){
    require('./modele/annonceBD.php');
	 require('./modele/formationBD.php');
   // $iduser=$_SESSION['idUser'];
    //$annonce= afficherAnnonceById($id);
    //$neme = getUserNameWithAnnonceId($id);
    //$tomcat = getCatNameWithAnnonceId($id);
	$candidat = getUserByID($id);
	$formation = getFormationWithIdUser($id);
	$experience = getExperienceWithIdUser($id);
	$loisir = getLoisirWithIdUser($id);

    require('./vue/monProfilEmployeur.tpl') ;
}

function afficheProfilEmploye($id){
    require('./modele/annonceBD.php');
	 require('./modele/formationBD.php');
   // $iduser=$_SESSION['idUser'];
    //$annonce= afficherAnnonceById($id);
    //$neme = getUserNameWithAnnonceId($id);
    //$tomcat = getCatNameWithAnnonceId($id);
	$candidat = getUserByID($id);
	$formation = getFormationWithIdUser($id);
	$experience = getExperienceWithIdUser($id);
	$loisir = getLoisirWithIdUser($id);

    require('./vue/monProfilEmploye.tpl') ;
}
?>

