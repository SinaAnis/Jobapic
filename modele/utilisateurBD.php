	<?php
	/*Fonctions-modèle réalisant les requètes de gestion des utilisateurs en base de données*/

	// verif_ident : fonction booléenne de vérification de l'utilisateur en base de données
	// Si ok, alors le profil de l'utilisateur, à savoir son enregistrement, est affecté en sortie à $profil

	function verif_ident($log='',$num='', &$profil) {
		require ("./modele/connectBD.php");
		$req= "SELECT * FROM Utilisateur WHERE idUser='%s' AND Mdp='%s'";
		$sql = sprintf ($req, $log, $num);
		$res = mysqli_query($link,$sql) or die ('erreur de requete : ' . $sql);

		if (mysqli_num_rows($res)>0) {
			$profil=mysqli_fetch_assoc($res);
			$_SESSION['profil']= $profil;	//Inclure dans une variable session le profil de l'user
			return true;
		}
	 return false;
	}

	function setCategorieFavoris($cat,$iduser){
		require ("./modele/connectBD.php");
		$req= "INSERT INTO categoriepref (IdCategorie,IdUser)
		VALUES ('%s','%s')";
		$sql = sprintf ($req , $cat, $iduser);
		$res = mysqli_query($link,$sql) or die ('erreur de requete : ' . $sql);
	}

	function mail_disponible($mail=''){
		require ("./modele/connectBD.php");
		$req= "SELECT * FROM Utilisateur WHERE Mail ='%s'";
		$sql = sprintf ($req, $mail);
		$res = mysqli_query($link,$sql) or die ('erreur de requete : ' . $sql);

		if (mysqli_num_rows($res)>0) {
			//$profil=mysqli_fetch_assoc($res);
			//$_SESSION['profil']= $profil;	//Inclure dans une variable session le profil de l'user
			return false;
		}
		else return true;
	}

function inscription($nom, $prenom, $genre, $date, $adresse, $ville, $departement, $mail, $telephone, $situation, $mdp) {
		require ("./modele/connectBD.php");
		$req= "INSERT INTO utilisateur (Nom,Prenom,Genre,DateNaissance,Adresse,Ville,Departement, Mail,Telephone,Situation,Mdp)
		VALUES ('%s','%s','%s','%s','%s','%s','%s','%s','%s','%s','%s')";
		$sql = sprintf ($req , $nom, $prenom, $genre, $date, $adresse, $ville, $departement, $mail, $telephone, $situation, $mdp);
		$res = mysqli_query($link,$sql) or die ('erreur de requete : ' . $sql);
	}



	function editerProfilBD($mail, $genre, $telephone, $situation,$departement , $ville, $photo , $log) {
		require ("./modele/connectBD.php");
		$req= "UPDATE utilisateur
		SET Mail  ='%s',Genre  ='%s',Telephone ='%s',Situation  ='%s',Departement  ='%s',Ville  ='%s',Photo  ='%s'
		WHERE idUser='%s'";
		$sql = sprintf ($req , $mail,$genre , $telephone ,$situation ,$departement , $ville, $photo, $log);
		$res = mysqli_query($link,$sql) or die ('erreur de requete : ' . $sql);
	}

	function editerCategorie($cat1, $idUser) {
		require ("./modele/connectBD.php");
		$req= "UPDATE categoriepref
		SET IdCategorie  ='%s' WHERE IdUser='%s'";
		$sql = sprintf ($req , $cat1,$idUser);
		$res = mysqli_query($link,$sql) or die ('erreur de requete : ' . $sql);
	}



		function editerPosition($Longitude, $Latitude,$idUser) {
			require ("./modele/connectBD.php");
			$req= "UPDATE utilisateur
			SET Longitude  ='%s',Latitude  ='%s'
			WHERE idUser='%s'";
			$sql = sprintf ($req ,$Longitude, $Latitude , $idUser);
			$res = mysqli_query($link,$sql) or die ('erreur de requete : ' . $sql);
		}

	function getProfil($log,$num){
		require ("./modele/connectBD.php");
			$req= "SELECT idUser,nom,prenom,genre,dateNaissance,Adresse,Mail,Telephone,Situation,mdp,Departement,Ville,Photo FROM Utilisateur WHERE idUser='%s' AND Mdp='%s'";
				$sql = sprintf ($req,$log,$num);
			  $res = mysqli_query($link,$sql) or die ('erreur de requete : ' . $sql);
			//$row = mysqli_fetch_assoc($res);
				foreach($res as $row){
					$_SESSION['idUser'] = $row['idUser'];
				  $_SESSION['nom'] = $row['nom'];
					$_SESSION['prenom'] = $row['prenom'];
					$_SESSION['genre'] = $row['genre'];
				  $_SESSION['dateNaissance'] = $row['dateNaissance'];
					$_SESSION['Adresse'] = $row['Adresse'];
					$_SESSION['Mail'] = $row['Mail'];
					$_SESSION['Telephone'] = $row['Telephone'];
					$_SESSION['Situation'] = $row['Situation'];
					$_SESSION['mdp'] = $row['mdp'];
					$_SESSION['Departement'] = $row['Departement'];
					$_SESSION['Ville'] = $row['Ville'];
					$_SESSION['Photo'] = $row['Photo'];
				}

	}
  function getIdUser($nom,$mdp){
		require ("./modele/connectBD.php");
			$req= "SELECT idUser FROM `utilisateur` WHERE nom = '%s' AND mdp='%s' ";
			$sql = sprintf ($req , $nom,$mdp );
			$res = mysqli_query($link,$sql) or die ('erreur de requete : ' . $sql);
      $row = mysqli_fetch_assoc($res);
			   return $row['idUser'];
	}

	function getCategorieFavoris($id){
		require ("./modele/connectBD.php");
			$req= "SELECT categorie.IdCategorie,categorie.NomCategorie
      FROM `categorie`,`categoriepref`
      WHERE idUser='%s'
      AND categorie.idCategorie = categoriepref.idCategorie";
			$sql = sprintf ($req, $id);
			$res = mysqli_query($link,$sql) or die ('erreur de requete : ' . $sql);
			return $res;
	}


	function getCategorie(){
		require ("./modele/connectBD.php");
			$sql= "SELECT categorie.IdCategorie,categorie.NomCategorie FROM `categorie`";
			$res = mysqli_query($link,$sql) or die ('erreur de requete : ' . $sql);
			return $res;
	}

	function getUser(){
		require ("./modele/connectBD.php");
			$sql= "SELECT Prenom , Nom , IdUser FROM `utilisateur`";
			$res = mysqli_query($link,$sql) or die ('erreur de requete : ' . $sql);
			return $res;
	}

	function getUserId($idUser){
	  require ("./modele/connectBD.php");
	  $req= "SELECT Prenom , Nom FROM utilisateur WHERE idUser = '%s' ";
	  $sql = sprintf ($req,$idUser);
	  $res = mysqli_query($link,$sql) or die ('erreur de requete : ' . $sql);
	  return $res;
	}

	function geticones(){
		require ("./modele/connectBD.php");
	  $req= "SELECT IdCategorie,NomCategorie FROM categorie ";
	  $sql = sprintf ($req);
	  $res = mysqli_query($link,$sql) or die ('erreur de requete : ' . $sql);
	  return $res;
	}


?>
