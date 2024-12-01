<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
<%@page import="DataBaseCon.DbConnection"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Towards</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
        <link href="layout/styles/layout.css" rel="stylesheet" type="text/css" media="all">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="fonts/iconic/css/material-design-iconic-font.min.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
        <!--===============================================================================================-->	
        <link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
        <!--===============================================================================================-->	
        <link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="css/util.css">
        <link rel="stylesheet" type="text/css" href="css/main.css">
        <!--===============================================================================================-->
    </head>
    <body id="top">
        <div class="wrapper row1">
            <header id="header" class="hoc clear"> 

                <div id="logo" style="align-content: center">
                    <center>   <h3 style="font-family: Poppins-Regular;font-size: 28px; padding: 20px;"><a style="text-decoration: none; " href="index.html" >Towards Shared Ownership In The Cloud</a></h3></center>
                </div>
            </header>
        </div>

        <div class="wrapper row2" >
            <nav id="mainav" class="hoc clear"> 
                <ul class="clear" style="float: center">

                    <li><a style="text-decoration: none;" href="Logout.jsp">Logout</a></li>

                </ul>
            </nav>
        </div>
        <div style="background-image: url(images/b4.jpg); background-repeat:no-repeat; background-position:center; background-size:cover;">
            <div>
                <center> <br> <br><br><br>
                    <h1 style="color:whitesmoke">Data Owners Memory Status </h1> <br> 
                    

                        <table>
                            <thead>
                                <tr class="table100-head">
                                    <th class="column1">S.No</th>
                                    <th class="column2">Access Key</th>
                                    <th class="column2">Name</th>
                                    <th class="column5">Ram</th>
                                    <th class="column5">Memory In KB</th>
                                   <!-- <th class="column6">Accept</th>-->

                                </tr>
                            </thead>
                            <%

                                ResultSet rs = null;
                                PreparedStatement ps = null;
                                Connection con = null;
                                try {
                                    con = DbConnection.getConnection();
                                    String qry = "select * from cloudservice where sts='no'";
                                    ps = con.prepareStatement(qry);
                                    rs = ps.executeQuery(qry);
                                    int sno = 0;
                                    while (rs.next()) {
                                        sno++;
                                        String acceskey = rs.getString("name");
                                        String name1 = rs.getString("name1");
                                        String ram = rs.getString("ram");
                                        long storage = rs.getLong("storage");


                            %>
                            <tbody>
                                <tr>
                                    <td class="column1"><%=sno%></td>
                                    <td class="column2"><%=acceskey%></td>
                                    <td class="column2"><%=name1%></td>
                                    <td class="column2"><%=ram%></td>
                                    <td class="column5"><%=storage%></td>
                                   <!-- <td class="column5"><a href="UploadMemory.jsp">Accept</a></td>-->

                                </tr>
                                <%
                                        }
                                    } catch (Exception e1) {
                                        out.println(e1.getMessage());
                                    }
                                %>	

                            </tbody>
                        </table>    

                        <br>



                    

                </center>
                <br> <br><br><br>
            </div>

        </div>


        <div class="wrapper row5">
            <div id="copyright" class="hoc clear"> 

                <p class="fl_left">Copyright &copy; 2018 - All Rights Reserved - <a href="index.html">TSOIC</a></p>
                <p class="fl_right">Template by <a target="_blank" href="index.html">TSOIC</a></p>

            </div>
        </div>
        <a id="backtotop" href="#top"><i class="fa fa-chevron-up"></i></a>

        <!--===============================================================================================-->
        <script src="vendor/jquery/jquery-3.2.1.min.js"></script>
        <!--===============================================================================================-->
        <script src="vendor/animsition/js/animsition.min.js"></script>
        <!--===============================================================================================-->
        <script src="vendor/bootstrap/js/popper.js"></script>
        <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
        <!--===============================================================================================-->
        <script src="vendor/select2/select2.min.js"></script>
        <!--===============================================================================================-->
        <script src="vendor/daterangepicker/moment.min.js"></script>
        <script src="vendor/daterangepicker/daterangepicker.js"></script>
        <!--===============================================================================================-->
        <script src="vendor/countdowntime/countdowntime.js"></script>
        <!--===============================================================================================-->
        <script src="js/main.js"></script>
    </body>
</html>