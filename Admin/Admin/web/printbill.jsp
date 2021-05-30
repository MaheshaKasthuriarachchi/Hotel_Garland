<%@page import="org.hibernate.criterion.Restrictions"%>
<%@page import="pojo.Employee"%>
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
        <title>Print Bills</title>
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
                                    <h2>View Bills</h2>

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
                                            <diSv class="table-responsive">
                                                <table class="table table-striped table-hover table-bordered matmix-dt" id="myTable" style="width: 100%;">
                                                    <thead>
                                                        <tr>
                                                            
                                                            <td colspan="2" style="border-style: none;">
                                                                <img src="images/logo-dark-large.png"/>
                                                            </td>
                                                            <td colspan="2" style="border-style: none;">
                                                                <p style="font-size: 35px;">
                                                                    Billing Details
                                                                </p>
                                                            </td>

                                                        </tr>
                                                        <tr>

                                                            <th>
                                                                Bill ID
                                                            </th>
                                                            <th>
                                                                Amount
                                                            </th>
                                                            <th>
                                                                Date
                                                            </th>
                                                            <th>
                                                                Time
                                                            </th>




                                                        </tr>

                                                    </thead>
                                                    <tbody>
                                                        <%

                                                            Session sessionz = util.NewHibernateUtil.getSessionFactory().openSession();
                                                            Criteria gg = sessionz.createCriteria(pojo.Bill.class);
                                                            List<pojo.Bill> stockdetails = gg.list();
                                                            for (pojo.Bill stc : stockdetails) {


                                                        %>

                                                        <tr>


                                                            <td style="text-align: center">
                                                                <%= stc.getBillid()%>
                                                            </td>
                                                            <td style="text-align: center">
                                                                <%= stc.getAmount()%>

                                                            </td>
                                                            <td style="text-align: center">
                                                                <%= stc.getDate()%>

                                                            </td>
                                                            <td style="text-align: center">
                                                                <%= stc.getTime()%>

                                                            </td>




                                                        </tr>
                                                        <%                                                            }

                                                        %>

                                                    </tbody>
                                                </table>
                                        </div>

                                                        <button  id="bt1" class="btn btn-success btn-block" onclick="printData()"><i class="fa fa-print"></i>Print Bill</button>	


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
            function myFunction() {

                var input, filter, table, tr, td, i, txtValue;
                input = document.getElementById("myInput");
                filter = input.value.toUpperCase();
                table = document.getElementById("myTable");
                tr = table.getElementsByTagName("tr");
                var nuz = 0;
                for (i = 0; i < tr.length; i++) {
                    td = tr[i].getElementsByTagName("td")[2];

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
            function printData()
            {
                var divToPrint = document.getElementById("myTable");
                newWin = window.open("");
                newWin.document.write(divToPrint.outerHTML);
                newWin.print();
                newWin.close();
            }
        </script> 
        <script>
            function sendtoUpdate(vv) {

                window.location = "updatesingleemployee.jsp?empid=" + vv;


            }

            function deletebill(zz) {


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
                            alert("Data Deleted...!");
                            //swal("Done!", "C..!", "success");
                            window.location = "viewbills.jsp";

                        }



                    }
                }

                yewxmlhttp.open("POST", "deleteBill", true);
                yewxmlhttp.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
                yewxmlhttp.send("orfd=" + zz);



            }


            function updatebills(vv) {

                var pricez = $('#itempricez' + vv).val();
//                alert(pricez);
//                alert(vv);


                $.post("updateBillAmount",
                        {
                            billiz: vv,
                            pricez: pricez

                        },
                function(data, status) {

                    alert("Data Updated");
                    window.location = "viewbills.jsp";
                });



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
