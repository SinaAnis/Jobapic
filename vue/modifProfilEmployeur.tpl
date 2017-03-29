<!DOCTYPE html>
<html lang="en">

<head>
    <meta http-equiv="content-type" content="text/html;charset=UTF-8" />
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Modifier mon profil (coté Employe) | Job'Apic - Enfin un job à pic..</title>


    <!--STYLESHEET-->
    <!--=================================================-->

    <!--Roboto Slab Font [ OPTIONAL ] -->
    <link href="http://fonts.googleapis.com/css?family=Roboto+Slab:400,300,100,700" rel="stylesheet">
    <link href="http://fonts.googleapis.com/css?family=Roboto:500,400italic,100,700italic,300,700,500italic,400" rel="stylesheet">


    <!--Bootstrap Stylesheet [ REQUIRED ]-->
    <link href="vue/css/bootstrap.min.css" rel="stylesheet">


    <!--Jasmine Stylesheet [ REQUIRED ]-->
    <link href="vue/css/style.css" rel="stylesheet">


    <!--Font Awesome [ OPTIONAL ]-->
    <link href="vue/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet">


    <!--Switchery [ OPTIONAL ]-->
    <link href="vue/plugins/switchery/switchery.min.css" rel="stylesheet">


    <!--Bootstrap Select [ OPTIONAL ]-->
    <link href="vue/plugins/bootstrap-select/bootstrap-select.min.css" rel="stylesheet">

    <!--Bootstrap Validator [ OPTIONAL ]-->
    <link href="vue/plugins/bootstrap-validator/bootstrapValidator.min.css" rel="stylesheet">

    <!--Demo [ DEMONSTRATION ]-->
    <link href="vue/css/demo/jquery-steps.min.css" rel="stylesheet">

    <!--Demo [ DEMONSTRATION ]-->
    <link href="vue/css/demo/jasmine.css" rel="stylesheet">


    <!--SCRIPT-->
    <!--=================================================-->

    <!--Page Load Progress Bar [ OPTIONAL ]-->
    <link href="vue/plugins/pace/pace.min.css" rel="stylesheet">
    <script src="vue/plugins/pace/pace.min.js"></script>


</head>

<!--TIPS-->
<!--You may remove all ID or Class names which contain "demo-", they are only used for demonstration. -->

<body>


<!-- Copyright � 2004. Spidersoft Ltd -->
<style>
A.applink:hover {border: 2px dotted #DCE6F4;padding:2px;background-color:#ffff00;color:green;text-decoration:none}
A.applink       {border: 2px dotted #DCE6F4;padding:2px;color:#2F5BFF;background:transparent;text-decoration:none}
A.info          {color:#2F5BFF;background:transparent;text-decoration:none}
A.info:hover    {color:green;background:transparent;text-decoration:underline}
</style>

<!-- /Copyright � 2004. Spidersoft Ltd -->


    <div id="container" class="effect mainnav-lg">

        <!--NAVBAR-->
        <!--===================================================-->
        <header id="navbar">
            <div id="navbar-container" class="boxed">

                <!--Brand logo & name-->
                <!--================================-->
                <div class="navbar-header">
                    <a href="index.php?controle=editerProfil&action=consulterProfil" class="navbar-brand">
                        
                        <div class="brand-title">
                            <div class="brand-title"><img style="margin-left: -2.3em; margin-top: -0.3em" src="vue/Connexion/img/logo.png" height="80px"/>
                        </div>
                    </a>
                </div>
                <!--================================-->
                <!--End brand logo & name-->



            </div>
        </header>
        <!--===================================================-->
        <!--END NAVBAR-->

        <div class="boxed">

            <!--CONTENT CONTAINER-->
            <!--===================================================-->
            <div id="content-container">

                <!--Page Title-->
                <!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
                <div class="pageheader">
                    <h3><i class="fa fa-home"></i> Formulaire de modification du profil employeur</h3>

                </div>
                <!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
                <!--End page title-->

                <!--Page content-->
                <!--===================================================-->
                <div id="page-content">

                    <div class="row">
                        <div class="col-md-12">
                            <section class="panel">

                                <div class="panel-heading">
                                    <h3 class="panel-title"> Modification du profil employeur</h3>
                                </div>
                                <div class="panel-body">
                                    <!-- START Form Wizard -->

                                        <!-- Wizard Container 1 -->

                                        <!--/ Wizard Container 1 -->
                                        <!-- Wizard Container 2 -->
                                        <div class="wizard-title"> Information Générale </div>
                                        <div class="wizard-container">

                                            <div class="form-group">
                                                <div class="col-md-12">
                                                    <h5 class="semibold text-primary">
                                                        <i class="fa fa-user"></i> Information Générale
                                                    </h5>
                                                    <p class="text-muted"> Modifiez les informations que vous souhaitez </p>
                                                </div>
                                            </div>
                                            <form action="./index.php?controle=editerProfil&action=editerProfilEmployeur" method="post">
                                            <div class="form-group">

                                                <div class="row">
                                                    <div class="col-md-6">
                                                     <label>Mail: <span class="text-danger">*</span> </label>
                                                        <input type="text" class="form-control"  data-parsley-group="information" data-parsley-required  name="mail" value = <?php echo $_SESSION['Mail'];?> >
                                                          <!--<input type="hidden" name="mdp" value = <?php echo $_SESSION['mdp'];?> -->
                                                        <label>Prénom: <span class="text-danger">*</span> </label>
                                                        <!-- CHANGER $POST prenom par $SESSION -->
                                                        <input type="text" name="prenom" class="form-control"  data-parsley-group="information" data-parsley-required  placeholder="Prénom" value=<?php echo $_SESSION['prenom'];?> disabled >
                                                    </div>

                                                    <div class="col-md-6">
                                                        <label>Nom: <span class="text-danger">*</span> </label>
                                                        <input type="text" name="nom" class="form-control" placeholder="Nom" data-parsley-group="information" data-parsley-required value=<?php echo $_SESSION['nom'];?> disabled/>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <label>Téléphone:</label>
                                                        <input type="text" name="telephone" placeholder="99-99-99-99-99" data-mask="9999999999" value=<?php echo $_SESSION['Telephone'];?> class="form-control" />
                                                    </div>
                                                    <div class="col-md-6">
                                                        <label>Date de naissance:</label>
                                                        <input type="text" name="date" placeholder="9999-99-99" data-mask="9999-99-99" value=<?php echo $_SESSION['dateNaissance'];?> class="form-control" disabled />
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <div class="row">
                                                  <div class="col-md-3">
                                                      <label> Département: </label>
                                                      <div class="row">
                                                          <div class="col-sm-8">
                                                             <!-- <select name="departement" class="form-control" data-parsley-group="experience" data-parsley-required>
                                                                  <option <?php if ($_SESSION['Departement'] == "Paris") {?> selected="selected"  <?php } ?>  value="Paris">Paris</option>
<<<<<<< HEAD
                                                                  <option <?php if ($_SESSION['Departement'] == "Seine Saint Denis") {?> selected="selected"  <?php } ?>value="Seine Saint Denis">Seine Saint Denis</option>
                                                                  <option <?php if ($_SESSION['Departement'] == "Seine et Marne") {?> selected="selected"  <?php } ?>value="Seine et Marne">Seine et Marne</option>
=======
                                                                  <option <?php if ($_SESSION['Departement'] == "SSD") {?> selected="selected"  <?php } ?>value="Seine Saint Denis">Seine Saint Denis</option>
                                                                  <option <?php if ($_SESSION['Departement'] == "SEM") {?> selected="selected"  <?php } ?>value="Seine et Marne">Seine et Marne</option>
>>>>>>> origin/master

                                                              </select>-->
                                                              <select name="departement"   class="form-control" data-parsley-group="experience" data-parsley-requiredstyle="width: 204px" onChange="affiche_ville(this.value)"><?php<option value=" echo $_SESSION['Departement'] "></option>?>

                                                        <option value='01' <?php if(isset($_SESSION['Département'])&&$_SESSION['Département'] == "01 - Ain") echo "selected='selected'"; ?>>01 - Ain</option>

                                                        <option value='02' <?php if(isset($_SESSION['Département'])&&$_SESSION['Département'] == "02 - Aisne") echo "selected='selected'"; ?>>02 - Aisne</option>

                                                        <option value='03'>03 - Allier</option>

                                                        <option value='04'>04 - Alpes de Haute Provence</option>

                                                        <option value='05'>05 - Alpes (Hautes)</option>

                                                        <option value='06'>06 - Alpes Maritimes</option>

                                                        <option value='07'>07 - Ard&egrave;che</option>

                                                        <option value='08'>08 - Ardennes</option>

                                                        <option value='09'>09 - Ari&egrave;ge</option>

                                                        <option value='10'>10 - Aube</option>

                                                        <option value='11'>11 - Aude</option>

                                                        <option value='12'>12 - Aveyron</option>

                                                        <option value='13'>13 - Bouches du Rh&ocirc;ne</option>

                                                        <option value='14'>14 - Calvados</option>

                                                        <option value='15'>15 - Cantal</option>

                                                        <option value='16'>16 - Charente</option>

                                                        <option value='17'>17 - Charente Maritime</option>

                                                        <option value='18'>18 - Cher</option>

                                                        <option value='19'>19 - Corr&egrave;ze</option>

                                                        <option value='20'>20 - Corse</option>

                                                        <option value='21'>21 - C&ocirc;te d&acute;Or</option>

                                                        <option value='22'>22 - C&ocirc;tes d&acute;Armor</option>

                                                        <option value='23'>23 - Creuse</option>

                                                        <option value='24'>24 - Dordogne</option>

                                                        <option value='25'>25 - Doubs</option>

                                                        <option value='26'>26 - Dr&ocirc;me</option>

                                                        <option value='27'>27 - Eure</option>

                                                        <option value='28'>28 - Eure et Loir</option>

                                                        <option value='29'>29 - Finist&egrave;re</option>

                                                        <option value='30'>30 - Gard</option>

                                                        <option value='31'>31 - Garonne (Haute)</option>

                                                        <option value='32'>32 - Gers</option>

                                                        <option value='33'>33 - Gironde</option>

                                                        <option value='34'>34 - H&eacute;rault</option>

                                                        <option value='35'>35 - Ille et Vilaine</option>

                                                        <option value='36'>36 - Indre</option>

                                                        <option value='37'>37 - Indre et Loire</option>

                                                        <option value='38'>38 - Is&egrave;re</option>

                                                        <option value='39'>39 - Jura</option>

                                                        <option value='40'>40 - Landes</option>

                                                        <option value='41'>41 - Loir et Cher</option>

                                                        <option value='42'>42 - Loire</option>

                                                        <option value='43'>43 - Loire (Haute)</option>

                                                        <option value='44'>44 - Loire Atlantique</option>

                                                        <option value='45'>45 - Loiret</option>

                                                        <option value='46'>46 - Lot</option>

                                                        <option value='47'>47 - Lot et Garonne</option>

                                                        <option value='48'>48 - Loz&egrave;re</option>

                                                        <option value='49'>49 - Maine et Loire</option>

                                                        <option value='50'>50 - Manche</option>

                                                        <option value='51'>51 - Marne</option>

                                                        <option value='52'>52 - Marne (Haute)</option>

                                                        <option value='53'>53 - Mayenne</option>

                                                        <option value='54'>54 - Meurthe et Moselle</option>

                                                        <option value='55'>55 - Meuse</option>

                                                        <option value='56'>56 - Morbihan</option>

                                                        <option value='57'>57 - Moselle</option>

                                                        <option value='58'>58 - Ni&egrave;vre</option>

                                                        <option value='59'>59 - Nord</option>

                                                        <option value='60'>60 - Oise</option>

                                                        <option value='61'>61 - Orne</option>

                                                        <option value='62'>62 - Pas de Calais</option>

                                                        <option value='63'>63 - Puy de D&ocirc;me</option>

                                                        <option value='64'>64 - Pyr&eacute;n&eacute;es Atlantiques</option>

                                                        <option value='65'>65 - Pyr&eacute;n&eacute;es (Hautes)</option>

                                                        <option value='66'>66 - Pyr&eacute;n&eacute;es Orientales</option>

                                                        <option value='67'>67 - Rhin (Bas)</option>

                                                        <option value='68'>68 - Rhin (Haut)</option>

                                                        <option value='69'>69 - Rh&ocirc;ne</option>

                                                        <option value='70'>70 - Sa&ocirc;ne (Haute)</option>

                                                        <option value='71'>71 - Sa&ocirc;ne et Loire</option>

                                                        <option value='72'>72 - Sarthe</option>

                                                        <option value='73'>73 - Savoie</option>

                                                        <option value='74'>74 - Savoie (Haute)</option>

                                                        <option value='75'>75 - Paris (Dept.)</option>

                                                        <option value='76'>76 - Seine Maritime</option>

                                                        <option value='77'>77 - Seine et Marne</option>

                                                        <option value='78'>78 - Yvelines</option>

                                                        <option value='79'>79 - S&egrave;vres (Deux)</option>

                                                        <option value='80'>80 - Somme</option>

                                                        <option value='81'>81 - Tarn</option>

                                                        <option value='82'>82 - Tarn et Garonne</option>

                                                        <option value='83'>83 - Var</option>

                                                        <option value='84'>84 - Vaucluse</option>

                                                        <option value='85'>85 - Vend&eacute;e</option>

                                                        <option value='86'>86 - Vienne</option>

                                                        <option value='87'>87 - Vienne (Haute)</option>

                                                        <option value='88'>88 - Vosges</option>

                                                        <option value='89'>89 - Yonne</option>

                                                        <option value='90'>90 - Belfort (Territoire de)</option>

                                                        <option value='91'>91 - Essonne</option>

                                                        <option value='92'>92 - Hauts de Seine</option>

                                                        <option value='93'>93 - Seine Saint Denis</option>

                                                        <option value='94'>94 - Val de Marne</option>

                                                        <option value='95'>95 - Val d&acute;Oise</option>

                                                        <option value='98'>98 - Mayotte</option>

                                                        <option value='9A'>9A - Guadeloupe</option>

                                                        <option value='9B'>9B - Guyane</option>

                                                        <option value='9C'>9C - Martinique</option>

                                                        <option value='9D'>9D - R&eacute;union</option>

                                                 </select>
                                                          </div>

                                                      </div>
                                                  </div>
                                                  <div class="col-md-6">
                                                      <label>Ville: <span class="text-danger">*</span> </label>
                                                      <input type="text" name="ville" class="form-control" placeholder="Ville" value=<?php echo $_SESSION['Ville'];?> data-parsley-group="information" data-parsley-required />

                                                  </div>


                                                </div>
                                            </div>

                                        </div>
                                        <!--/ Wizard Container 2 -->
                                        <!-- Wizard Container 3 -->

                                        <!--/ Wizard Container 3 -->
                                        <!-- Wizard Container 4 -->
                                        <div class="wizard-title"> Situation </div>
                                        <div class="wizard-container">
                                            <div class="form-group">
                                                <div class="col-md-12">
                                                    <h5 class="semibold text-primary">
                                                        <i class="fa fa-cog"></i> Situation
                                                    </h5>
                                                    <p class="text-muted"> Entre votre situation actuel </p>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <div class="row">

                                                    <div class="col-md-3">
                                                        <label> Genre: </label>
                                                        <div class="row">
                                                            <div class="col-sm-8">
                                                                <select name="genre" class="form-control" data-parsley-group="experience" data-parsley-required>
                                                                    <option <?php if ($_SESSION['genre'] == "Femme") {?> selected="selected"  <?php } ?> value="Femme">Femme</option>
                                                                    <option <?php if ($_SESSION['genre'] == "Homme") {?> selected="selected"  <?php } ?> value="Homme">Homme</option>
                                                                    <option <?php if ($_SESSION['genre'] == "Aucun") {?> selected="selected"  <?php } ?>value="Aucun">Non Renseigné</option>

                                                                </select>
                                                            </div>

                                                        </div>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <label> Situation: </label>
                                                        <div class="row">
                                                            <div class="col-sm-8">
                                                                <select name="situation" class="form-control" data-parsley-group="experience" data-parsley-required>
                                                                    <option <?php if ($_SESSION['Situation'] == "Etudiant") {?> selected="selected"  <?php } ?> value="Etudiant">Etudiant</option>
                                                                    <option <?php if ($_SESSION['Situation'] == "Salarié") {?> selected="selected"  <?php } ?>value="Salarié">Salarié</option>
                                                                    <option <?php if ($_SESSION['Situation'] == "Chomage") {?> selected="selected"  <?php } ?>value="Chomage">Chomage</option>
                                                                    <option <?php if ($_SESSION['Situation'] == "Retraité") {?> selected="selected"  <?php } ?>value="Retraité">Retraité</option>
                                                                </select>
                                                            </div>

                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            
                                            <input name="finis" type="hidden"  />
                                            <input role="menuitem" type="submit" class="btn btn-primary" value="Finis">
                                        </div>
                                        <!-- Wizard Container 4 -->
                                    </form>
                                    <!--/ END Form Wizard -->
                                </div>
                            </section>
                        </div>
                    </div>




                </div>
                <!--===================================================-->
                <!--End page content-->

            </div>
            <!--===================================================-->
            <!--END CONTENT CONTAINER-->


            <!--MAIN NAVIGATION-->
            <!--===================================================-->
          <nav id="mainnav-container">
                <div id="mainnav">

                    <!--Menu-->
                    <!--================================-->
                    <div id="mainnav-menu-wrap">
                        <div class="nano">
                            <div class="nano-content">
                                <ul id="mainnav-menu" class="list-group">

                                    <!--Category name-->
                                    <li class="list-header">Lot Primaire</li>

                                    <!--Menu list item-->
                                    <li>
                                        <a href="index.php?controle=identification&action=afficherMurEmployeur">
                                            <i class="fa fa-dashboard"></i>
                                            <span class="menu-title">
												<strong>Mur</strong>
											</span>
                                        </a>
                                    </li>

                                    <li>
                                      <a href="#">
                                          <i class="fa fa-envelope"></i>
                                          <span class="menu-title">Annonce(s)</span>
                                          <i class="arrow"></i>
                                      </a>

                                      <!--Submenu-->
                                      <ul class="collapse">
                                           <li><a href="index.php?controle=creerAnnonce&action=creerAnnonce"><i class="fa fa-caret-right"></i> Créer une annonce </a></li>
                                           <li><a href="index.php?controle=lesCandidatures&action=lesCandidatures"><i class="fa fa-caret-right"></i> Les Candidatures</a></li>
                                      </ul>
                                    </li>

                                    <li>
                                      <a href="#">
                                          <i class="fa fa-envelope"></i>
                                          <span class="menu-title">Profil</span>
                                          <i class="arrow"></i>
                                      </a>

                                      <!--Submenu-->
                                      <ul class="collapse">
                                       					<?php 
                                                                            echo('<li><a href="index.php?controle=consulterProfil&action=afficheProfil&id='.$_SESSION['idUser'].'"><i class="fa fa-caret-right"></i> Consulter mon profil </a></li>');
                                                                          ?>
										<li><a href="index.php?controle=editerProfil&action=editerProfilEmployeur"><i class="fa fa-caret-right"></i> Editer mon profil </a></li>
                                      </ul>
                                    </li>


                                    <!--Menu list item-->

                                    <li class="list-divider"></li>

                                 
                                    <!--Category name-->
                                    <li class="list-header">Lot Falcultatif</li>
                                    <!--Menu list item-->
                                    <li>
                                        <a href="#">
                                            <i class="fa fa-envelope"></i>
                                            <span class="menu-title">Email</span>
                                            <i class="arrow"></i>
                                        </a>

                                        <!--Submenu-->
                                        <ul class="collapse">
                                            <li><a href="mail-inbox.html"><i class="fa fa-caret-right"></i> Inbox</a></li>
                                            <li><a href="mail-mailview.html"><i class="fa fa-caret-right"></i> View Message</a></li>
                                            <li><a href="mail-compose.html"><i class="fa fa-caret-right"></i> Compose Message</a></li>
                                        </ul>
                                    </li>

                                    <!--Menu list item-->
                                    <li>
                                        <a href="calendar.html">
                                            <i class="fa fa-calendar"></i>
                                            <span class="menu-title">
                        Calendar
                      </span>
                                        </a>
                                    </li>



                                    <!--Menu list item-->


                                    <!--Menu list item-->


                                    <!--Menu list item-->

                                    <!--Menu list item-->


                                    <!--Menu list item-->


                                    <li class="list-divider"></li>



                                    <!--Menu list item-->


                                    <!--Menu list item-->


                                    <!--Menu list item-->


                                </ul>
<center>
                                                        <a href="index.php?controle=identification&action=afficherMurEmployeur">
                                                          <button class="btn btn-default">Employeur</button>
</a>
														  <a href="index.php?controle=identification&action=afficherMurEmploye">
														  <button class="btn btn-default"> Employé </button>
														  </a>
														</br>
														</br>
														<p style="color: white; font-weight: bold">vous êtes dans le mur Employeur</p>

                                                          </form>
                                                            </center>


                                <!--Widget-->
                                <!--================================-->
                                <div class="mainnav-widget">

                                    <!-- Show the button on collapsed navigation -->
                                    <div class="show-small">
                                        <a href="#" data-toggle="menu-widget" data-target="#demo-wg-server">
                                            <i class="fa fa-desktop"></i>
                                        </a>
                                    </div>

                                    <!-- Hide the content on collapsed navigation -->

                                </div>
                                <!--================================-->
                                <!--End widget-->

                            </div>
                        </div>
                    </div>
                    <!--================================-->
                    <!--End menu-->

                </div>
            </nav>
        <!--===================================================-->
        <!--END MAIN NAVIGATION-->


        </div>


        <!-- FOOTER -->
        <!--===================================================-->
        <footer id="footer">

            <!-- Visible when footer positions are fixed -->
            <!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
            <div class="show-fixed pull-right">
                <ul class="footer-list list-inline">
                    <li>
                        <p class="text-sm">SEO Proggres</p>
                        <div class="progress progress-sm progress-light-base">
                            <div style="width: 80%" class="progress-bar progress-bar-danger"></div>
                        </div>
                    </li>

                    <li>
                        <p class="text-sm">Online Tutorial</p>
                        <div class="progress progress-sm progress-light-base">
                            <div style="width: 80%" class="progress-bar progress-bar-primary"></div>
                        </div>
                    </li>
                    <li>
                        <button class="btn btn-sm btn-dark btn-active-success">Checkout</button>
                    </li>
                </ul>
            </div>



            <!-- Visible when footer positions are static -->
            <!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
            <div class="hide-fixed pull-right pad-rgt">v1.0</div>



            <!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
            <!-- Remove the class name "show-fixed" and "hide-fixed" to make the content always appears. -->
            <!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->

            <p class="pad-lft">&#0169; 2017 Job'Apic</p>



        </footer>
        <!--===================================================-->
        <!-- END FOOTER -->


        <!-- SCROLL TOP BUTTON -->
        <!--===================================================-->
        <button id="scroll-top" class="btn"><i class="fa fa-chevron-up"></i></button>
        <!--===================================================-->



    </div>
    <!--===================================================-->
    <!-- END OF CONTAINER -->


    <!--JAVASCRIPT-->
    <!--=================================================-->

    <!--jQuery [ REQUIRED ]-->
    <script src="vue/js/jquery-2.1.1.min.js"></script>


    <!--BootstrapJS [ RECOMMENDED ]-->
    <script src="vue/js/bootstrap.min.js"></script>


    <!--Fast Click [ OPTIONAL ]-->
    <script src="vue/plugins/fast-click/fastclick.min.js"></script>


    <!--Jasmine Admin [ RECOMMENDED ]-->
    <script src="vue/js/scripts.js"></script>


    <!--Switchery [ OPTIONAL ]-->
    <script src="vue/plugins/switchery/switchery.min.js"></script>

    <!--Jquery Steps [ OPTIONAL ]-->
    <script src="vue/plugins/parsley/parsley.min.js"></script>

    <!--Jquery Steps [ OPTIONAL ]-->
    <script src="vue/plugins/jquery-steps/jquery-steps.min.js"></script>

    <!--Bootstrap Select [ OPTIONAL ]-->
    <script src="vue/plugins/bootstrap-select/bootstrap-select.min.js"></script>

    <!--Bootstrap Wizard [ OPTIONAL ]-->
    <script src="vue/plugins/bootstrap-wizard/jquery.bootstrap.wizard.min.js"></script>

    <!--Masked Input [ OPTIONAL ]-->
    <script src="vue/plugins/masked-input/bootstrap-inputmask.min.js"></script>

    <!--Bootstrap Validator [ OPTIONAL ]-->
    <script src="plugins/bootstrap-validator/bootstrapValidator.min.js"></script>

    <!--Form Wizard [ SAMPLE ]-->
    <script src="vue/js/demo/wizard.js"></script>

    <!--Demo script [ DEMONSTRATION ]-->
    <script src="vue/js/demo/jasmine.js"></script>

    <!--Form Wizard [ SAMPLE ]-->
    <script src="vue/js/demo/form-wizard.js"></script>


</body>
</html>
