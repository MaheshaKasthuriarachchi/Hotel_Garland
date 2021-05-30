
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
        <title>View Customer</title>
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
        <script type="text/javascript" src="custom/sweetalert.min.js"></script>
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
                
                <div class="main-container">
                    <div class="container-fluid">
                        <div class="box-widget widget-module">

                            <div class="col-md-12">
                                <div class="section-header">
                                    <h2>Customers</h2>
                                    <p>
                                        View Customer of Data Base                                  </p>
                                </div>
                                <div class="box-widget widget-module">
                                    <div class="widget-head clearfix">
                                        <span class="h-icon"><i class="fa fa-table"></i></span>

                                    </div>
                                    <div class="widget-container">
                                        <div class="widget-block">
                                            <div class="row">
                                                <div class="col-md-6">
                                                </div>
                                                <div class="col-md-6">
                                                    <form class="form-horizontal">
                                                        <div class="form-group">
                                                            <label class="col-md-6 control-label">User Search:</label>
                                                            <div class=" col-md-6">
                                                                <input class="form-control" id="myInput" type="text" placeholder="Search" onkeyup="myFunction()">
                                                            </div>
                                                        </div>
                                                    </form>
                                                </div>
                                            </div>
                                            <div class="table-responsive">
                                                <table class="table table-striped table-hover table-bordered matmix-dt" id="myTable">
                                                    <thead>
                                                        <tr>
                                                            <th class="tc-center">
                                                                Customer Id
                                                            </th>
                                                            <th class="tc-center">
                                                                Full name
                                                            </th>
                                                            <th class="tc-center">
                                                                Email
                                                            </th>
                                                            <th class="tc-center">
                                                                Address
                                                            </th>
                                                            <th class="tc-center">
                                                                Phone No
                                                            </th>

                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <%
                                                            //java gahanna 

                                                            Session ss = util.NewHibernateUtil.getSessionFactory().openSession();
                                                            Criteria cc = ss.createCriteria(pojo.Customer.class);
                                                            List<pojo.Customer> customer = cc.list();

                                                            for (pojo.Customer m1 : customer) {


                                                        %>


                                                        <tr>

                                                            <td>
                                                                <%= m1.getCid()%>
                                                            </td>
                                                            <td>
                                                                <%= m1.getName()%>
                                                            </td>
                                                            <td>
                                                                <%= m1.getEmail()%>
                                                            </td>
                                                            <td>
                                                                <%= m1.getAddress()%>

                                                            </td>
                                                            <td>
                                                                <%= m1.getPhone()%>

                                                            </td>
                                                            <td class="tc-center">

                                                                <button  id="updatemyn" class="btn btn-warning btn-block" onclick="delcus(<%= m1.getCid()%>)"><i class="icon-play"></i>Delete </button>	


                                                            </td>



                                                        </tr>
                                                        <%
                                                            }

                                                        %>

                                                    </tbody>
                                                </table>
                                            </div>

                                        </div>
                                    </div>
                                </div>


                            </div>
                        </div>
                    </div>
                    
                </div>
            </div>
            <!--Rightbar Start Here -->

            <script>

                function delcus(vv) {

                    alert("deletezz");
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
                                swal("Done!", "Customer Deleted..!", "success");
                                window.location = "viewCustomer.jsp"

                            }


                        }
                    }

                    alert(vv);
                    


                    yewxmlhttp.open("POST", "dltcust", true);
                    yewxmlhttp.setRequestHeader('Content-Type','application/x-www-form-urlencoded');
                    yewxmlhttp.send("hht=" + vv);


                }

            </script>
            <script>

                function loadsinglemenu(vv) {

                    window.location = "updatemenu.jsp?menuid=" + vv;
                }


            </script>
            <script>
                function myFunction() {

                    var input, filter, table, tr, td, i, txtValue;
                    input = document.getElementById("myInput");
                    filter = input.value.toUpperCase();
                    table = document.getElementById("myTable");
                    tr = table.getElementsByTagName("tr");
                    var nuz = 0;
                    for (i = 0; i < tr.length; i++) {
                        td = tr[i].getElementsByTagName("td")[1];

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

