<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
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
        <title>ROOM RESERVATION</title>
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
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <link href="http://fonts.googleapis.com/css?family=Roboto:400,300,400italic,500,500italic" rel="stylesheet" type="text/css">
        <link href="http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600" rel="stylesheet" type="text/css">
        <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
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
                <div class="main-container">
                    <div class="container-fluid">
                        <div class="box-widget widget-module">
                            <div class="widget-head clearfix">
                                <span class="h-icon"><i class="fa fa-slack"></i></span>
                                <h4>ROOM RESERVATION</h4>
                            </div>
                            <div class="widget-container">
                                <div class=" widget-block">
                                    <form class="form-horizontal"  >
                                        <div class="form-group">
                                            <label class="col-md-4 control-label">Room #</label>
                                            <div class="col-md-8">
                                                <input id="roomno" type="text" class="form-control date-mask"required />
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-md-4 control-label">Room Type</label>
                                            <div class="col-md-8">
                                                <select id="roomtype" class="form-control time-mask">
                                                    <option>Single</option>
                                                    <option>Double</option>
                                                    <option>Family</option>
                                                    <option>Marketing</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-md-4 control-label">Adults Count</label>
                                            <div class="col-md-8">
                                                <input id="adcount" type="number" class="form-control date-mask" />
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-md-4 control-label">Children Count</label>
                                            <div class="col-md-8">
                                                <input id="chcount" type="number" class="form-control date_time-mask" required />
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-md-4 control-label">How Many Days</label>
                                            <div class="col-md-8">
                                                <input id="duration" type="number" class="form-control date_time-mask" required />
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-md-4 control-label">Advance Amount</label>
                                            <div class="col-md-8">
                                                <input id="advance" type="number" class="form-control date_time-mask" required />
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="col-md-4"></div>
                                            <div class="col-md-4">
                                            <label class="col-md-4 control-label">Check-In Date</label>
                                            <div class="col-md-8">
                                                <input type="text" id="checkin">
                                            </div>
                                            </div>
                                            <div class="col-md-4">
                                                <label class="col-md-4 control-label">Check-Out Date</label>
                                                <div class="col-md-8">
                                                <input type="text" id="checkout">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-md-4 control-label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
                                            <div class="col-md-8">
                                                <center>
                                                    <button  id="reserveroom" class="btn btn-success btn-block" onclick="formValidation()"><i class="icon-play"  ></i>Reserve Room</button>	
                                                </center>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                            <div class="widget-container">
                                <div class="widget-block">
                                    <div class="row">
                                        <div class="col-md-6">
                                        </div>
                                        <div class="col-md-6">
                                            <form class="form-horizontal">
                                                <div class="form-group">
                                                    <label class="col-md-6 control-label">Search Date</label>
                                                    <div class=" col-md-6">
                                                        <input class="form-control" id="reservationdate" type="date" placeholder="Date" onkeyup="Search()">
                                                    </div>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-1"></div>
                                        <div class="col-md-10">
                                            <div class="table-responsive">
                                                <table class="table table-striped table-hover table-bordered matmix-dt" id="ReviewTable">
                                                    <thead>
                                                        <tr>
                                                            <th class="tc-center col-md-3"> Check-In Date</th>
                                                            <th class="tc-center col-md-3"> Room Number</th>
                                                            <th class="tc-cente col-md-9"> Room Type</th>
                                                            <th class="tc-cente col-md-9"> Reserved Dates#</th>
                                                                                                                  
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <%

                                                            Session s1 = util.NewHibernateUtil.getSessionFactory().openSession();
                                                            Criteria c1 = s1.createCriteria(pojo.Rooms.class);
                                                            List<pojo.Rooms> rm = c1.list();

                                                            for (pojo.Rooms rooms : rm) {


                                                       %>
                                                        <tr>
                                                            <td> <%= rooms.getCheckIn()%> </td>
                                                             <td> <%= rooms.getRoomNumber()%> </td>
                                                            <td> <%= rooms.getRoomType()%> </td>
                                                            <td> <%= rooms.getDuration()%> </td>
                                                            <td class="tc-center">
                                                                <button  id="update" class="btn btn-warning btn-block" onclick="UpdateRoomReservation(<%= rooms.getRoomId()%>)"><i class="icon-play"></i>CHANGE</button>	
                                                            </td>
                                                        </tr>
                                                        <%
                                                            }

                                                        %>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                       <div class="col-md-1"></div>               
                                                                                        
                                </div>
                            </div>
                        </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <script>
                    $(document).ready(function () {

                    $("#reserveroom").click(function () {

                        var roomNo = $('#roomno').val();
                        var roomType = $('#roomtype').val();
                        var adultsCount = $('#adcount').val();
                        var childrenCount = $('#chcount').val();
                        var duration = $('#duration').val();
                        var advance = $('#advance').val();
                        var checkin = $('#checkin').val();
                        var checkout = $('#checkout').val();

                        $.post("reserveRoom",
                                {
                                    roomNo : roomNo,
                                    roomType : roomType,
                                    adultsCount : adultsCount,
                                    childrenCount : childrenCount,
                                    duration : duration,
                                    advance : advance,
                                    checkin : checkin,
                                    checkout : checkout
                                },
                                
                                function (data, status) {


                                window.location ="roomReservation.jsp";

                                });



                    });


                });

        </script>
        <script>
            $( function() {
              $( "#checkin" ).datepicker();
            } );
        </script>
        <script>
            $( function() {
              $( "#checkout" ).datepicker();
            } );
        </script>
        <script>
                function Search() {

                    var input, filter, table, tr, td, i, txtValue;
                    input = document.getElementById("reservationdate");
                    filter = input.value.toUpperCase();
                    table = document.getElementById("ReviewTable");
                    tr = table.getElementsByTagName("tr");
                    var nuz = 0;
                    for (i = 0; i < tr.length; i++) {
                        td = tr[i].getElementsByTagName("td")[0];

                        if (td) {
                            txtValue = td.textContent || td.innerText;
                            if (txtValue.toUpperCase().indexOf(filter) > -1) {
                                nuz++;
                                tr[i].style.display = "";
                            } else {
                                tr[i].style.display = "none";
                            }
                        }
                    }


                }



        </script>
        <script>
                function UpdateRoomReservation(vv) {   
                     window.location = "updateRoomReservation.jsp?roomid=" + vv;
                }
        </script>
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
            <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
            <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
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