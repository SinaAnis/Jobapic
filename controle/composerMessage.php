<?php

/*function creerMessage(){
  $destinataire=  isset($_POST['destinataire'])?($_POST['destinataire']):'';
	$expediteur = $_SESSION['idUser'];
	$texteMes=  isset($_POST['textMes'])?($_POST['textMes']):'';
  $objet = isset($_POST['objet'])?($_POST['objet']):'';
  $date = date("Y-m-d H:i:s");
  require ("modele/utilisateurBD.php") ;

  if  (count($_POST)==0) {
    //  echo("Veuillez remplir les champs");
      $utilisateurs = getUser();
      require('./vue/composerMessage.tpl') ;
    }


    else if ($destinataire == ""|| $texteMes == "" || $objet == ""){
        $utilisateurs = getUser();
        echo "<script language='JavaScript'>alert('Manque des informations')</script>";
        // echo "<script language='JavaScript'>alert('Destinataire : ". $destinataire ." Expediteur : ". $expediteur. " Texte : " . htmlentities($_POST['texteMes']) ."')</script>";
        require('./vue/composerMessage.tpl') ;
      }

      else{
        $utilisateurs = getUser();
        require ("modele/messageBD.php") ;
        creation_message($destinataire,$expediteur,$texteMes,$objet,$date);
        echo "<script language='JavaScript'>alert('Création de message réussie ! Félicitation')</script>";
        //echo "<script language='JavaScript'>alert('Destinataire : ". $destinataire ." Expediteur : ". $expediteur. " Texte : " . htmlentities($_POST['texteMes']) ."')</script>";
        require('./vue/composerMessage.tpl') ;
        $destinataire= " " ; 	$expediteur= " "; $texteMes= " "; $objet = " ";
      }
  }*/

  function creerMessageEmploye(){
  $destinataire=  isset($_POST['destinataire'])?($_POST['destinataire']):'';
	$expediteur = $_SESSION['idUser'];
	$texteMes=  isset($_POST['textMes'])?($_POST['textMes']):'';
  $objet = isset($_POST['objet'])?($_POST['objet']):'';
  $date = date("Y-m-d H:i:s");
  require ("modele/utilisateurBD.php") ;

  if  (count($_POST)==0) {
    //  echo("Veuillez remplir les champs");
      $utilisateurs = getUser();
      require('./vue/composerMessageEmploye.tpl') ;
    }


    else if ($destinataire == ""|| $texteMes == "" || $objet == ""){
        $utilisateurs = getUser();
        echo "<script language='JavaScript'>alert('Manque des informations')</script>";
        // echo "<script language='JavaScript'>alert('Destinataire : ". $destinataire ." Expediteur : ". $expediteur. " Texte : " . htmlentities($_POST['texteMes']) ."')</script>";
        require('./vue/composerMessageEmploye.tpl') ;
      }

      else{
        $utilisateurs = getUser();
        require ("modele/messageBD.php") ;
        creation_message($destinataire,$expediteur,$texteMes,$objet,$date);
        echo "<script language='JavaScript'>alert('Création de message réussie ! Félicitation')</script>";
        //echo "<script language='JavaScript'>alert('Destinataire : ". $destinataire ." Expediteur : ". $expediteur. " Texte : " . htmlentities($_POST['texteMes']) ."')</script>";
        require('./vue/composerMessageEmploye.tpl') ;
        $destinataire= " " ; 	$expediteur= " "; $texteMes= " "; $objet = " ";
      }
  }

  function creerMessageEmployeur(){
  $destinataire=  isset($_POST['destinataire'])?($_POST['destinataire']):'';
	$expediteur = $_SESSION['idUser'];
	$texteMes=  isset($_POST['textMes'])?($_POST['textMes']):'';
  $objet = isset($_POST['objet'])?($_POST['objet']):'';
  $date = date("Y-m-d H:i:s");
  require ("modele/utilisateurBD.php") ;

  if  (count($_POST)==0) {
    //  echo("Veuillez remplir les champs");
      $utilisateurs = getUser();
      require('./vue/composerMessageEmployeur.tpl') ;
    }


    else if ($destinataire == ""|| $texteMes == "" || $objet == ""){
        $utilisateurs = getUser();
        echo "<script language='JavaScript'>alert('Manque des informations')</script>";
        // echo "<script language='JavaScript'>alert('Destinataire : ". $destinataire ." Expediteur : ". $expediteur. " Texte : " . htmlentities($_POST['texteMes']) ."')</script>";
        require('./vue/composerMessageEmployeur.tpl') ;
      }

      else{
        $utilisateurs = getUser();
        require ("modele/messageBD.php") ;
        creation_message($destinataire,$expediteur,$texteMes,$objet,$date);
        echo "<script language='JavaScript'>alert('Création de message réussie ! Félicitation')</script>";
        //echo "<script language='JavaScript'>alert('Destinataire : ". $destinataire ." Expediteur : ". $expediteur. " Texte : " . htmlentities($_POST['texteMes']) ."')</script>";
        require('./vue/composerMessageEmployeur.tpl') ;
        $destinataire= " " ; 	$expediteur= " "; $texteMes= " "; $objet = " ";
      }
  }

/*function afficherMessages(){
  require ("modele/messageBD.php") ;
  $messages = getMessages($_SESSION['idUser']);
  //$messages = array_reverse($messages);
  require('./vue/consulterMessage.tpl');
}*/

function afficherMessagesEmploye(){
  require ("modele/messageBD.php") ;
  $messages = getMessages($_SESSION['idUser']);
  //$messages = array_reverse($messages);
  require('./vue/consulterMessageEmploye.tpl');
}

function afficherMessagesEmployeur(){
  require ("modele/messageBD.php") ;
  $messages = getMessages($_SESSION['idUser']);
  //$messages = array_reverse($messages);
  require('./vue/consulterMessageEmployeur.tpl');
}

// CEST OU ??

/*function voirMessage(){
  require ("modele/messageBD.php") ;
  $message = getMessage($_GET['idMessage']);
  foreach($message as $value) {
      require ("modele/utilisateurBD.php") ;
      $dest = getUserId($value['expediteur']);
  }
  require('./vue/voirMessage.tpl');
}*/

function voirMessageEmploye(){
  require ("modele/messageBD.php") ;
  $message = getMessage($_GET['idMessage']);
  foreach($message as $value) {
      require ("modele/utilisateurBD.php") ;
      $dest = getUserId($value['expediteur']);
  }
  require('./vue/voirMessage.tpl');
}
function voirMessageEmployeur(){
  require ("modele/messageBD.php") ;
  $message = getMessage($_GET['idMessage']);
  foreach($message as $value) {
      require ("modele/utilisateurBD.php") ;
      $dest = getUserId($value['expediteur']);
  }
  require('./vue/voirMessageEmployeur.tpl');
}

/*function repondre(){
// FAIRE UN CODE POUR REMETTRE A ZEROS LES VARIABLES POUR PAS QUAND ON RAFRAICHIT SA RENVOIT UN MESSAGE

//DIFFERENCIER EMPLOYE EMPLOYEUR?
require ("modele/messageBD.php") ;
$date = date("Y-m-d H:i:s");
creation_message($_POST['destinataire'],$_SESSION['idUser'],$_POST['message'],'Reponse : ' . $_POST['objet'] . '...',$date);
echo "<script language='JavaScript'>alert('Réponse envoyé ! Félicitation')</script>";
$messages = getMessages($_SESSION['idUser']);
require('./vue/consulterMessage.tpl');


}*/
function repondreEmploye(){
// FAIRE UN CODE POUR REMETTRE A ZEROS LES VARIABLES POUR PAS QUAND ON RAFRAICHIT SA RENVOIT UN MESSAGE

//DIFFERENCIER EMPLOYE EMPLOYEUR?
require ("modele/messageBD.php") ;
$date = date("Y-m-d H:i:s");
creation_message($_POST['destinataire'],$_SESSION['idUser'],$_POST['message'],'Reponse : ' . $_POST['objet'] . '...',$date);
echo "<script language='JavaScript'>alert('Réponse envoyée ! Félicitation')</script>";
$messages = getMessages($_SESSION['idUser']);
require('./vue/consulterMessageEmploye.tpl');


}

function repondreEmployeur(){
// FAIRE UN CODE POUR REMETTRE A ZEROS LES VARIABLES POUR PAS QUAND ON RAFRAICHIT SA RENVOIT UN MESSAGE

//DIFFERENCIER EMPLOYE EMPLOYEUR?
require ("modele/messageBD.php") ;
$date = date("Y-m-d H:i:s");
creation_message($_POST['destinataire'],$_SESSION['idUser'],$_POST['message'],'Reponse : ' . $_POST['objet'] . '...',$date);
echo "<script language='JavaScript'>alert('Réponse envoyée ! Félicitation')</script>";
$messages = getMessages($_SESSION['idUser']);
require('./vue/consulterMessageEmployeur.tpl');


}


 ?>
