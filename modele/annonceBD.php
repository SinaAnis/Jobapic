<?php

function creation_annonce($nomAnnonce,$adrAnnonce,$desAnnonce,$recAnnonce,$catAnnonce,$idUser){
  require ("./modele/connectBD.php");
  $req= "INSERT INTO utilisateur (NomAnnonce,DateAnnonce,AdrAnnonce,DescripAnnonce,Recompence,IdCategorie,IdUser)
  VALUES ('%s','CURRENT_DATE','%s','%s','%s','%s','%s')";
  $sql = sprintf ($nomAnnonce,$adrAnnonce,$desAnnonce,$recAnnonce,$catAnnonce,$idUser);
  $res = mysqli_query($link,$sql) or die ('erreur de requete : ' . $sql);
}



?>
