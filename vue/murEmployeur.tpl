<!DOCTYPE html>
<html lang="en">

<head>
    <meta http-equiv="content-type" content="text/html;charset=UTF-8" />
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title> Page d'Accueil | Job'Apic - Enfin un job à pic.</title>

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

    <!--Bootstrap Datepicker [ OPTIONAL ]-->
    <link href="vue/plugins/bootstrap-datepicker/bootstrap-datepicker.css" rel="stylesheet">

    <!--Full Calendar [ OPTIONAL ]-->
    <link href="vue/plugins/fullcalendar/fullcalendar.css" rel="stylesheet">


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

    <link rel="stylesheet" href="vue/css/style1.css">


    <!--SCRIPT-->
    <!--=================================================-->

    <!--Page Load Progress Bar [ OPTIONAL ]-->
    <link href="vue/plugins/pace/pace.min.css" rel="stylesheet">
    <script src="vue/plugins/pace/pace.min.js"></script>
</head>

<body>


    <!-- Copyright � 2004. Spidersoft Ltd -->
    <style>
        A.applink:hover {border: 2px dotted #DCE6F4;padding:2px;background-color:#ffff00;color:green;text-decoration:none}
        A.applink       {border: 2px dotted #DCE6F4;padding:2px;color:#2F5BFF;background:transparent;text-decoration:none}
        A.info          {color:#2F5BFF;background:transparent;text-decoration:none}
        A.info:hover    {color:green;background:transparent;text-decoration:underline}
    </style>

    <style>
.switch {
  position: relative;
  display: inline-block;
  width: 60px;
  height: 34px;
}

.switch input {display:none;}

.slider {
  position: absolute;
  cursor: pointer;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  background-color: #ccc;
  -webkit-transition: .4s;
  transition: .4s;
}

.slider:before {
  position: absolute;
  content: "";
  height: 26px;
  width: 26px;
  left: 4px;
  bottom: 4px;
  background-color: white;
  -webkit-transition: .4s;
  transition: .4s;
}

input:checked + .slider {
  background-color: #2196F3;
}

input:focus + .slider {
  box-shadow: 0 0 1px #2196F3;
}

input:checked + .slider:before {
  -webkit-transform: translateX(26px);
  -ms-transform: translateX(26px);
  transform: translateX(26px);
}

/* Rounded sliders */
.slider.round {
  border-radius: 34px;
}

.slider.round:before {
  border-radius: 50%;
}
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
                    <a href="index.php?controle=identification&action=afficherMurEmployeur" class="navbar-brand">
                       <div class="brand-title"><img style="margin-left: -2.3em; margin-top: -0.3em" src="vue/Connexion/img/logo.png" height="80px"/>
                    </a>
                </div>
                <!--================================-->
                <!--End brand logo & name-->

                <!--Navbar Dropdown-->
                <!--================================-->
                <div class="navbar-content clearfix">
                    <ul class="nav navbar-top-links pull-left">

                        <!--Navigation toogle button-->
                        <!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
                        <li class="tgl-menu-btn">
                            <a class="mainnav-toggle" href="#"> <i class="fa fa-navicon fa-lg"></i> </a>
                        </li>
                        <!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
                        <!--End Navigation toogle button-->

                        <!--Messages Dropdown-->
                        <!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
                        <li class="dropdown">
                            <a href="#" data-toggle="dropdown" class="dropdown-toggle"> <i class="fa fa-envelope fa-lg"></i> <span class="badge badge-header badge-warning">9</span> </a>

                            <!--Message dropdown menu-->
                            <div class="dropdown-menu dropdown-menu-md with-arrow">
                                <div class="pad-all bord-btm">
                                    <p class="text-lg text-muted text-thin mar-no">Vous avez 9 messages.</p>
                                </div>
                                <div class="nano scrollable">
                                    <div class="nano-content">
                                        <ul class="head-list">

                                            <!-- Dropdown list-->
                                            <li>
                                                <a href="#" class="media">
                                                    <div class="media-left"> <img src="img/av2.png" alt="Profile Picture" class="img-circle img-sm"> </div>
                                                    <div class="media-body">
                                                        <div class="text-nowrap">Andy vous a envoyé un message</div>
                                                        <small class="text-muted">15 minutes ago</small> </div>
                                                    </a>
                                                </li>

                                                <!-- Dropdown list-->
                                                <li>
                                                    <a href="#" class="media">
                                                        <div class="media-left"> <img src="img/av4.png" alt="Profile Picture" class="img-circle img-sm"> </div>
                                                        <div class="media-body">
                                                            <div class="text-nowrap">Lucy vous a envoyé un message</div>
                                                            <small class="text-muted">30 minutes ago</small> </div>
                                                        </a>
                                                    </li>

                                                    <!-- Dropdown list-->
                                                    <li>
                                                        <a href="#" class="media">
                                                            <div class="media-left"> <img src="img/av3.png" alt="Profile Picture" class="img-circle img-sm"> </div>
                                                            <div class="media-body">
                                                                <div class="text-nowrap">Jackson vous a envoyé un message</div>
                                                                <small class="text-muted">40 minutes ago</small> </div>
                                                            </a>
                                                        </li>

                                                        <!-- Dropdown list-->
                                                        <li>
                                                            <a href="#" class="media">
                                                                <div class="media-left"> <img src="img/av6.png" alt="Profile Picture" class="img-circle img-sm"> </div>
                                                                <div class="media-body">
                                                                    <div class="text-nowrap">Donna vous a envoyé un message</div>
                                                                    <small class="text-muted">5 hours ago</small> </div>
                                                                </a>
                                                            </li>

                                                            <!-- Dropdown list-->
                                                            <li>
                                                                <a href="#" class="media">
                                                                    <div class="media-left"> <img src="img/av4.png" alt="Profile Picture" class="img-circle img-sm"> </div>
                                                                    <div class="media-body">
                                                                        <div class="text-nowrap">Lucy vous a envoyé un message</div>
                                                                        <small class="text-muted">Yesterday</small> </div>
                                                                    </a>
                                                                </li>

                                                                <!-- Dropdown list-->
                                                                <li>
                                                                    <a href="#" class="media">
                                                                        <div class="media-left"> <img src="img/av3.png" alt="Profile Picture" class="img-circle img-sm"> </div>
                                                                        <div class="media-body">
                                                                            <div class="text-nowrap">Jackson vous a envoyé un message</div>
                                                                            <small class="text-muted">Yesterday</small> </div>
                                                                        </a>
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                        </div>

                                                        <!--Dropdown footer-->
                                                        <div class="pad-all bord-top">
                                                            <a href="#" class="btn-link text-dark box-block"> <i class="fa fa-angle-right fa-lg pull-right"></i>Montrer tous les messages </a>
                                                        </div>
                                                    </div>
                                                </li>
                                                <!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
                                                <!--End message dropdown-->

                                                <!--Notification dropdown-->
                                                <!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
                                                <li class="dropdown">
                                                    <a href="#" data-toggle="dropdown" class="dropdown-toggle"> <i class="fa fa-bell fa-lg"></i> <span class="badge badge-header badge-danger">5</span> </a>

                                                    <!--Notification dropdown menu-->
                                                    <div class="dropdown-menu dropdown-menu-md with-arrow">
                                                        <div class="pad-all bord-btm">
                                                            <p class="text-lg text-muted text-thin mar-no">Vous avez 5 notifications.</p>
                                                        </div>
                                                        <div class="nano scrollable">
                                                            <div class="nano-content">
                                                                <ul class="head-list">

                                                                    <!-- Dropdown list-->
                                                                    <li>
                                                                        <a href="#" class="media">
                                                                            <div class="media-left"> <span class="icon-wrap icon-circle bg-primary"> <i class="fa fa-comment fa-lg"></i> </span> </div>
                                                                            <div class="media-body">
                                                                                <div class="text-nowrap">New comments waiting approval</div>
                                                                                <small class="text-muted">15 minutes ago</small> </div>
                                                                            </a>
                                                                        </li>

                                                                        <!-- Dropdown list-->
                                                                        <li>
                                                                            <a href="#" class="media"> <span class="badge badge-success pull-right">90%</span>
                                                                                <div class="media-left"> <span class="icon-wrap icon-circle bg-danger"> <i class="fa fa-hdd-o fa-lg"></i> </span> </div>
                                                                                <div class="media-body">
                                                                                    <div class="text-nowrap">HDD is full</div>
                                                                                    <small class="text-muted">50 minutes ago</small> </div>
                                                                                </a>
                                                                            </li>

                                                                            <!-- Dropdown list-->
                                                                            <li>
                                                                                <a href="#" class="media">
                                                                                    <div class="media-left"> <span class="icon-wrap icon-circle bg-info"> <i class="fa fa-file-word-o fa-lg"></i> </span> </div>
                                                                                    <div class="media-body">
                                                                                        <div class="text-nowrap">Write a news article</div>
                                                                                        <small class="text-muted">Last Update 8 hours ago</small> </div>
                                                                                    </a>
                                                                                </li>

                                                                                <!-- Dropdown list-->
                                                                                <li>
                                                                                    <a href="#" class="media"> <span class="label label-danger pull-right">New</span>
                                                                                        <div class="media-left"> <span class="icon-wrap icon-circle bg-purple"> <i class="fa fa-comment fa-lg"></i> </span> </div>
                                                                                        <div class="media-body">
                                                                                            <div class="text-nowrap">Comment Sorting</div>
                                                                                            <small class="text-muted">Last Update 8 hours ago</small> </div>
                                                                                        </a>
                                                                                    </li>

                                                                                    <!-- Dropdown list-->
                                                                                    <li>
                                                                                        <a href="#" class="media">
                                                                                            <div class="media-left"> <span class="icon-wrap icon-circle bg-success"> <i class="fa fa-user fa-lg"></i> </span> </div>
                                                                                            <div class="media-body">
                                                                                                <div class="text-nowrap">New User Registered</div>
                                                                                                <small class="text-muted">4 minutes ago</small> </div>
                                                                                            </a>
                                                                                        </li>
                                                                                    </ul>
                                                                                </div>
                                                                            </div>

                                                                            <!--Dropdown footer-->
                                                                            <div class="pad-all bord-top">
                                                                                <a href="#" class="btn-link text-dark box-block"> <i class="fa fa-angle-right fa-lg pull-right"></i>Show All Notifications </a>
                                                                            </div>
                                                                        </div>
                                                                    </li>
                                                                    <!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
                                                                    <!--End notifications dropdown-->


                                                                </ul>
                                                                <ul class="nav navbar-top-links pull-right">

                                                                    <!--Language selector-->
                                                                    <!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
                                                                    <li class="dropdown">
                                                                        <a id="demo-lang-switch" class="lang-selector dropdown-toggle" href="#" data-toggle="dropdown"> <span class="lang-selected"> <img class="lang-flag" src="vue/img/flags/france.png" alt="Francais"> <span class="lang-id">FR</span> <span class="lang-name">Francais</span> </span>
                                                                        </a>

                                                                        <!--Language selector menu-->
                                                                        <ul class="head-list dropdown-menu with-arrow">

                                                                            <li>
                                                                                <!--France-->
                                                                                <a href="#"> <img class="lang-flag" src="vue/img/flags/france.png" alt="France"> <span class="lang-id">FR</span> <span class="lang-name">Fran&ccedil;ais</span> </a>
                                                                            </li>


                                                                        </ul>
                                                                    </li>
                                                                    <!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
                                                                    <!--End language selector-->

                                                                    <!--User dropdown-->
                                                                    <!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
                                                                    <li id="dropdown-user" class="dropdown">
                                                                        <a href="#" data-toggle="dropdown" class="dropdown-toggle text-right"> <span class="pull-right"> <img class="img-circle img-user media-object" src="vue/img/av1.png" alt="Profile Picture"> </span>
                                                                            <div class="username hidden-xs"> <?php echo $_SESSION['prenom'] . " " . $_SESSION['nom']; ?>  </div>
                                                                        </a>
                                                                        <div class="dropdown-menu dropdown-menu-right with-arrow">

                                                                            <!-- User dropdown menu -->
                                                                            <ul class="head-list">
                                                                                <li>
                                                                                    <a href="#"> <i class="fa fa-user fa-fw fa-lg"></i> Profil </a>
                                                                                </li>
                                                                                <li>
                                                                                    <a href="#"> <i class="fa fa-envelope fa-fw fa-lg"></i> Messagerie </a>
                                                                                </li>
                                                                                <li>
                                                                                    <a href="#">  <i class="fa fa-gear fa-fw fa-lg"></i> Paramètre </a>
                                                                                </li>
                                                                                <li>
                                                                                   <a href="index.php?controle=identification&action=deconnexion"> <i class="fa fa-sign-out fa-fw"></i> Déconnexion  </a>
                                                                                </li>
                                                                            </ul>
                                                                        </div>
                                                                    </li>
                                                                    <!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
                                                                    <!--End user dropdown-->

                                                                    <!--Navigation toogle button-->
                                                                    <!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
                                                                    <li class="tgl-menu-btn">
                                                                        <a id="demo-toggle-aside" class="shortcut-grid" href="#"> <i class="fa fa-dedent"></i> </a>
                                                                    </li>
                                                                    <!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
                                                                    <!--End Navigation toogle button-->

                                                                </ul>
                                                            </div>
                                                            <!--================================-->
                                                            <!--End Navbar Dropdown-->

                                                        </div>
                                                    </header>
                                                    <!--===================================================-->
                                                    <!--END NAVBAR-->

                                                    <div class="boxed">

                                                        <!--CONTENT CONTAINER-->
                                                        <!--===================================================-->
                                                        <section id="content-container">
                                                            <header class="pageheader">
                                                                <h3><i class="fa fa-home"></i> Mur </h3>
                                                                <div class="breadcrumb-wrapper"> <span class="label">Vous êtes ici:</span>
                                                                    <ol class="breadcrumb">
                                                                        <li> <a href="#"> Home </a> </li>
                                                                        <li class="active"> Mur </li>
                                                                    </ol>
                                                                </div>
                                                            </header>



                                                            <!--Page content-->
                                                            <!--===================================================-->
                                                            <section id="page-content">



                                                                <div class="row">
                                                                    <div class="col-md-4 col-lg-3">

                                                                    </div>
                                                                    <!-- CARTE -->
                                                                    <div id="map-canvas"></div>

                                                                    <div class="col-md-8-2 col-lg-9-4" id="annonce">
                                                                     <div class="panel">
                                                                        <h3 class="panel-title">Listes</h3>
                                                                        <div id="liste">
                                                                        </br>
                                                                        <h2> Bienvenue sur l'espace employeur !</h3>
                                                                    </br>
                                                                    <a class = "btnRet" href ="index.php?controle=consulterAnnonce&action=afficherMesAnnonces"> Plus d'offres... </a>
                                                                    </div>
                                                                    </div>
                                                                    </div>

                                                                    <div class="col-md-8-1 col-lg-9-1" id="calendrier">
                                                                        <div class="panel">
                                                                            <div class="panel-heading">
                                                                                <h3 class="panel-title">Calendar</h3>
                                                                            </div>
                                                                            <div class="panel-body">

                                                                                <!-- Calendar placeholder-->
                                                                                <!-- ============================================ -->
                                                                                <div id='demo-calendar'></div>
                                                                                <!-- ============================================ -->

                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-md-8-2 col-lg-9-2" id="icones">
                                                                        <div class="panel">
                                                                            <div class="panel-heading">
                                                                                <h3 class="panel-title">Icones</h3>
                                                                            </div>
                                                                            <div class="panel-body">
                                                                                                                                                            <div class="container">



                                                                                                                                                            <div class="block x-2 y-2 block-1"></div>
                                                                                                                                                            <div class="block x-2 y-2 block-1"></div>
                                                                                                                                                            <div class="block x-2 y-2 block-1"></div>
                                                                                                                                                            <div class="block x-2 y-2 block-1"></div>

                                                                                                                                                            <div class="block x-2 y-2 block-1"></div>
                                                                                                                                                            <div class="block x-2 y-2 block-1"></div>
                                                                                                                                                            <div class="block x-2 y-2 block-1"></div>
                                                                                                                                                            <div class="block x-2 y-2 block-1"></div>

                                                                                                                                                            <div class="block x-2 y-2 block-1"></div>
                                                                                                                                                            <div class="block x-2 y-2 block-1"></div>
                                                                                                                                                            <div class="block x-2 y-2 block-1"></div>
                                                                                                                                                            <div class="block x-2 y-2 block-1"></div>

                                                                                                                                                            <div class="block x-2 y-2 block-1"></div>
                                                                                                                                                            <div class="block x-2 y-2 block-1"></div>
                                                                                                                                                            <div class="block x-2 y-2 block-1"></div>
                                                                                                                                                            <div class="block x-2 y-2 block-1"></div>

                                                                                                                                                          </div>

                                                                                                                                                        </div>
                                                                        </div>
                                                                    </div>

                                                                    <div class="col-md-8-3 col-lg-9-3">
                                                                        <div class="panel">
                                                                            <div class="panel-heading">
                                                                                <h3 class="panel-title">Tuto</h3>
                                                                            </div>
                                                                            <div class="panel-body">

                                                                                <!-- Calendar placeholder-->
                                                                                <!-- ============================================ -->
                                                                                <div id='demo-calendar'></div>
                                                                                <!-- ============================================ -->

                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-md-8-3 col-lg-9-3">
                                                                        <div class="panel">
                                                                            <div class="panel-heading, panel-heading-1">
                                                                                <h3 class="panel-title">Faq</h3>
                                                                            </div>
                                                                            <div class="panel-body">

                                                                                <!-- Calendar placeholder-->
                                                                                <!-- ============================================ -->
                                                                                <div id='demo-calendar'></div>
                                                                                <!-- ============================================ -->

                                                                            </div>
                                                                        </div>
                                                                    </div>


                                                                    </br>

                                                </section>
                                                <!--===================================================-->
                                                <!--End page content-->

                                            </section>
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
                                                                    <li class="list-header">Lot Principal</li>

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
																		  <li><a href="index.php?controle=lesCandidatures&action=lesCandidatures"><i class="fa fa-caret-right"></i> Les candidatures</a></li>
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
                                                                            echo('<li><a href="index.php?controle=consulterProfil&action=afficheProfilEmployeur&id='.$_SESSION['idUser'].'"><i class="fa fa-caret-right"></i> Consulter mon profil </a></li>');
                                                                          ?>
                                                                          <li><a href="index.php?controle=editerProfil&action=editerProfilEmployeur"><i class="fa fa-caret-right"></i> Editer mon profil </a></li>


                                                                           <!--<li><a href="mail-mailview.html"><i class="fa fa-caret-right"></i> Modifier paramètres </a></li>-->
                                                                    </ul>
                                                                  </li>


                                                                  <!--Menu list item

                                                                  <li class="list-divider"></li>


                                                                  <!--Category name-->

                                                                  <!--Category name
                                                                  <li class="list-header">Lot Secondaire</li>-->
                                                                  <!--Menu list item-->

                                                                  <!--Category name
                                                                  <li class="list-header">Lot Tertiaire</li>-->
                                                                  <!--Menu list item
                                                                  <li>
                                                                      <a href="#">
                                                                          <i class="fa fa-envelope"></i>
                                                                          <span class="menu-title">Profil</span>
                                                                          <i class="arrow"></i>
                                                                      </a>

                                                                      <!--Submenu

                                                                      <ul class="collapse">
                                                                          <li><a href="mail-inbox.html"><i class="fa fa-caret-right"></i> Mes annonces </a></li>
                                                                          <li><a href="mail-compose.html"><i class="fa fa-caret-right"></i> Mes candidatures </a></li>
                                                                          <li><a href="mail-mailview.html"><i class="fa fa-caret-right"></i> Consulter les annonces </a></li>


                                                                      </ul>
                                                                  </li>-->
                                                                  <!--Category name-->
                                                                  <li class="list-header">Lot Falcultatif</li>
                                                                  <!--Menu list item-->
                                                                  <li>
                                                                    <a href="#">
                                                                        <i class="fa fa-envelope"></i>
                                                                        <span class="menu-title">Messagerie</span>
                                                                        <i class="arrow"></i>
                                                                    </a>

                                                                    <!--Submenu-->
                                                                    <ul class="collapse">
                                                                        <li><a href="index.php?controle=composerMessage&action=afficherMessagesEmployeur"><i class="fa fa-caret-right"></i>Mes Messages</a></li>
                                                                        <li><a href="index.php?controle=composerMessage&action=creerMessageEmployeur"><i class="fa fa-caret-right"></i> Composer un Message</a></li>
                                                                    </ul>
                                                                </li>

                                                                <!--Menu list item-->
                                                                <li>
                                                                    <a href="calendar.html">
                                                                        <i class="fa fa-calendar"></i>
                                                                        <span class="menu-title">
                                                                            Réseaux sociaux
                                                                        </span>
                                                                    </a>
                                                                </li>

    <li class="list-header">Espaces :</li>
                                                                <li>
                                                                    <a href="index.php?controle=identification&action=afficherMurEmployeur">
                                                                        <i class="fa fa-user-circle" aria-hidden="true"></i>
                                                                        <span class="menu-title">
                                                                            Employeur
                                                                        </span>
                                                                        &nbsp;
                                                                        <i class="fa fa-user-circle" aria-hidden="true"></i>
                                                                    </a>
                                                                </li>

                                                                <li>
                                                                    <a href="index.php?controle=identification&action=afficherMurEmploye">
                                                                        <i class="fa fa-user-circle-o" aria-hidden="true"></i>
                                                                        <span class="menu-title">
                                                                            Employé(e)
                                                                        </span>
                                                                        &nbsp;
                                                                          <i class="fa fa-user-circle-o" aria-hidden="true"> </i>
                                                                    </a>
                                                                </li>

                                                                <li class="list-divider"></li>



                                                                <!--Menu list item-->


                                                                <!--Menu list item-->


                                                                <!--Menu list item-->


                                                            </ul>
<center>


														</br>
														</br>
														<p style="color: white; font-weight: bold">Vous êtes sur le mur Employeur</p>

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


                                        <!--ASIDE-->
                                        <!--===================================================-->
                                        <aside id="aside-container">
                                            <div id="aside">
                                                <div class="nano">
                                                    <div class="nano-content">

                                                        <!--Nav tabs-->
                                                        <!--================================-->
                                                        <ul class="nav nav-tabs nav-justified">
                                                            <li class="active">
                                                                <a href="#demo-asd-tab-1" data-toggle="tab"> <i class="fa fa-comments"></i> </a>
                                                            </li>
                                                            <li>
                                                                <a href="#demo-asd-tab-3" data-toggle="tab"> <i class="fa fa-wrench"></i> </a>
                                                            </li>
                                                        </ul>
                                                        <!--================================-->
                                                        <!--End nav tabs-->



<!--Second tab (Settings)-->
<!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
<div class="tab-pane fade" id="demo-asd-tab-3">
    <ul class="list-group bg-trans">
        <li class="list-header">
           <h4 class="text-thin">Parametre de compte</h4>
       </li>
       <li class="list-group-item">
           <div class="pull-right">
              <input class="demo-switch" type="checkbox" checked>
          </div>
          <p>Montrer mon statut personnel</p>
          <small class="text-muted">Lorem ipsum dolor sit amet, consectetuer adipiscing elit.</small>
      </li>
      <li class="list-group-item">
       <div class="pull-right">
          <input class="demo-switch" type="checkbox" checked>
      </div>
      <p>Show offline contact</p>
      <small class="text-muted">Lorem ipsum dolor sit amet, consectetuer adipiscing elit.</small>
  </li>
  <li class="list-group-item">
   <div class="pull-right">
      <input class="demo-switch" type="checkbox">
  </div>
  <p>Invisible mode </p>
  <small class="text-muted">Lorem ipsum dolor sit amet, consectetuer adipiscing elit.</small>
</li>
</ul>
<hr>
<ul class="list-group bg-trans">
    <li class="list-header">
        <h4 class="text-thin">Public Settings</h4>
    </li>
    <li class="list-group-item">
        <div class="pull-right">
            <input class="demo-switch" type="checkbox" checked>
        </div> Online status
    </li>
    <li class="list-group-item">
        <div class="pull-right">
            <input class="demo-switch" type="checkbox">
        </div>
        Show offline contact
    </li>
    <li class="list-group-item">
        <div class="pull-right">
            <input class="demo-switch" type="checkbox" checked>
        </div>
        Show my device icon
    </li>
</ul>
<hr>
<h4 class="pad-hor text-thin">Task Progress</h4>
<div class="pad-all">
    <p>Upgrade Progress</p>
    <div class="progress progress-sm">
        <div class="progress-bar progress-bar-success" style="width: 15%;"><span class="sr-only">15%</span></div>
    </div>
    <small class="text-muted">15% Completed</small>
</div>
<div class="pad-hor">
    <p>Database</p>
    <div class="progress progress-sm">
        <div class="progress-bar progress-bar-danger" style="width: 75%;"><span class="sr-only">75%</span></div>
    </div>
    <small class="text-muted">17/23 Database</small>
</div>
</div>
<!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
<!--Second tab (Settings)-->

</div>
<!-- Tabs Content End -->
<!--================================-->
</div>
</div>
</div>
</aside>
<!--===================================================-->
<!--END ASIDE-->

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
                <button class="btn btn-sm btn-dark btn-active-success">
                    Checkout
                </button>
            </li>
        </ul>
    </div>

    <!-- Visible when footer positions are static -->
    <!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
    <div class="hide-fixed pull-right pad-rgt">Currently v2.2</div>

    <!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
    <!-- Remove the class name "show-fixed" and "hide-fixed" to make the content always appears. -->
    <!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->

    <p class="pad-lft">&#0169; 2015 - Job'Apic</p>
</footer>
<!--===================================================-->
<!-- END FOOTER -->

<!-- SCROLL TOP BUTTON -->
<!--===================================================-->
<button id="scroll-top" class="btn">
    <i class="fa fa-chevron-up"></i>
</button>
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

<!--Switchery [ OPTIONAL ]-->
<script src="vue/plugins/jquery-count-to/jquery.count-to.js"></script>

<!--Easy Pie Chart [ OPTIONAL ]-->
<script src="vue/plugins/easy-pie-chart/jquery.easypiechart.min.js"></script>

<!--Flot Chart [ OPTIONAL ]-->
<script src="vue/plugins/flot-charts/jquery.flot.min.js"></script>
<script src="vue/plugins/flot-charts/jquery.flot.resize.min.js"></script>

<!--Flot Order Bars Chart [ OPTIONAL ]-->
<script src="vue/plugins/flot-charts/jquery.flot.orderBars.js"></script>
<script src="vue/plugins/flot-charts/jquery.flot.spline.js"></script>
<script src="vue/plugins/flot-charts/jquery.flot.time.js"></script>
<script src="vue/plugins/moment/moment.min.js"></script>
<script src="vue/plugins/moment-range/moment-range.js"></script>
<script src="vue/plugins/flot-charts/jquery.flot.tooltip.min.js"></script>

<!--Morris.js [ OPTIONAL ]-->
<script src="vue/plugins/jquery-ricksaw-chart/js/d3.v2.js"></script>
<script src="vue/plugins/jquery-ricksaw-chart/js/rickshaw.min.js"></script>


<!--Bootstrap Select [ OPTIONAL ]-->
<script src="vue/plugins/bootstrap-select/bootstrap-select.min.js"></script>

<!--Bootstrap Datepicker [ OPTIONAL ]-->
<script src="vue/plugins/bootstrap-datepicker/bootstrap-datepicker.js"></script>


<!--Demo script [ DEMONSTRATION ]-->
<script src="vue/js/demo/jasmine.js"></script>

<!--Demo script [ DEMONSTRATION ]-->
<script src="vue/js/demo/homepage-2.js"></script>

<!--jQuery [ REQUIRED ]-->
<script src="vue/js/jquery-2.1.1.min.js"></script>
<!-- Enfaite si je l'enleve j'ai plus de calendrier mais j'ai le menu des connectés -->

    <!--BootstrapJS [ RECOMMENDED ]
    <script src="js/bootstrap.min.js"></script>
-->

<!--Fast Click [ OPTIONAL ]-->
<script src="vue/plugins/fast-click/fastclick.min.js"></script>


    <!--Jasmine Admin [ RECOMMENDED ]
    <script src="js/scripts.js"></script>
-->


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
<!--Full Calendar [ OPTIONAL ]-->
<script src="vue/plugins/fullcalendar/lib/moment.min.js"></script>
<script src="vue/plugins/fullcalendar/lib/jquery-ui.custom.min.js"></script>
<script src="vue/plugins/fullcalendar/fullcalendar.min.js"></script>

<!--Bootstrap Validator [ OPTIONAL ]-->
<script src="vue/plugins/bootstrap-validator/bootstrapValidator.min.js"></script>

<!--Form Wizard [ SAMPLE ]-->
<script src="vue/js/demo/wizard.js"></script>


<!--Full Calendar [ SAMPLE ]-->
<script src="vue/js/demo/fullcalendar.js"></script>

<!--Demo script [ DEMONSTRATION ]-->
<script src="vue/js/demo/jasmine.js"></script>

<!--Map [ DEMONSTRATION ]-->
<script src='https://maps.googleapis.com/maps/api/js?key=AIzaSyBXlGQcqGiGNQ3O_oQNyrXrFJRd5afXjfk&exp&sensor=false&libraries=places'></script>
<script src="vue/js/index.js"></script>


<!--Form Wizard [ SAMPLE ]-->
<script src="vue/js/demo/wizard.js"></script>


</body>
</html>
