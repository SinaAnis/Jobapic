<?php


session_start();

if ((count($_GET)!=0) && !(isset($_GET['controle']) && isset ($_GET['action'])))
		require ('./vue/error418.tpl'); //cas d'un appel à index.php avec des paramètres incorrects

else {
	if ((! isset($_SESSION['profil'])) || count($_GET)==0)	{
		$controle = "identification";   //cas d'une personne non authentifiée
		$action=	"ident";		//ou d'un appel à index.php sans paramètre
	}
	else {
		if (isset($_GET['controle']) && isset ($_GET['action'])) {
			$controle = $_GET['controle'];   //cas d'un appel à index.php
			$action = 	 $_GET['action'];	//avec les 2 paramètres controle et action
		}
	}
    if (file_exists("./controle/".$controle.".php")) {
        require ('./controle/' . $controle . '.php');
        if (isset($_GET['id'])){
        if(isset($_GET['idAnnonce'])){
            $action ($_GET['id'],$_GET['idAnnonce']);
        }else
            $action ($_GET['id']);
    } else 
        $action ();
    }
    else {
        require('./vue/error418.tpl');
    }
    
}

?>

