<!doctype html>
<html>

    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="A Components Mix Bootstarp 3 Admin Dashboard Template">
        <meta name="author" content="Westilian">
        <title>Admin Home</title>
        <link rel="stylesheet" href="css/font-awesome.css" type="text/css">
        <link rel="stylesheet" href="css/bootstrap.css" type="text/css">
        <link rel="stylesheet" href="css/animate.css" type="text/css">
        <link rel="stylesheet" href="css/waves.css" type="text/css">
        <link rel="stylesheet" href="css/layout.css" type="text/css">
        <link rel="stylesheet" href="css/components.css" type="text/css">
        <link rel="stylesheet" href="css/plugins.css" type="text/css">
        <link rel="stylesheet" href="css/common-styles.css" type="text/css">
        <link rel="stylesheet" href="css/pages.css" type="text/css">
        <link rel="stylesheet" href="css/responsive.css" type="text/css">
        <link rel="stylesheet" href="css/matmix-iconfont.css" type="text/css">
        <link href="http://fonts.googleapis.com/css?family=Roboto:400,300,400italic,500,500italic" rel="stylesheet" type="text/css">
        <link href="http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600" rel="stylesheet" type="text/css">
    </head>
    <body>
        <div class="page-container iconic-view">
            <!--Leftbar Start Here -->
            <div class="left-aside desktop-view">
                <div class="aside-branding">
                    <a href="index.jsp" class="iconic-logo"><img src="images/logo-iconic.png" alt="Matmix Logo">
                    </a>
                    <a href="index.jsp" class="large-logo"><img src="images/logo-large.png" alt="Matmix Logo">
                    </a><span class="aside-pin waves-effect"><i class="fa fa-thumb-tack"></i></span>
                    <span class="aside-close waves-effect"><i class="fa fa-times"></i></span>
                </div>
                <%@include file="leftheader.jsp" %>  
            </div>
            <div class="page-content">
                <!--Topbar Start Here -->
                <header class="top-bar">
                    <div class="container-fluid top-nav">

                        <div class="row">
                            <div class="col-md-2">
                                <div class="clearfix top-bar-action">
                                    <span class="leftbar-action-mobile waves-effect"><i class="fa fa-bars "></i></span>
                                    <span class="leftbar-action desktop waves-effect"><i class="fa fa-bars "></i></span>
                                    <span class="waves-effect search-btn mobile-search-btn">
                                        <i class="fa fa-search"></i>
                                    </span>
                                    <span class="rightbar-action waves-effect"><i class="fa fa-bars"></i></span>
                                </div>
                            </div>

                            <div class="col-md-6 responsive-fix">
                                <!--USER ICON EKA-->
                            </div>
                        </div>
                    </div>
                </header>
                <div class="main-container">
                    <!--MAIN CONTENT--> <div class="col-md-3 col-sm-6">
                        <div class="iconic-w-wrap number-rotate">
                            <span class="stat-w-title">Orders Today</span>
                            <a href="#" class="ico-cirlce-widget w_bg_cyan">
                                <span><i class="fa fa-cart-plus"></i></span>
                            </a>
                            <div class="w-meta-info">
                                <span class="w-meta-value number-animate" data-value="320" data-animation-duration="1500">0</span>
                                <span class="w-meta-title">New Orders</span>
                                <span class="w-previos-stat">Last Day : 210</span>
                            </div>
                        </div>
                    </div>


                    <div class="col-md-3 col-sm-6">
                        <div class="iconic-w-wrap number-rotate">
                            <span class="stat-w-title">Daily Customers </span>
                            <a href="#" class="ico-cirlce-widget w_bg_cyan">
                                <span><i class="fa fa-user-times"></i></span>
                            </a>
                            <div class="w-meta-info">
                                <span class="w-meta-value number-animate" data-value="210" data-animation-duration="1500">0</span>
                                <span class="w-meta-title">New Customers</span>
                                <span class="w-previos-stat">Last Day : 210</span>
                            </div>
                        </div>
                    </div>
                    
                    <div class="col-md-3 col-sm-6">
            <div class="iconic-w-wrap number-rotate">
                <span class="stat-w-title">Food Added  Today</span>
                <a href="#" class="ico-cirlce-widget w_bg_cyan">
                    <span><i class="fa fa-hotel"></i></span>
                </a>
                <div class="w-meta-info">
                    <span class="w-meta-value number-animate" data-value="123" data-animation-duration="1500">0</span>
                    <span class="w-meta-title">New Foods</span>
                    <span class="w-previos-stat">Last Day : 210</span>
                </div>
            </div>
        </div>
                    
                    <div class="col-md-3 col-sm-6">
            <div class="iconic-w-wrap number-rotate">
                <span class="stat-w-title">User Comments</span>
                <a href="#" class="ico-cirlce-widget w_bg_cyan">
                    <span><i class="fa fa-user"></i></span>
                </a>
                <div class="w-meta-info">
                    <span class="w-meta-value number-animate" data-value="567" data-animation-duration="1500">0</span>
                    <span class="w-meta-title">Posted Comments</span>
                    <span class="w-previos-stat">Last Day : 210</span>
                </div>
            </div>
        </div>
                </div>
                
               
            </div>
        </div>
        <!--Rightbar Start Here -->
        <script src="js/jquery-1.11.2.min.js"></script>
        <script src="js/jquery-migrate-1.2.1.min.js"></script>
        <script src="js/jRespond.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/nav-accordion.js"></script>
        <script src="js/hoverintent.js"></script>
        <script src="js/waves.js"></script>
        <script src="js/switchery.js"></script>
        <script src="js/jquery.loadmask.js"></script>
        <script src="js/icheck.js"></script>
        <script src="js/select2.js"></script>
        <script src="js/bootstrap-filestyle.js"></script>
        <script src="js/bootbox.js"></script>
        <script src="js/animation.js"></script>
        <script src="js/colorpicker.js"></script>
        <script src="js/bootstrap-datepicker.js"></script>
        <script src="js/sweetalert.js"></script>
        <script src="js/moment.js"></script>
        <script src="js/calendar/fullcalendar.js"></script>
        <!--CHARTS-->
        <script src="js/chart/sparkline/jquery.sparkline.js"></script>
        <script src="js/chart/easypie/jquery.easypiechart.min.js"></script>
        <script src="js/chart/flot/excanvas.min.js"></script>
        <script src="js/chart/flot/jquery.flot.min.js"></script>
        <script src="js/chart/flot/curvedLines.js"></script>
        <script src="js/chart/flot/jquery.flot.time.min.js"></script>
        <script src="js/chart/flot/jquery.flot.stack.min.js"></script>
        <script src="js/chart/flot/jquery.flot.axislabels.js"></script>
        <script src="js/chart/flot/jquery.flot.resize.min.js"></script>
        <script src="js/chart/flot/jquery.flot.tooltip.min.js"></script>
        <script src="js/chart/flot/jquery.flot.spline.js"></script>
        <script src="js/chart/flot/jquery.flot.pie.min.js"></script>
        <script src="js/chart.init.js"></script>
        <script src="js/smart-resize.js"></script>
        <script src="js/layout.init.js"></script>
        <script src="js/matmix.init.js"></script>
        <script src="js/retina.min.js"></script>
    </body>

   
</html>