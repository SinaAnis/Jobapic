<?php

function afficheHisto(){
    require('./modele/annonceBD.php');
    $iduser=$_SESSION['idUser'];
    $histoCandid= getPostuleWithIdProprio($iduser);
	require('./vue/histo.tpl');
}

?>
