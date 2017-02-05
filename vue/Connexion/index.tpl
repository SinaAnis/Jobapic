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
  </head>
  <body>

    <header id="first">
        <div class="header-content">
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
   <div class="info-item">
     <div class="table">
       <div class="table-cell">
         <p>
           Pas encore Inscrit ?
         </p>
         <div class="btn">
           Inscrit toi !
         </div>
       </div>
     </div>
   </div>
 </div>
 <div class="container-form">
   <div class="form-item log-in">
     <div class="table">
       <div class="table-cell">
       <form  action="./index.php" method="post">
         <input id="mail" name="mail" placeholder="Email" type="text" />
         <input name="mdp" id="mdp" placeholder="Mot de passe" type=Password />

        <!-- <div class="btn">
           Connexion
         </div> -->
          <input class="btn"  type= "submit" value= "Connexion" />
        </form>
       </div>
     </div>
   </div>
   <div class="form-item sign-up">
     <div class="table">
       <div class="table-cell">
         <form  action="./index.php" method="post">
         <input name="email" placeholder="Email" type="text" />
         <input name="prenom" placeholder="Prénom" type="text" />
         <input name="nom" placeholder="Nom" type="text" />
         <input name="mdp" placeholder="Mot de passe" type=Password />
         <input name="mdp" placeholder="Confirmer votre mot de passe" type=Password />
         <input name="inscription" VALUE="inscription" type="hidden" />
             <!-- <div class="btn">
           Inscription
         </div> -->
           <input class="btn"  type= "submit" value= "Inscription" />
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
        <video autoplay="" loop="" class="fillWidth fadeIn wow collapse in" data-wow-delay="0.5s" poster="https://s3-us-west-2.amazonaws.com/coverr/poster/Traffic-blurred2.jpg" id="video-background">
            <source src="https://s3-us-west-2.amazonaws.com/coverr/mp4/Traffic-blurred2.mp4" type="video/mp4">Your browser does not support the video tag. I suggest you upgrade your browser.
        </video>
    </header>
  </body>
</html>
