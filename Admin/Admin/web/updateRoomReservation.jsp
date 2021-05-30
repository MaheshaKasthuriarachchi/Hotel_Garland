<%@page import="org.hibernate.Criteria"%>
<%@page import="org.hibernate.Session"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html>

    <head>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="A Components Mix Bootstarp 3 Admin Dashboard Template">
        <meta name="author" content="Westilian">
        <title>Update Room Reservation</title>
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
        <script type="text/javascript" src="custom/sweetalert.min.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <link href="http://fonts.googleapis.com/css?family=Roboto:400,300,400italic,500,500italic" rel="stylesheet" type="text/css">
        <link href="http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600" rel="stylesheet" type="text/css">
    </head>
    <body>
        <div class="page-container iconic-view">
            <!--Leftbar Start Here -->
            <div class="left-aside desktop-view">
                <div class="aside-branding">
                    <a href="index.html" class="iconic-logo"><img src="images/logo-iconic.png" alt="Matmix Logo">
                    </a>
                    <a href="index.html" class="large-logo"><img src="images/logo-large.png" alt="Matmix Logo">
                    </a><span class="aside-pin waves-effect"><i class="fa fa-thumb-tack"></i></span>
                    <span class="aside-close waves-effect"><i class="fa fa-times"></i></span>
                </div>
                <%@include file="leftheader.jsp" %>  
            </div>
            <div class="page-content">
                <!--Topbar Start Here -->
                <header class="top-bar">
                    <div class="container-fluid top-nav">
                        <div class="search-form search-bar">
                            <form>
                                <input name="searchbox" value="" placeholder="Search Topic..." class="search-input">
                            </form>
                            <span class="search-close waves-effect"><i class="ico-cross"></i></span>
                        </div>
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
                            <div class="col-md-4 responsive-fix top-mid">
                                <div class="notification-nav">
                                    <ul class="clearfix">
                                        <li class="dropdown"><a href="#" data-toggle="dropdown" class="hide-small-device waves-effect"><i class="fa fa-envelope"></i><span class="alert-bubble">15</span></a>
                                            <div role="menu" class="dropdown-menu message-dropdown msg-lists fadeInUp hide-small-device">
                                                <div class="message-wrap">
                                                    <h4>You have 15 new messages</h4>
                                                    <ul class="clearfix">
                                                        <li class="clearfix">
                                                            <a href="#" class="message-thumb"><img src="images/avatar/adellecharles.jpg" alt="image">
                                                            </a><a href="#" class="message-intro"><span class="message-meta">Adellecharles </span>Nunc aliquam dolor... <span class="message-time">today at 10:20 pm</span></a>
                                                        </li>
                                                        <li class="clearfix">
                                                            <a href="#" class="message-thumb"><img src="images/avatar/allisongrayce.jpg" alt="image">
                                                            </a><a href="#" class="message-intro"><span class="message-meta">Allisongrayce </span>In hac habitasse ... <span class="message-time">today at 8:29 pm</span></a>
                                                        </li>
                                                        <li class="clearfix">
                                                            <a href="#" class="message-thumb"><img src="images/avatar/amarkdalen.jpg" alt="image">
                                                            </a><a href="#" class="message-intro"><span class="message-meta">Amarkdalen </span>Suspendisse ac mauris ... <span class="message-time">yesterday at 12:29 pm</span></a>
                                                        </li>
                                                        <li class="clearfix">
                                                            <a href="#" class="message-thumb"><img src="images/avatar/annapickard.jpg" alt="image">
                                                            </a><a href="#" class="message-intro"><span class="message-meta">Annapickard </span>Vivamus lacinia facilisis... <span class="message-time">yesterday at 11:48 pm</span></a>
                                                        </li>
                                                        <li class="clearfix">
                                                            <a href="#" class="message-thumb"><img src="images/avatar/bobbyjkane.jpg" alt="image">
                                                            </a><a href="#" class="message-intro"><span class="message-meta">Bobbyjkane </span>Donec vel iaculis ... <span class="message-time">1 month ago</span></a>
                                                        </li>
                                                        <li class="clearfix">
                                                            <a href="#" class="message-thumb"><img src="images/avatar/chexee.jpg" alt="image">
                                                            </a><a href="#" class="message-intro"><span class="message-meta">Chexee </span> Curabitur eget blandit...<span class="message-time">3 months ago</span></a>
                                                        </li>
                                                        <li class="clearfix">
                                                            <a href="#" class="message-thumb"><img src="images/avatar/coreyweb.jpg" alt="image">
                                                            </a><a href="#" class="message-intro"><span class="message-meta">Coreyweb </span>Etiam molestie nulla... <span class="message-time">1 year ago</span></a>
                                                        </li>
                                                    </ul>
                                                    <a class="btn btn-primary btn-block notification-btn clearfix waves-effect" href="#"><span>View All</span></a>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="dropdown"><a href="#" data-toggle="dropdown" class="hide-small-device waves-effect "><i class="fa fa-bell"></i><span class="alert-bubble">10</span></a>
                                            <div role="menu" class="dropdown-menu notification-dropdown fadeInUp noty-lists hide-small-device">
                                                <div class="notification-wrap">
                                                    <h4>You have 10 new notifications</h4>
                                                    <ul>
                                                        <li><a href="#" class="clearfix"><span class="ni w-green"><i class="fa fa-bullhorn"></i></span><span class="notification-message">Pellentesque semper posuere. <span class="notification-time clearfix">3 Min Ago</span></span></a>
                                                        </li>
                                                        <li><a href="#" class="clearfix"><span class="ni w-orange"><i class="fa fa-life-ring"></i></span><span class="notification-message">Nulla commodo sem at purus. <span class="notification-time clearfix">1 Hours Ago</span></span></a>
                                                        </li>
                                                        <li><a href="#" class="clearfix"><span class="ni w-bondi-blue"><i class="fa fa-star-o"></i></span><span class="notification-message">Fusce condimentum turpis. <span class="notification-time clearfix">3 Hours Ago</span></span></a>
                                                        </li>
                                                        <li><a href="#" class="clearfix"><span class="ni w-blue"><i class="fa fa-trophy"></i></span><span class="notification-message">Pellentesque habitant morbi. <span class="notification-time clearfix">Yesterday</span></span></a>
                                                        </li>
                                                        <li><a href="#" class="clearfix"><span class="ni w-brown"><i class="fa fa-bolt"></i></span><span class="notification-message">Fusce bibendum lacus mauris.<span class="notification-time clearfix">1 Month Ago</span></span></a>
                                                        </li>
                                                        <li><a href="#" class="clearfix"><span class="ni w-dark-yellow"><i class="fa fa-bookmark-o"></i></span><span class="notification-message">Donec id mi placerat, scelerisque.<span class="notification-time clearfix">3 Months Ago</span></span></a>
                                                        </li>
                                                    </ul>
                                                    <a class="btn btn-primary btn-block notification-btn clearfix waves-effect" href="#"><span>View All</span></a>
                                                </div>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                                <div class="pull-left mobile-search">
                                    <span class=" waves-effect search-btn">
                                        <i class="fa fa-search"></i>
                                    </span>
                                </div>
                            </div>
                            <div class="col-md-6 responsive-fix">
                                <div class="top-aside-right">
                                    <div class="user-nav">
                                        <ul>
                                            <li class="dropdown">
                                                <a data-toggle="dropdown" href="#" class="clearfix dropdown-toggle waves-effect waves-block waves-classic">
                                                    
                                                </a>
                                                <ul role="menu" class="dropdown-menu fadeInUp">
                                                    <li><a href="#"><span class="user-nav-icon"><i class="fa fa-briefcase"></i></span><span class="user-nav-label">My Account</span></a>
                                                    </li>
                                                    <li><a href="#"><span class="user-nav-icon"><i class="fa fa-user"></i></span><span class="user-nav-label">View Profile</span></a>
                                                    </li>
                                                    <li><a href="#"><span class="user-nav-icon"><i class="fa fa-cogs"></i></span><span class="user-nav-label">Settings</span></a>
                                                    </li>
                                                    <li><a href="#"><span class="user-nav-icon"><i class="fa fa-lock"></i></span><span class="user-nav-label">Logout</span></a>
                                                    </li>
                                                </ul>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="pull-right desktop-search">
                                        <span class="waves-effect search-btn">
                                            <i class="fa fa-search"></i>
                                        </span>
                                    </div>
                                    <span class="rightbar-action waves-effect"><i class="fa fa-bars"></i></span>
                                </div>
                            </div>
                        </div>
                    </div>
                </header>
                <div class="main-container">
                    <div class="container-fluid">
                        <div class="box-widget widget-module">
                            <div class="widget-head clearfix">
                                <span class="h-icon"><i class="fa fa-slack"></i></span>
                                <h4>Update Room Reservation</h4>
                            </div>
                            <%
                                String RoomId = request.getParameter("roomid");
                                HttpSession hs = request.getSession();

                                Session ses = util.NewHibernateUtil.getSessionFactory().openSession();
                                pojo.Rooms ee = (pojo.Rooms) ses.load(pojo.Rooms.class, (Integer.parseInt(RoomId)));
                                hs.setAttribute("updateroomid", ee);
                            %>
                            <div class="widget-container">
                                <div class=" widget-block">
                                    <div class="form-group">
                                        <label class="col-md-4 control-label">Room #</label>
                                        <div class="col-md-8">
                                            <input id="roomno" type="text" value=" <%= ee.getRoomNumber()%>" class="form-control date-mask" />
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-4 control-label">Room Type</label>
                                        <div class="col-md-8">
                                            <input id="roomtype" type="text" value=" <%= ee.getRoomType()%>" class="form-control date-mask" />
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-4 control-label">Adults Count</label>
                                        <div class="col-md-8">
                                            <input id="adcount" type="text" value=" <%= ee.getAdults()%>" class="form-control date-mask"/>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-4 control-label">Children Count</label>
                                        <div class="col-md-8">
                                            <input id="chcount" type="text" value=" <%= ee.getChildren()%>" class="form-control date-mask" />
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-4 control-label">How Many Days</label>
                                        <div class="col-md-8">
                                            <input id="duration" type="text" value=" <%= ee.getDuration()%>" class="form-control date-mask" />
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-4 control-label">Advance</label>
                                        <div class="col-md-8">
                                            <input id="advance" type="text" value=" <%= ee.getAdvance()%>" class="form-control date-mask" />
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-4 control-label">Check-In Date</label>
                                        <div class="col-md-8">
                                            <input id="checkin" type="text" value=" <%= ee.getCheckIn()%>" class="form-control date-mask"/>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-4 control-label">Check-Out Date</label>
                                        <div class="col-md-8">
                                            <input id="checkout" type="text" value=" <%= ee.getCheckOut()%>" class="form-control date-mask"/>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-4 control-label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
                                        <div class="col-md-8">
                                            <center>
                                                <button  id="update" class="btn btn-success btn-block" onclick="updateRoomReservation()"><i class="icon-play"></i>Update Room Reservation</button>	
                                                <button  id="delete" class="btn btn-danger btn-block" onclick="deleteRoomReservation()"><i class="icon-play"></i>Delete Room Reservation </button>	

                                            </center>
                                        </div>
                                    </div>

                                    <%
                                        ses.close();
                                    %>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
               
                
            </div>
        </div>
        <!--Rightbar Start Here -->

        <script>
            function updateRoomReservation() {


                var yewxmlhttp;
                if (window.XMLHttpRequest) {

                    yewxmlhttp = new XMLHttpRequest();


                } else {
                    yewxmlhttp = new ActiveXObject("Microsoft.XMLHTTP");

                }

                yewxmlhttp.onreadystatechange = function() {


                    if (yewxmlhttp.readyState == 4 && yewxmlhttp.status == 200) {

                        var gett = yewxmlhttp.responseText;
                        //  alert(gett);
                        if (gett === "ok") {
                            //   alert("inside if");
                            swal("Done!", "Reservation Updated..!", "success");
                            window.location = "roomReservation.jsp";

                        }


                    }
                }
                
                var RoomNo = document.getElementById("roomno").value;
                var RoomType = document.getElementById("roomtype").value;
                var AdCount = document.getElementById("adcount").value;
                var ChCount = document.getElementById("chcount").value;
                var Duration = document.getElementById("duration").value;
                var Advance = document.getElementById("advance").value;
                var CheckIn = document.getElementById("checkin").value;
                var CheckOut = document.getElementById("checkout").value;

                    yewxmlhttp.open("POST", "updateRoomReservation", true);
                    yewxmlhttp.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
                    yewxmlhttp.send("roomno="+RoomNo+"&roomtype="+RoomType+"&adcount="+AdCount+
                            "&chcount="+ChCount+"&duration="+Duration+"&advance="+Advance+
                            "&checkin=" + CheckIn + "&checkout="+CheckOut); 
                }

        </script>
        <script>

            function deleteRoomReservation() {

                alert("Review Deleted");
                var yewxmlhttp;
                if (window.XMLHttpRequest) {

                    yewxmlhttp = new XMLHttpRequest();


                } else {
                    yewxmlhttp = new ActiveXObject("Microsoft.XMLHTTP");

                }

                yewxmlhttp.onreadystatechange = function() {


                    if (yewxmlhttp.readyState == 4 && yewxmlhttp.status == 200) {

                        var gett = yewxmlhttp.responseText;
                        //  alert(gett);
                        if (gett === "ok") {
                            //   alert("inside if");
                            swal("Done!", "Successfully deleted the Reservation!", "success");
                            window.location = "roomReservation.jsp";

                        }


                    }
                }

                var fre = "zz";


                yewxmlhttp.open("POST", "deleteRoomReservation", true);
                yewxmlhttp.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
                yewxmlhttp.send("hht=" + fre);


            }

        </script>
        <script src="sweetalert2.all.min.js"></script>
        <!-- Optional: include a polyfill for ES6 Promises for IE11 and Android browser -->
        <script src="https://cdn.jsdelivr.net/npm/promise-polyfill"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
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
