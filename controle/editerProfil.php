<?php


function consulterProfil(){
	require('./vue/monProfil.tpl');

}

function editerProfil(){
	$mail = isset($_POST['mail'])?($_POST['mail']):'';
	$prenom = isset($_POST['prenom'])?($_POST['prenom']):'';
	$nom = isset($_POST['nom'])?($_POST['nom']):'';
	$mdp = isset($_POST['mdp'])?($_POST['mdp']):'';
	$genre = isset($_POST['genre'])?($_POST['genre']):'';
	$date = isset($_POST['date'])?($_POST['date']):'';
	$telephone = isset($_POST['telephone'])?($_POST['telephone']):'';
	$situation = isset($_POST['situation'])?($_POST['situation']):'';
	$departement = isset($_POST['departement'])?($_POST['departement']):'';
	$ville = isset($_POST['ville'])?($_POST['ville']):'';
	$photo = isset($_POST['photo'])?($_POST['photo']):'';



   echo "<script language='JavaScript'>alert(". " YO" . $_SESSION['idUser'] ." !!')</script>";
	 if  (count($_POST)==0) {
	 require('./vue/modifProfil.tpl');
    }
		/*
		|| $genre != $_SESSION['genre'] || $date != $_SESSION['dateNaissance'] || $adresse != $_SESSION['Adresse'] || $telephone != $_SESSION['Telephone']
 	 || $situation != $_SESSION['Situation'] || $departement != $_SESSION['Departement']|| $ville != $_SESSION['Ville'] || $photo != $_SESSION['Photo']
	 */
   else if($mail != $_SESSION['Mail'] || $prenom != $_SESSION['prenom'] || $nom != $_SESSION['nom'] || $mdp != $_SESSION['mdp']||  $genre != $_SESSION['genre']
	 || $date != $_SESSION['dateNaissance']  || $telephone != $_SESSION['Telephone']
	  || $situation != $_SESSION['Situation'] || $departement != $_SESSION['Departement'] || $ville != $_SESSION['Ville'] || $photo != $_SESSION['Photo'] ) {
		//echo "<script language='JavaScript'>alert('Profil edité avec succes !!')</script>";
		require ("./modele/utilisateurBD.php") ;
		editerProfilBD($mail,$prenom,$nom,$mdp, $genre, $date , $telephone, $situation,$departement , $ville, $photo ,1);
		getProfil($_SESSION['idUser'],$_SESSION['mdp']);
    require('./vue/modifProfil.tpl');
   }
	 else {
		    echo "<script language='JavaScript'>alert(' YO" . $_SESSION['idUser'] ." !!')</script>";
		 echo "<script language='JavaScript'>alert('Aucune Modification !!')</script>";
		 require('./vue/modifProfil.tpl');
	 }

}
/*
function getCategorieFavoris($idUser){
 require ("./modele/utilisateurBD.php") ;
  $categorie = getCategorieFavoris($_SESSION['idUser']);
	require ("./vue/index.php?controle=creerAnnonce&action=create") ;
}
*/

?>
