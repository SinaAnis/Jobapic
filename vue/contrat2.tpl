<!DOCTYPE html>
<html lang="en">

<head>
    <meta http-equiv="content-type" content="text/html;charset=UTF-8" />
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Forms Wizard | Jasmine - Responsive admin template.</title>


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


<script type="text/javascript" src="http://code.jquery.com/jquery-1.5.1.min.js"></script>

<script type="text/javascript" src="http://ajax.microsoft.com/ajax/jquery.ui/1.8.10/jquery-ui.js"></script>

<link rel="Stylesheet" type="text/css" href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.9/themes/base/jquery-ui.css" />

<!--<script src="vue/js/index2.js"></script>

 <script type="text/javascript">
                var cache = {};
                $(document).ready(function()
                {
                $("#cp, #ville").autocomplete({
                    source: function (request, response)
                    {
                        //Si la réponse est dans le cache
                        if (('FR' + '-' + request.term) in cache)
                        {   alert(20);
                            response($.map(cache['FR' + '-' + request.term], function (item)
                            {

                                return {
                                    label: item.CodePostal + ", " + item.Ville,
                                    value: function ()
                                    {
                                        if ($(this).attr('id') == 'cp')
                                        {
                                            $('#ville').val(item.Ville);
                                            return item.CodePostal;
                                        }
                                        else
                                        {
                                            $('#cp').val(item.CodePostal);
                                            return item.Ville;
                                        }
                                    }
                                }
                            }));
                        }
                        //Sinon -> Requete Ajax
                        else
                        {
                            alert(10);
                            var objData = {};
                            if ($(this.element).attr('id') == 'cp')
                            {
                                objData = { codePostal: request.term, pays: 'FR', maxRows: 10 };
                            }
                            else
                            {
                                objData = { ville: request.term, pays: 'FR', maxRows: 10 };
                            }
                            $.ajax({
                                url: "../AutoCompletion.php",
                                dataType: "json",
                                data: objData,
                                type: 'POST',
                                success: function (data)
                                {alert(30);
                                    //Ajout de reponse dans le cache
                                    cache[('FR' + '-' + request.term)] = data;
                                    response($.map(data, function (item)
                                    {

                                        return {
                                            label: item.CodePostal + ", " + item.Ville,
                                            value: function ()
                                            {
                                                if ($(this).attr('id') == 'cp')
                                                {
                                                    $('#ville').val(item.Ville);
                                                    return item.CodePostal;
                                                }
                                                else
                                                {
                                                    $('#cp').val(item.CodePostal);
                                                    return item.Ville;
                                                }
                                            }
                                        }
                                    }));
                                }
                            });
                        }
                    },
                    minLength: 3,
                    delay: 600
                });
            });
        </script>-->
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
                    <a href="index.html" class="navbar-brand">
                        <i class="fa fa-cube brand-icon"></i>
                        <div class="brand-title">
                            <span class="brand-text">Job'Apic</span>
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
                    <h3><i class="fa fa-home"></i> Formulaire d'inscription </h3>

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
                                    <h3 class="panel-title"> Inscription </h3>
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
                                                    <p class="text-muted"> Entrez vos information générale </p>
                                                </div>
                                            </div>
                                            <form  action="./index.php?controle=composerMessage&action=afficherMessages" method="post">
                                            <div class="form-group">

                                                <div class="row">
                                                    <div class="col-md-6">

                                                        <input type="text" class="form-control"  data-parsley-group="information" data-parsley-required  name="email" value = <?php echo $_POST['email'];?>/>

                                                        <!-- CHANGER $POST prenom par $SESSION --></div>

                                                </div>
                                            </div>







                                        <div class="wizard-container">


                                            <div class="form-group">
                                                <div class="row">







                                          <input role="menuitem" type="submit" class="btn btn-primary" value="Finis">


                                        </div>
                                      </div>
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
