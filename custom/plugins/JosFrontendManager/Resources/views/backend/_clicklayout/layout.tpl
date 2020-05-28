<!DOCTYPE html>
<html dir="ltr" lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- Favicon icon -->
    <link rel="icon" type="image/png" sizes="16x16" href="{link file="backend/_clickresources/images/favicon.png"}">
    <title>ClickSwConnect Administration</title>
    <!-- Bootstrap -->
    <link href="{link file="backend/_clickresources/css/bootstrap/bootstrap.min.css"}" rel="stylesheet">
    <!-- Custom CSS -->
    <link rel="stylesheet" type="text/css" href="{link file="backend/_clickresources/extra-libs/multicheck/multicheck.css"}">
    <link href="{link file="backend/_clickresources/libs/datatables.net-bs4/css/dataTables.bootstrap4.css"}" rel="stylesheet">
    <link href="{link file="backend/_clickresources/js/flot/css/float-chart.css"}" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="{link file="backend/_clickresources/css/style.min.css"}" rel="stylesheet">

    <link href="{link file="backend/_clickresources/css/click.css"}" rel="stylesheet">
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    <style>

        .btn-primary {
            color: #fff;
            background-color: #2c3e51 ;
            border-color: #2c3e51;
        }
        .btn-primary:not(:disabled):not(.disabled).active, .btn-primary:not(:disabled):not(.disabled):active, .show>.btn-primary.dropdown-toggle {
            color: #fff;
            background-color: #2c3e51;
            border-color: #2c3e51;
        }

        .btn-primary:hover {
            color: #000;
            background-color: #F0C803;
            border-color: #F0C803;
        }

        .custom-radio .custom-control-input:checked~.custom-control-label:before {
            background-color: #F0C803;
        }

        .custom-checkbox .custom-control-input:checked~.custom-control-label:before {
            background-color: #F0C803;
        }

        .page-wrapper>.container-fluid {
            padding: 20px;
            min-height: calc(100vh - 65px);
        }

        .click-breadcrumb{
            color: #3E5569;
            font-weight: 400;
        }

        .page-breadcrumb {
            padding: 0 0 10px 0;
        }
        .breadcrumb-item, .breadcrumb-item a !important {
            color: #3E5569;
            font-weight: 400;
        }

        .breadcrumb-item.active, .breadcrumb-item.active a{
            color: #000000;
            font-weight: 500;
        }

        .breadcrumb-item:hover, .breadcrumb-item:hover a{
            color: #000000;
            font-weight: 400;
        }

        .sidebar-nav ul .sidebar-item .sidebar-link {
            padding: 5px 15px;
        }

        .sidebar-nav ul .sidebar-item.subitem {
            padding: 5px 0;
        }
        .sidebar-nav ul .sidebar-item .first-level .sidebar-item .sidebar-link.sublink {
            padding: 0px 15px;
        }

        .table td, .table th {
            padding: 3px !important;
        }
        .page-item.active .page-link {
            z-index: 1;
            color: #fff;
            background-color: #2c3e51;
            border-color: #2c3e51;
        }
        .sidebar-nav .has-arrow:after {
            position: absolute;
            content: '';
            width: 7px;
            height: 7px;
            border-width: 1px 0 0 1px;
            border-style: solid;
            border-color: #fff;
            margin-left: 10px;
            -webkit-transform: rotate(135deg) translate(0, -50%);
            -ms-transform: rotate(135deg) translate(0, -50%);
            -o-transform: rotate(135deg) translate(0, -50%);
            transform: rotate(135deg) translate(0, -50%);
            -webkit-transform-origin: top;
            -ms-transform-origin: top;
            -o-transform-origin: top;
            transform-origin: top;
            top: 17px;
            right: 15px;
            -webkit-transition: all .3s ease-out;
            -o-transition: all .3s ease-out;
            transition: all .3s ease-out;
        }
        .click-opa{
            opacity: 0.5;
        }

        .page-link {
            position: relative;
            display: block;
            padding: 0.5rem 0.75rem;
            margin-left: -1px;
            line-height: 1.25;
            color: #2c3e51;
            background-color: #fff;
            border: 1px solid #2c3e51;
        }
        .page-link:hover {
            z-index: 2;
            color: #000;
            text-decoration: none;
            background-color: #e9ecef;
            border-color: #2c3e51;
        }

        .headeruser{
            padding: 0px 15px;
            font-size: 0.875rem;
            line-height: 64px;
            height: 64px;
            color: white;
        }
        .click-green{
            color: #006400;
        }
        .click-red{
            color: #B22222;
        }
        .click-yellow{
            color: #FFD700;
        }

        .click-blue{
            color: #008B8B;
        }


        td.details-control {
            background: red ;
            cursor: pointer;
        }
        tr.shown td.details-control {
            background: #006400 ;
        }

        .click-card-top{
            background: transparent;
            margin-bottom: 0px;
        }

        .trenn{
            display: block;
            padding: 0;
            margin: 5px 0;
            background: #ccc;
            height: 1px;
            max-height: 1px;
        }
        .center{
            text-align: center !important;
        }

        .table td .center, .table th .center{
            text-align: center !important;
        }


        thead{
            background: #2c3e51;
            color: white;
        }

        table.dataTable thead .sorting:before, table.dataTable thead .sorting_asc:before, table.dataTable thead .sorting_desc:before, table.dataTable thead .sorting_asc_disabled:before, table.dataTable thead .sorting_desc_disabled:before {
            right: 1em;
            content: "\2191";
            line-height: 0.5;
            color: white;
        }
        table.dataTable thead .sorting:after, table.dataTable thead .sorting_asc:after, table.dataTable thead .sorting_desc:after, table.dataTable thead .sorting_asc_disabled:after, table.dataTable thead .sorting_desc_disabled:after {
            display: none !important;
            right: 0.5em;
            content: "\2193";
            line-height: 0.5;
            color: white;
        }

        table.dataTable thead .sorting:before, table.dataTable thead .sorting:after, table.dataTable thead .sorting_asc:before, table.dataTable thead .sorting_asc:after, table.dataTable thead .sorting_desc:before, table.dataTable thead .sorting_desc:after, table.dataTable thead .sorting_asc_disabled:before, table.dataTable thead .sorting_asc_disabled:after, table.dataTable thead .sorting_desc_disabled:before, table.dataTable thead .sorting_desc_disabled:after {
            display: none !important;
            position: absolute;
            bottom: 0.9em;
            display: block;
            opacity: 0.8;
        }

        .topcont-cont{
            position: relative;
        }
        .topcount{
            display: inline-block;
            position: absolute;
            left: 20px;
            color: white;
            background: #B22222;
            top: 10px;
            width: 16px;
            border-radius: 100px;
            height: 17px;
            text-align: center;
            font-size: 12px;
            border: 1px solid white;
            padding: 0 0 0 0;
            line-height: 16px;
        }

        .topcontwarn-cont{
            position: relative;
        }
        .topcountwarn{
            display: inline-block;
            position: absolute;
            left: 20px;
            background: #FFD700;
            color: white;
            top: 10px;
            width: 16px;
            border-radius: 100px;
            height: 17px;
            text-align: center;
            font-size: 12px;
            border: 1px solid white;
            padding: 0 0 0 0;
            line-height: 16px;
        }

        .click-top-navicon{
            padding-top: 5px;
        }
        .click-sidebar-bottom{
            display: block;
            position: absolute;
            bottom: -22px;
            left: 12px;
            padding: 3px;
            text-align: center;
            color: #ccc;
            font-size: 9px;
        }
        .click-tabellen-btn{
            padding: 0 4px;
        }
        .click-tabellen-btn:hover{
            color: #F0C803;
        }



    </style>



</head>

<body>
<!-- ============================================================== -->
<!-- Preloader - style you can find in spinners.css -->
<!-- ============================================================== -->
<div class="preloader">
    <div class="lds-ripple">
        <div class="lds-pos"></div>
        <div class="lds-pos"></div>
    </div>
</div>
<!-- ============================================================== -->
<!-- Main wrapper - style you can find in pages.scss -->
<!-- ============================================================== -->
<div id="main-wrapper">
    <!-- ============================================================== -->
    <!-- Topbar header - style you can find in pages.scss -->
    <!-- ============================================================== -->
    <header class="topbar" data-navbarbg="skin5">
        <nav class="navbar top-navbar navbar-expand-md navbar-dark">
            <div class="navbar-header" data-logobg="skin5">
                <!-- This is for the sidebar toggle which is visible on mobile only -->
                <a class="nav-toggler waves-effect waves-light d-block d-md-none" href="javascript:void(0)"><i class="ti-menu ti-close"></i></a>
                <!-- ============================================================== -->
                <!-- Logo -->
                <!-- ============================================================== -->
                <a class="navbar-brand" href="index.html">
                    <!-- Logo icon -->
                    <b class="logo-icon p-l-10">
                        <!--You can put here icon as well // <i class="wi wi-sunset"></i> //-->
                        <!-- Dark Logo icon -->
                        <img src="{link file="backend/_clickresources/images/logo-icon.png"}" alt="homepage" class="light-logo click-icon-logo" />

                    </b>
                    <!--End Logo icon -->
                    <!-- Logo text -->
                    <span class="logo-text">
                             <!-- dark Logo text -->
                             <img src="{link file="backend/_clickresources/images/logo-text.png"}" alt="homepage" class="light-logo click-icon-logo" />

                        </span>

                </a>

                <!-- ============================================================== -->
                <!-- Toggle which is visible on mobile only -->
                <!-- ============================================================== -->
                <a class="topbartoggler d-block d-md-none waves-effect waves-light" href="javascript:void(0)" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><i class="ti-more"></i></a>
            </div>

            <!-- ============================================================== -->
            <div class="navbar-collapse collapse" id="navbarSupportedContent" data-navbarbg="skin5">
                <ul class="navbar-nav float-left mr-auto">
                    <li class="nav-item d-none d-md-block"><a class="nav-link sidebartoggler waves-effect waves-light" href="javascript:void(0)" data-sidebartype="mini-sidebar"><i class="font-24 mdi mdi-menu font-24"></i></a></li>
                    <!-- ============================================================== -->
                    <!-- create new -->
                    <!-- ============================================================== -->
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <span class="d-none d-md-block">Schnellzugriff <i class="fa fa-angle-down"></i></span>
                            <span class="d-block d-md-none"><i class="fa fa-plus"></i></span>
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href="#">Dashboard</a>
                            <a class="dropdown-item" href="#">Logfiles leeren</a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="#">aktueller Status</a>
                        </div>
                    </li>
                    <!-- ============================================================== -->
                    <!-- Search -->
                    <!-- ============================================================== -->
                    <li class="nav-item search-box"> <a class="nav-link waves-effect waves-dark" href="javascript:void(0)"><i class="font-24 mdi mdi-account-search"></i></a>
                        <form class="app-search position-absolute">
                            <input type="text" class="form-control" placeholder="Search &amp; enter"> <a class="srh-btn"><i class="ti-close"></i></a>
                        </form>
                    </li>
                    <li class="nav-item ">
                        <div class="headeruser"><i class="font-24 mdi mdi-account-check"></i> aktuell angemeldet:<span class="headeruseraktiv"> {$coreuserdata}</span></div>
                    </li>


                </ul>
                <!-- ============================================================== -->
                <!-- Right side toggle and nav items -->
                <!-- ============================================================== -->
                <ul class="navbar-nav float-right">
                    <li class="nav-item click-top-navicon">
                        <span class="topcont-cont">
                        <a class="nav-link" href=""  aria-haspopup="true" aria-expanded="false"> <i class="click-red mdi mdi-bell font-24"></i><span class="topcount">{$countfail.fehler}</span>
                        </a>
                        </span>
                    </li>
                    <li class="nav-item click-top-navicon">
                        <span class="topcont-cont">
                        <a class="nav-link" href=""  aria-haspopup="true" aria-expanded="false"> <i class="click-yellow mdi mdi-bell font-24"></i><span class="topcountwarn">{$countwarn.fehler}</span>
                        </a>
                        </span>
                    </li>

                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle waves-effect waves-dark" href="" id="2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="font-24 mdi mdi-help-circle-outline"></i>
                        </a>
                        <div class="dropdown-menu dropdown-menu-right mailbox animated bounceInDown" aria-labelledby="2">
                            <ul class="list-style-none">
                                <li>
                                    <div class="">
                                        <!-- Message -->
                                        <a href="javascript:void(0)" class="link border-top">
                                            <div class="d-flex no-block align-items-center p-10">
                                                <span class="btn btn-primary btn-circle"><i class="font24 fas fa-upload"></i></span>
                                                <div class="m-l-10">
                                                    <h5 class="m-b-0">Hilfe zur DSXML Upload</h5>
                                                    <span class="mail-desc">in Kürze verfügbar!</span>
                                                </div>
                                            </div>
                                        </a>
                                        <!-- Message -->
                                        <a href="javascript:void(0)" class="link border-top">
                                            <div class="d-flex no-block align-items-center p-10">
                                                <span class="btn btn-primary btn-circle"><i class="font24 fab fa-connectdevelop"></i></span>
                                                <div class="m-l-10">
                                                    <h5 class="m-b-0">Hilfe für ClickSwConnect</h5>
                                                    <span class="mail-desc">in Kürze verfügbar!</span>
                                                </div>
                                            </div>
                                        </a>
                                        <!-- Message -->
                                        <a href="javascript:void(0)" class="link border-top">
                                            <div class="d-flex no-block align-items-center p-10">
                                                <span class="btn btn-primary btn-circle"><i class="font24 fas fa-filter"></i></span>
                                                <div class="m-l-10">
                                                    <h5 class="m-b-0">Hilfe zum Click Filter</h5>
                                                    <span class="mail-desc">in Kürze verfügbar!</span>
                                                </div>
                                            </div>
                                        </a>
                                        <!-- Message -->
                                        <a href="javascript:void(0)" class="link border-top">
                                            <div class="d-flex no-block align-items-center p-10">
                                                <span class="btn btn-primary btn-circle"><i class="font24 fas fa-blind"></i></span>
                                                <div class="m-l-10">
                                                    <h5 class="m-b-0">Ansprechpartner bei Fehlermeldungen</h5>
                                                    <span class="mail-desc">in Kürze verfügbar!</span>
                                                </div>
                                            </div>
                                        </a>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </li>
                    <!-- ============================================================== -->
                    <!-- End Messages -->
                    <!-- ============================================================== -->

                    <!-- ============================================================== -->
                    <!-- User profile and search -->
                    <!-- ============================================================== -->
                    <li class="nav-item dropdown">

                    </li>
                    <!-- ============================================================== -->
                    <!-- User profile and search -->
                    <!-- ============================================================== -->
                </ul>
            </div>
        </nav>
    </header>
    <!-- ============================================================== -->
    <!-- End Topbar header -->
    <!-- ============================================================== -->
    <!-- ============================================================== -->
    <!-- Left Sidebar - style you can find in sidebar.scss  -->
    <!-- ============================================================== -->
    <aside class="left-sidebar" data-sidebarbg="skin5">
        <!-- Sidebar scroll-->
        <div class="scroll-sidebar">
            <!-- Sidebar navigation-->
            <nav class="sidebar-nav">
                <ul id="sidebarnav" class="p-t-30">

                    <li class="sidebar-item {if {controllerAction} === 'index'} active{/if} "><a class="sidebar-link waves-effect waves-dark sidebar-link" href="{url controller="ClickConnectBackend" action="index" __csrf_token=$csrfToken}" aria-expanded="false"><i class="mdi mdi-view-dashboard"></i><span class="hide-menu">Dashboard</span></a></li>
                    <!-- hersteller -->
                    <li class="sidebar-item{if {controllerAction} === 'supplier'} active{/if} "><a class="sidebar-link waves-effect waves-dark sidebar-link" href="{url controller="ClickConnectBackend" action="supplier" __csrf_token=$csrfToken}" aria-expanded="false"><i class="mdi mdi-shopping"></i><span class="hide-menu">Hersteller</span></a></li>
                    <!-- categorien -->
                    <li class="sidebar-item {if {controllerAction} === 'categories'} active{/if} "><a class="sidebar-link waves-effect waves-dark sidebar-link" href="{url controller="ClickConnectBackend" action="categories" __csrf_token=$csrfToken}" aria-expanded="false"><i class="mdi mdi-view-module"></i><span class="hide-menu">Kategorien</span></a></li>

                    <!-- artikel -->
                    <li class="sidebar-item"> <a class="sidebar-link has-arrow waves-effect waves-dark" href="#" aria-expanded="false"><i class="mdi mdi-view-carousel"></i><span class="hide-menu">Artikel </span></a>
                        <ul aria-expanded="false" class="collapse  first-level">
                            <li class="sidebar-item {if {controllerAction} === 'article'} active{/if} "><a href="{url controller="ClickConnectBackend" action="article" __csrf_token=$csrfToken}" class="sidebar-link sublink"><i class="mdi mdi-apps"></i><span class="hide-menu">Artikel Übersicht </span></a></li>
                            <li class="sidebar-item {if {controllerAction} === 'articleSort'} active{/if} "><a href="{url controller="ClickConnectBackend" action="articleSort" __csrf_token=$csrfToken}" class="sidebar-link sublink"><i class="mdi mdi-apps"></i><span class="hide-menu">Artikelsortierungen </span></a></li>
                            <li class="sidebar-item {if {controllerAction} === 'articleInstockrules'} active{/if} "><a href="{url controller="ClickConnectBackend" action="articleInstockrules" __csrf_token=$csrfToken}" class="sidebar-link sublink"><i class="mdi mdi-apps"></i><span class="hide-menu">Regel Verfügbarkeit </span></a></li>
                            <li class="sidebar-item {if {controllerAction} === 'articleShippingrules'} active{/if} "><a href="{url controller="ClickConnectBackend" action="articleShippingrules" __csrf_token=$csrfToken}" class="sidebar-link sublink"><i class="mdi mdi-apps"></i><span class="hide-menu">Regel Sperrgut </span></a></li>
                            <li class="sidebar-item {if {controllerAction} === 'articleArchive'} active{/if} "><a href="{url controller="ClickConnectBackend" action="articleArchive" __csrf_token=$csrfToken}" class="sidebar-link sublink"><i class="mdi mdi-apps"></i><span class="hide-menu">Regel Archivartikel </span></a></li>
                        </ul>
                    </li>

                    <!-- merkmale -->
                    <li class="sidebar-item"> <a class="sidebar-link has-arrow waves-effect waves-dark" href="#" aria-expanded="false"><i class="mdi mdi-flip-to-back"></i><span class="hide-menu">Merkmale </span></a>
                        <ul aria-expanded="false" class="collapse  first-level">
                            <li class="sidebar-item {if {controllerAction} === 'property'} active{/if}"><a href="{url controller="ClickConnectBackend" action="property" __csrf_token=$csrfToken}" class="sidebar-link sublink"><i class="mdi mdi-apps"></i><span class="hide-menu">Merkmal Übersicht </span></a></li>
                            <li class="sidebar-item {if {controllerAction} === 'property_groups'} active{/if}"><a href="{url controller="ClickConnectBackend" action="property_groups" __csrf_token=$csrfToken}" class="sidebar-link sublink"><i class="mdi mdi-apps"></i><span class="hide-menu">Merkmal Gruppierungen </span></a></li>
                            <li class="sidebar-item {if {controllerAction} === 'property_filter'} active{/if}"><a href="{url controller="ClickConnectBackend" action="property_filter" __csrf_token=$csrfToken}" class="sidebar-link sublink"><i class="mdi mdi-apps"></i><span class="hide-menu">Filter Merkmal Auswahl </span></a></li>
                            <li class="sidebar-item {if {controllerAction} === 'property_filtercategories'} active{/if}"><a href="{url controller="ClickConnectBackend" action="property_filtercategories" __csrf_token=$csrfToken}" class="sidebar-link sublink"><i class="mdi mdi-apps"></i><span class="hide-menu">Filter Kategoriezuweisungen </span></a></li>
                        </ul>
                    </li>

                    <!-- Crosselling -->


                    <!-- Orders -->
                    <li class="sidebar-item {if {controllerAction} === 'orders'} active{/if}"> <a class="sidebar-link waves-effect waves-dark sidebar-link" href="{url controller="ClickConnectBackend" action="orders" __csrf_token=$csrfToken}" aria-expanded="false"><i class="mdi mdi-cart"></i><span class="hide-menu">Orders </span></a></li>

                    <!-- Tools -->
                    <li class="sidebar-item"> <a class="sidebar-link has-arrow waves-effect waves-dark" href="#" aria-expanded="false"><i class="mdi mdi-developer-board"></i><span class="hide-menu">Tools/ Plugins </span></a>
                        <ul aria-expanded="false" class="collapse  first-level">
                            <li class="sidebar-item {if {controllerAction} === 'toolsCron'} active{/if}"><a href="{url controller="ClickConnectBackend" action="tools" __csrf_token=$csrfToken}" class="sidebar-link sublink"><i class="mdi mdi-apps"></i><span class="hide-menu">Cronjobs </span></a></li>
                            <li class="sidebar-item {if {controllerAction} === 'toolsIssues'} active{/if}"><a href="{url controller="ClickConnectBackend" action="toolsIssues" __csrf_token=$csrfToken}" class="sidebar-link sublink"><i class="mdi mdi-apps"></i><span class="hide-menu">Issues </span></a></li>
                            <li class="sidebar-item {if {controllerAction} === 'toolsTracking'} active{/if}"><a href="{url controller="ClickConnectBackend" action="toolsTracking" __csrf_token=$csrfToken}" class="sidebar-link sublink"><i class="mdi mdi-apps"></i><span class="hide-menu">Fehlertracking </span></a></li>
                        </ul>
                    </li>

                    <!-- Logfiles -->
                    <li class="sidebar-item"> <a class="sidebar-link has-arrow waves-effect waves-dark" href="#" aria-expanded="false" ><i class="mdi mdi-alert"></i><span class="hide-menu">Logfiles </span></a>
                        <ul aria-expanded="false" class="collapse  first-level">
                            <li class="sidebar-item"><a href="#" class="sidebar-link sublink"  data-toggle="modal" data-target="#delLogs" style="color:#FF4500"><i class="mdi mdi-apps"></i><span class="hide-menu">Alle Logfiles leeren </span></a></li>

                            <li class="sidebar-item {if {controllerAction} === 'logfiles'} active{/if}"><a href="{url controller="ClickConnectBackend" action="logfiles" __csrf_token=$csrfToken}" class="sidebar-link sublink"><i class="mdi mdi-apps"></i><span class="hide-menu"><b>Alle Logfiles</b> </span></a></li>
                            <li class="sidebar-item {if {controllerAction} === 'logfiles_supplier'} active{/if}"><a href="{url controller="ClickConnectBackend" action="logfiles_supplier" __csrf_token=$csrfToken}" class="sidebar-link sublink"><i class="mdi mdi-apps"></i><span class="hide-menu">Hersteller Actions </span></a></li>
                            <li class="sidebar-item {if {controllerAction} === 'logfiles_categories'} active{/if}"><a href="{url controller="ClickConnectBackend" action="logfiles_categories" __csrf_token=$csrfToken}" class="sidebar-link sublink"><i class="mdi mdi-apps"></i><span class="hide-menu">Kategorie Actions </span></a></li>
                            <li class="sidebar-item {if {controllerAction} === 'logfiles_articles'} active{/if}"><a href="{url controller="ClickConnectBackend" action="logfiles" __csrf_token=$csrfToken}" class="sidebar-link sublink"><i class="mdi mdi-apps"></i><span class="hide-menu">Artikel Actions </span></a></li>
                            <li class="sidebar-item {if {controllerAction} === 'logfiles_singlearticle'} active{/if}"><a href="{url controller="ClickConnectBackend" action="logfiles" __csrf_token=$csrfToken}" class="sidebar-link sublink"><i class="mdi mdi-apps"></i><span class="hide-menu">Einzelartikel Actions </span></a></li>
                            <li class="sidebar-item {if {controllerAction} === 'logfiles_variantarticle'} active{/if}"><a href="{url controller="ClickConnectBackend" action="logfiles" __csrf_token=$csrfToken}" class="sidebar-link sublink"><i class="mdi mdi-apps"></i><span class="hide-menu">Varianten Actions </span></a></li>
                            <li class="sidebar-item {if {controllerAction} === 'logfiles_media'} active{/if}"><a href="{url controller="ClickConnectBackend" action="logfiles" __csrf_token=$csrfToken}" class="sidebar-link sublink"><i class="mdi mdi-apps"></i><span class="hide-menu">Media Actions </span></a></li>
                            <li class="sidebar-item {if {controllerAction} === 'logfiles_properties'} active{/if}"><a href="{url controller="ClickConnectBackend" action="logfiles" __csrf_token=$csrfToken}" class="sidebar-link sublink"><i class="mdi mdi-apps"></i><span class="hide-menu">Merkmal Actions </span></a></li>
                            <li class="sidebar-item {if {controllerAction} === 'logfiles_xsell'} active{/if}"><a href="{url controller="ClickConnectBackend" action="logfiles" __csrf_token=$csrfToken}" class="sidebar-link sublink"><i class="mdi mdi-apps"></i><span class="hide-menu">Xsell Actions </span></a></li>
                            <li class="sidebar-item {if {controllerAction} === 'logfiles_orders'} active{/if}"><a href="{url controller="ClickConnectBackend" action="logfiles" __csrf_token=$csrfToken}" class="sidebar-link sublink"><i class="mdi mdi-apps"></i><span class="hide-menu">Orders Actions </span></a></li>
                            <li class="sidebar-item {if {controllerAction} === 'logfiles_filter'} active{/if}"><a href="{url controller="ClickConnectBackend" action="logfiles" __csrf_token=$csrfToken}" class="sidebar-link sublink"><i class="mdi mdi-apps"></i><span class="hide-menu">Filter Plugin </span></a></li>
                        </ul>
                    </li>

                    <!-- Einstellungen -->
                    <li class="sidebar-item {if {controllerAction} === 'system'} active{/if}"> <a class="sidebar-link has-arrow waves-effect waves-dark" href="system" aria-expanded="false"><i class="mdi mdi-settings"></i><span class="hide-menu">Einstellungen </span></a>
                        <ul aria-expanded="false" class="collapse  first-level">
                            <li class="sidebar-item {if {controllerAction} === 'systemConnect'} active{/if}"><a href="{url controller="ClickConnectBackend" action="systemConnect" __csrf_token=$csrfToken}" class="sidebar-link sublink"><i class="mdi mdi-apps"></i><span class="hide-menu">Einstellungen SwConnector </span></a></li>
                            <li class="sidebar-item {if {controllerAction} === 'systemMention'} active{/if}"><a href="{url controller="ClickConnectBackend" action="systemMention" __csrf_token=$csrfToken}" class="sidebar-link sublink"><i class="mdi mdi-apps"></i><span class="hide-menu">Einstellungen Mention Plugin </span></a></li>
                            <li class="sidebar-item {if {controllerAction} === 'systemFilter'} active{/if}"><a href="{url controller="ClickConnectBackend" action="systemFilter" __csrf_token=$csrfToken}" class="sidebar-link sublink"><i class="mdi mdi-apps"></i><span class="hide-menu">Einstellungen Filter Plugin </span></a></li>
                        </ul>
                    </li>

                </ul>
            </nav>
            <div class="click-sidebar-bottom">Plugin Version 3.0.0 | &copy 2019 clickconcepts (tn)</div>
            <!-- End Sidebar navigation -->
        </div>
        <!-- End Sidebar scroll-->
    </aside>
    <!-- ============================================================== -->
    <!-- End Left Sidebar - style you can find in sidebar.scss  -->
    <!-- ============================================================== -->
    <!-- ============================================================== -->
    <!-- Page wrapper  -->
    <!-- ============================================================== -->
    <div class="page-wrapper">



        <div class="container-fluid">
        {block name="content/main"}{/block}
        </div>
    </div>


    <!-- The Modal -->
    <div class="modal" id="delLogs">
        <div class="modal-dialog">
            <div class="modal-content">




                <form action='{url controller="{controllerName}" action="logfilesDelete"}' method="POST" class="form-horizontal">
                    <!-- Modal Header -->
                    <div class="modal-header">
                        <h4 class="modal-title">Logfiles leeren</h4>
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                    </div>

                    <!-- Modal body -->
                    <div class="modal-body">
                        Alle Logfiles unwiderruflich leeren.
                    </div>

                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Abbrechen</button>
                        <button type="submit" class="btn btn-danger">Ja, jetzt löschen!</button>
                    </div>
                </form>

            </div>
        </div>
    </div>
    <!-- ============================================================== -->
    <!-- End Page wrapper  -->
    <!-- ============================================================== -->
</div>
<!-- ============================================================== -->
<!-- End Wrapper -->
<!-- ============================================================== -->
<!-- ============================================================== -->
<!-- All Jquery -->
<!-- ============================================================== -->


<script type="text/javascript" src="{link file="backend/_clickresources/libs/jquery/dist/jquery.min.js"}"></script>
<!-- Bootstrap tether Core JavaScript -->
<script type="text/javascript" src="{link file="backend/_clickresources/libs/popper.js/dist/umd/popper.min.js"}"></script>
<script type="text/javascript" src="{link file="backend/_clickresources/libs/bootstrap/dist/js/bootstrap.min.js"}"></script>
<!-- slimscrollbar scrollbar JavaScript -->
<script type="text/javascript" src="{link file="backend/_clickresources/libs/perfect-scrollbar/dist/perfect-scrollbar.jquery.min.js"}"></script>
<script type="text/javascript" src="{link file="backend/_clickresources/extra-libs/sparkline/sparkline.js"}"></script>
<!--Wave Effects -->
<script type="text/javascript" src="{link file="backend/_clickresources/js/waves.js"}"></script>
<!--Menu sidebar -->
<script type="text/javascript" src="{link file="backend/_clickresources/js/sidebarmenu.js"}"></script>
<!--Custom JavaScript -->
<script type="text/javascript" src="{link file="backend/_clickresources/js/custom.min.js"}"></script>
<!-- this page js -->
<script type="text/javascript" src="{link file="backend/_clickresources/extra-libs/multicheck/datatable-checkbox-init.js"}"></script>
<script type="text/javascript" src="{link file="backend/_clickresources/extra-libs/multicheck/jquery.multicheck.js"}"></script>
<script type="text/javascript" src="{link file="backend/_clickresources/extra-libs/DataTables/datatables.min.js"}"></script>


{*
<script src="{link file="backend/_clickresources/js/flot/excanvas.js"}"></script>
<script src="{link file="backend/_clickresources/js/flot/jquery.flot.js"}"></script>
<script src="{link file="backend/_clickresources/js/flot/jquery.flot.pie.js"}"></script>
<script src="{link file="backend/_clickresources/js/flot/jquery.flot.time.js"}"></script>
<script src="{link file="backend/_clickresources/js/flot/jquery.flot.stack.js"}"></script>
<script src="{link file="backend/_clickresources/js/flot/jquery.flot.crosshair.js"}"></script>
<script src="{link file="backend/_clickresources/js/flot.tooltip/js/jquery.flot.tooltip.min.js"}"></script>
<script src="{link file="backend/_clickresources/js/pages/chart/chart-page-init.js"}"></script>
*}
{*
<script src="{link file="backend/_clickresources/js/multicheck/datatable-checkbox-init.js"}"></script>
<script src="{link file="backend/_clickresources/js/multicheck/jquery.multicheck.js"}"></script>
<script src=".{link file="backend/_clickresources/js/DataTables/datatables.min.js"}"></script>
*}


<script type="text/javascript">
    $(document).ready(function() {
        $('#suppliertable').DataTable( {
            "language": {
                "sEmptyTable": "Keine Daten in der Tabelle vorhanden",
                "sInfo": "_START_ bis _END_ von _TOTAL_ Einträgen",
                "sInfoEmpty": "Keine Daten vorhanden",
                "sInfoFiltered": "(gefiltert von _MAX_ Einträgen)",
                "sInfoPostFix": "",
                "sInfoThousands": ".",
                "sLengthMenu": "_MENU_ Einträge anzeigen",
                "sLoadingRecords": "Wird geladen ..",
                "sProcessing": "Bitte warten ..",
                "sSearch": "Suchen",
                "sZeroRecords": "Keine Einträge vorhanden",
                "paginate": {
                    "sFirst":       "Erste",
                    "sPrevious":    "Zurück",
                    "sNext":        "Nächste",
                    "sLast":        "Letzte"
                },
                "aria": {
                    "sSortAscending":  ": aktivieren, um Spalte aufsteigend zu sortieren",
                    "sSortDescending": ": aktivieren, um Spalte absteigend zu sortieren"
                }

            }
        });

        $('#logtable').DataTable( {
            "language": {
                "sEmptyTable": "Keine Daten in der Tabelle vorhanden",
                "sInfo": "_START_ bis _END_ von _TOTAL_ Einträgen",
                "sInfoEmpty": "Keine Daten vorhanden",
                "sInfoFiltered": "(gefiltert von _MAX_ Einträgen)",
                "sInfoPostFix": "",
                "sInfoThousands": ".",
                "sLengthMenu": "_MENU_ Einträge anzeigen",
                "sLoadingRecords": "Wird geladen ..",
                "sProcessing": "Bitte warten ..",
                "sSearch": "Suchen",
                "sZeroRecords": "Keine Einträge vorhanden",
                "paginate": {
                    "sFirst":       "Erste",
                    "sPrevious":    "Zurück",
                    "sNext":        "Nächste",
                    "sLast":        "Letzte"
                },
                "aria": {
                    "sSortAscending":  ": aktivieren, um Spalte aufsteigend zu sortieren",
                    "sSortDescending": ": aktivieren, um Spalte absteigend zu sortieren"
                }

            }
    });


        $('#articletable').DataTable( {
            "language": {
                "sEmptyTable": "Keine Daten in der Tabelle vorhanden",
                "sInfo": "_START_ bis _END_ von _TOTAL_ Einträgen",
                "sInfoEmpty": "Keine Daten vorhanden",
                "sInfoFiltered": "(gefiltert von _MAX_ Einträgen)",
                "sInfoPostFix": "",
                "sInfoThousands": ".",
                "sLengthMenu": "_MENU_ Einträge anzeigen",
                "sLoadingRecords": "Wird geladen ..",
                "sProcessing": "Bitte warten ..",
                "sSearch": "Suchen",
                "sZeroRecords": "Keine Einträge vorhanden",
                "paginate": {
                    "sFirst":       "Erste",
                    "sPrevious":    "Zurück",
                    "sNext":        "Nächste",
                    "sLast":        "Letzte"
                },
                "aria": {
                    "sSortAscending":  ": aktivieren, um Spalte aufsteigend zu sortieren",
                    "sSortDescending": ": aktivieren, um Spalte absteigend zu sortieren"
                }

            },
            "columnDefs": [
                {
                    "targets": [ 0 ],
                    "visible": false,
                    "searchable": true
                },
                {
                    "targets": [ 1 ],
                    "visible": false,
                    "searchable": true
                },
                {
                    "targets": [ 2 ],
                    "visible": false,
                    "searchable": true
                }
            ],
            "order": [[ 0, 'desc' ], [ 1, 'asc' ]]
        });


    } );
</script

{block name="content/layout/javascript"}
{/block}
</body>
</html>