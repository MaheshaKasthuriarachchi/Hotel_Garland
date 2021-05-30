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
        <title>Data Analysis</title>
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
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.6.0/Chart.min.js"></script>
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
            
                
                <!--Topbar Start Here -->
                <header>                   
                </header>
                <div class="main-container">
                    <div class="container-fluid">
                        <div class="box-widget widget-module">
                            <div class="col-md-1"></div>
                            <div class="col-md-11">
                                <div class="section-header">
                                    <h2>Analytics Reports</h2>
                                    <p>Monthly Employee Salary and Monthly Income Analysis</p>
                                </div>
                           
                        
                        <div class="box-widget widget-module">
                            <div class="widget-head clearfix">
                                        <span class="h-icon"><i class="fa fa-dashboard"></i></span>

                                    </div>
                            <div class="widget-container">
                                <div class="widget-block">
                                    <div class="row">
                                        <div class="col-md-6">
                                            <form class="form-horizontal">
                                            <div class="form-group">
                                                <div class="dropdown ">
                                                        <label>Employee Salary Chart</label>
                                                        <select id="month" class="form-control time-mask" onchange="CalcMonthlySalary()">
                                                            <option>January</option>
                                                            <option>February</option>
                                                            <option>March</option>
                                                            <option>April</option>
                                                            <option>May</option>
                                                            <option>June</option>
                                                            <option>July</option>
                                                            <option>August</option>
                                                            <option>September</option>
                                                            <option>October</option>
                                                            <option>November</option>
                                                            <option>December</option>
                                                        </select>                                                   
                                                </div>
                                                <p id="demo"></p>
                                               <p id="display"></p>
                                            </div>  
                                            </form>
                                            
                                        </div>
                                        <div class="col-md-6">
                                           <canvas id="salaryChart"></canvas>
                                        </div>
                                    </div>                                      
                                </div>
                            </div>
                            <div class="widget-container">
                                <div class="widget-block">
                                    <div class="row">
                                        <div class="col-md-6">
                                            <form class="form-horizontal">
                                            <div class="form-group">
                                                
                                                    <div class="dropdown ">
                                                        <label>Monthly Income Chart</label>
                                                        <select id="incomeMonth" class="form-control time-mask" onchange="MonthlyIncome()">
                                                            <option>January</option>
                                                            <option>February</option>
                                                            <option>March</option>
                                                            <option>April</option>
                                                            <option>May</option>
                                                            <option>June</option>
                                                            <option>July</option>
                                                            <option>August</option>
                                                            <option>September</option>
                                                            <option>October</option>
                                                            <option>November</option>
                                                            <option>December</option>
                                                        </select>                                                   
                                                    </div>
                                                <p id="MonthlyIncome"></p>
                                            </div>  
                                            </form>
                                            
                                        </div>
                                        <div class="col-md-6">
                                           <canvas id="IncomeChart"></canvas>
                                        </div>
                                    </div>                                      
                                </div>
                            </div>
                            <div class="widget-container">
                                <div class=" widget-block">
                                    <form class="form-horizontal"  >
                                        <div class="form-group">
                                            <label class="col-md-4 control-label">Review ID</label>
                                            <div class="col-md-4">
                                                <input id="reviewid" value="005" type="text" class="form-control date-mask"required />
                                            </div>
                                            <div class="col-md-4"></div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-md-4 control-label">Review Month</label>
                                            <div class="col-md-4">
                                                <input id="reviewmonth" type="text" class="form-control date-mask"required />
                                            </div>
                                            <div class="col-md-4"></div>
                                        </div>
                                        
                                        <div class="form-group">
                                            <label class="col-md-4 control-label">Review</label>
                                            <div class="col-md-4">
                                                
                                                <textarea class="form-control date-mask" id="review" rows="3"></textarea>
                                            </div>
                                            <div class="col-md-4"></div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-md-4 control-label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
                                            <div class="col-md-4">
                                                <center>
                                                    <button  id="savereview" class="btn btn-success btn-block" onclick="formValidation()()"><i class="icon-play"  ></i>Save Review</button>	
                                                </center>
                                            </div>
                                            <div class="col-md-4"></div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                            <div class="widget-container">
                                <div class="widget-block">
                                    <div class="row">
                                        
                                        
                                    </div>
                                    <div class="row">
                                        <div class="col-md-1"></div>
                                        <div class="col-md-10">
                                            <div class="table-responsive">
                                                <table class="table table-striped table-hover table-bordered matmix-dt" id="ReviewTable">
                                                    <thead>
                                                        <tr>
                                                            <th class="tc-center col-md-3"> Month </th>
                                                            <th class="tc-cente col-md-9"> Review </th>
                                                                                                                  
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <%
                                                           

                                                            Session s = util.NewHibernateUtil.getSessionFactory().openSession();
                                                            Criteria c = s.createCriteria(pojo.AnalyticReview.class);
                                                            List<pojo.AnalyticReview> rev = c.list();

                                                            for (pojo.AnalyticReview rvw : rev) {


                                                       %>
                                                        <tr>
                                                            <td> <%= rvw.getMonth()%> </td>
                                                            <td> <%= rvw.getReview()%> </td>
                                                            <td class="tc-center">
                                                                <button  id="update" class="btn btn-warning btn-block" onclick="UpdateReview(<%= rvw.getReviewId()%>)"><i class="icon-play"></i>EDIT</button>	
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
                function UpdateReview(vv) {
                     window.location = "updateReview.jsp?reviewid=" + vv;
                }
                
               
            </script>
            <script>
                 function DeleteReview(vv){
                    window.location = "deleteReview.jsp?reviewid=" + vv;
                }
            </script>
            
            <script>
                    $(document).ready(function () {

                    $("#savereview").click(function () {

                        var reviewid = $('#reviewid').val();
                        var reviewmonth = $('#reviewmonth').val();
                        var review = $('#review').val();

                        $.post("saveReview",
                                {
                                    reviewId: reviewid,
                                    reviewMonth: reviewmonth,
                                    review: review

                                },
                                function (data, status) {


                                window.location ="Analytics.jsp";

                                });



                    });


                });

            </script>
            <script>
                function CalcMonthlySalary() {
                    var x = document.getElementById("month").value;
                    document.getElementById("demo").innerHTML = "Employee Salary Anlysis of " + x + " Month";
                
                var salaryChart = document.getElementById('salaryChart').getContext('2d');

                // Global Options
                Chart.defaults.global.defaultFontFamily = 'Lato';
                Chart.defaults.global.defaultFontSize = 18;
                Chart.defaults.global.defaultFontColor = '#777';
                
                // Data Retrieval
                <%
                Session ss = util.NewHibernateUtil.getSessionFactory().openSession();
                Criteria cc = ss.createCriteria(pojo.Employee.class);
                List<pojo.Employee> employee = cc.list();
                ArrayList<String> emplist = new ArrayList<String>();
                ArrayList<String> empsal = new ArrayList<String>();
                for (pojo.Employee emp : employee) {
                   emplist.add("'"+emp.getName()+"'");
                   empsal.add("'"+emp.getPassword()+"'");
                 } %> 
                 
               
                var salaryPopChart = new Chart(salaryChart, {
                  type:'pie',
                  data:{
                      labels:<%= emplist %>,
                    datasets:[{
                      label:'Salary',
                      data:<%= empsal %>,
                   
                
                    // bar colors
                      backgroundColor:[
                        'rgba(255, 99, 132, 0.6)',
                        'rgba(54, 162, 235, 0.6)',
                        'rgba(255, 206, 86, 0.6)',
                        'rgba(75, 192, 192, 0.6)',
                        'rgba(153, 102, 255, 0.6)',
                        'rgba(255, 159, 64, 0.6)',
                        'rgba(255, 99, 132, 0.6)'
                      ],
                      borderWidth:1,
                      borderColor:'#777',
                      hoverBorderWidth:3,
                      hoverBorderColor:'#000'
                    }]
                  },
                  options:{
                    title:{
                      display:true,
                      text:'Employee Salary',
                      fontSize:25
                    },
                    legend:{
                      display:true,
                      position:'right',
                      labels:{
                        fontColor:'#000'
                      }
                    },
                    layout:{
                      padding:{
                        left:50,
                        right:0,
                        bottom:0,
                        top:0
                      }
                    },
                    tooltips:{
                      enabled:true
                    }
                  }
                });
                }
            </script>
            <script>
                function MonthlyIncome() {
                    var x = document.getElementById("incomeMonth").value;
                    document.getElementById("MonthlyIncome").innerHTML = "Monthly Income Anlysis of " + x + " Month";
                
                var IncomeChart = document.getElementById('IncomeChart').getContext('2d');

                // Global Options
                Chart.defaults.global.defaultFontFamily = 'Lato';
                Chart.defaults.global.defaultFontSize = 18;
                Chart.defaults.global.defaultFontColor = '#777';

                //Create session and retrieve data from database
                <%
                    
                    Session sessionz = util.NewHibernateUtil.getSessionFactory().openSession();
                    Criteria gg = sessionz.createCriteria(pojo.Bill.class);
                    List<pojo.Bill> stockdetails = gg.list();
                   
                
                
                ArrayList<String> Bdate = new ArrayList<String>();
                ArrayList<String> MIncome = new ArrayList<String>();
                 for (pojo.Bill stc : stockdetails) {
                   Bdate.add("'"+stc.getDatez()+"'");
                   MIncome.add("'"+stc.getAmount()+"'");
                 } %> 
                         
                var IncomePopChart = new Chart(IncomeChart, {
                  type:'bar',
                  data:{
                    labels:<%= Bdate %>,
                    datasets:[{
                      label:'Income',
                      data:<%= MIncome %>,
                      
                    // bar colors
                      backgroundColor:[
                        'rgba(255, 99, 132, 0.6)',
                        'rgba(54, 162, 235, 0.6)',
                        'rgba(255, 206, 86, 0.6)',
                        'rgba(75, 192, 192, 0.6)',
                        'rgba(153, 102, 255, 0.6)',
                        'rgba(255, 159, 64, 0.6)',
                        'rgba(255, 99, 132, 0.6)'
                      ],
                      borderWidth:1,
                      borderColor:'#777',
                      hoverBorderWidth:3,
                      hoverBorderColor:'#000'
                    }]
                  },
                  options:{
                    title:{
                      display:true,
                      text:'Monthly Income',
                      fontSize:25
                    },
                    legend:{
                      display:true,
                      position:'right',
                      labels:{
                        fontColor:'#000'
                      }
                    },
                    layout:{
                      padding:{
                        left:50,
                        right:0,
                        bottom:0,
                        top:0
                      }
                    },
                    tooltips:{
                      enabled:true
                    }
                  }
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

