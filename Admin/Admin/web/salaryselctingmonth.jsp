<html>

    <head>
        <title>Choose Month</title>



        <script>



            function mm() {
                var salarymonth = document.getElementById("monthz").value;
                alert(salarymonth);
                window.location = "SalaryHistory.jsp?salmon=" + salarymonth;

            }
        </script>
    </head>



    <lable> Select The Month</lable>
    <select id="monthz">
        <option>01</option>
        <option>02</option>
        <option>03</option>
        <option>04</option>
        <option>05</option>

    </select>

    <button onclick="mm()">View Details</button>
</html>