<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>Landing Zero Free Bootstrap Theme with Video</title>
    <meta name="description" content="This is a free Bootstrap landing page theme created for BootstrapZero. Feature video background and one page design." />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="generator" content="Codeply">
    <link rel="stylesheet" href="vue/Connexion/css/bootstrap.min.css" />
    <link rel="stylesheet" href="vue/Connexion/css/styles.css" />
    <link rel="stylesheet" href="vue/Connexion/css/style.css" />
	<link rel="stylesheet" media="all and (min-width: 1024px)" href="vue/Connexion/css/lavy.css" />
	<link rel="stylesheet" media="all and (max-width: 600px)" href="vue/Connexion/css/connex_mobile.css">
	<link rel="stylesheet" media="all and (max-width: 1024px) and (min-width: 600px)" href="vue/Connexion/css/connex_1024.css">
  </head>
  <body>
  
  
	

	
    <header id="first">
	
        <div class="header-content">
		<img id="logo" class="imagelogo" src="vue/connexion/img/logo.png" alt="logo" />
          <div class="container">
<div class="box"></div>
<div class="container-forms">
 <div class="container-info">
   <div class="info-item">
     <div class="table">
       <div class="table-cell">
         <p>
           Déja Inscrit ?
         </p>
         <div class="btn">
           Connecte toi !
         </div>
       </div>
     </div>
   </div>
   <div class="info-item pasencore">
     <div class="table">
       <div class="table-cell">
         <p id="txt">
           Pas encore Inscrit ?
         </p>
         <div class="btn">
           Inscrit toi !
         </div>
       </div>
     </div>
   </div>
 </div>
 <div class="container-form" id="sign">
   <div id="log" class="form-item log-in">
     <div class="table">
       <div class="table-cell">
       <form  action="./index.php?controle=connexion&action=connexionUtilisateur" method="post">
         <input id="mail" name="mail" placeholder="Email" type="text" />
         <input name="mdp" id="mdp" placeholder="Mot de passe" type=Password />

        <!-- <div class="btn">
           Connexion
         </div> -->
          <input style="background-color: rgb(250, 120, 63)" class="btn"  type= "submit" value= "Connexion" />
        </form>
       </div>
     </div>
   </div>
   <div  class="form-item sign-up">
     <div class="table">
       <div class="table-cell">
<<<<<<< HEAD
         <form  action="./index.php?controle=inscription&action=preinscription" method="post" onsubmit="return validation(this)">
         <input name="email" placeholder="Email" type="text" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$" title="Veuillez entrez un mail correct" required/>
         <input name="prenom" placeholder="Prénom" type="text" onchange="this.value = this.value.charAt(0).toUpperCase() + this.value.substr(1);" required/>
         <input name="nom" placeholder="Nom" type="text" onchange="this.value = this.value.toUpperCase()" required/>
         <input name="mdp1" placeholder="Mot de passe" type=Password required/>
         <input name="mdp2" placeholder="Confirmer votre mot de passe" type=Password required/>
=======
         <form  action="./index.php" method="post">
         <input id="mail" name="email" placeholder="Email" type="text" />
         <input id="mail" name="prenom" placeholder="Prénom" type="text" />
         <input id="mail" name="nom" placeholder="Nom" type="text" />
         <input id="mail" name="mdp" placeholder="Mot de passe" type=Password />
         <input id="mail" name="mdp" placeholder="Confirmer votre mot de passe" type=Password />
>>>>>>> origin/master
         <input name="inscription" VALUE="inscription" type="hidden" />
             <!-- <div class="btn">
           Inscription
         </div> -->
           <input style="background-color: rgb(250, 120, 63)" class="btn"  type= "submit" value= "Inscription" />
       </form>

       </div>
     </div>
   </div>
 </div>
</div>
</div>
<script src='https://code.jquery.com/jquery-2.2.4.min.js'></script>

<script src="vue/Connexion/js/index.js"></script>


        </div>
        <video autoplay="" loop="11.0" class="fillWidth fadeIn wow collapse in div2" data-wow-delay="0.5s" poster="/img/Traffic-blurred2.jpg" id="video-background">
            <source src="./vue/Connexion/img/Traffic-blurred2.mp4" type="video/mp4">Your browser does not support the video tag. I suggest you upgrade your browser.
        </video>
    </header>
  </body>
</html>
