<?php

function creation_message($destinataire,$expediteur,$texte){
  require ("./modele/connectBD.php");
  $req= "INSERT INTO `message`(`Expediteur`, `Destinataire`, `Texte`)
  VALUES ('%s','%s','%s')";
  $sql = sprintf ($req,$destinataire,$expediteur,$texte);
  $res = mysqli_query($link,$sql) or die ('erreur de requete : ' . $sql);
}


?>
