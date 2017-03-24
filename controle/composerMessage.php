<?php

function creerMessage(){
  $destinataire=  isset($_POST['destinataire'])?($_POST['destinataire']):'';
	$expediteur = $_SESSION['idUser'];
	$texteMes=  isset($_POST['$texteMes'])?($_POST['texteMes']):'';


  if  (count($_POST)==0) {
    //  echo("Veuillez remplir les champs");
      require('./vue/composerMessage.tpl') ;
    }


    else if ($destinataire == ""|| $texteMes == ""){
        //echo "<script language='JavaScript'>alert('Manque des informations')</script>";
          echo "<script language='JavaScript'>alert('Destinataire : ". $destinataire ." Expediteur : ". $expediteur. " Texte : " . htmlentities($_POST['texteMes']) ."')</script>";
        require('./vue/composerMessage.tpl') ;
      }

      else{
        require ("modele/messageBD.php") ;
        creation_message($destinataire,$expediteur,$_POST['texteMes']);
        echo "<script language='JavaScript'>alert('Création de message réussie ! Félicitation')</script>";
        echo "<script language='JavaScript'>alert('Destinataire : ". $destinataire ." Expediteur : ". $expediteur. " Texte : " . htmlentities($_POST['texteMes']) ."')</script>";
        require('./vue/composerMessage.tpl') ;
        $destinataire= " " ; 	$expediteur= " "; $texteMes= " ";
      }
  }

function afficherMessages(){
  require('./vue/consulterMessage.tpl');
}

function voirMessage(){
  require('./vue/voirMessage.tpl');
}


 ?>
