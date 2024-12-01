<%@page import="ownerspace.GetOwnerName"%>
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
                    <li><a style="text-decoration: none;" href="update.jsp">Home</a></li>
                    <li class="active"><a style="text-decoration: none;" href="OwnerRequest.jsp">Request</a></li>     
                    <li><a style="text-decoration: none;" href="Logout.jsp">Logout</a></li>

                </ul>
            </nav>
        </div>
        <div style="background-image: url(images/b4.jpg); background-repeat:no-repeat; background-position:center; background-size:cover;">
            <div>
                <center> <br> <br><br><br>
                    <h1 style="color:whitesmoke">Owners Requests </h1> <br> <div class="wrap-login100" >

                        <br>
                        <table>
                            <thead>
                                <tr class="table100-head">
                                    <th class="column1">Rid</th>
                                    <th class="column2">Requested Owner name</th>
                                    <th class="column2">Requested Space</th>
                                    <th class="column5">Response</th>

                                </tr>
                            </thead>
                            <%

                                ///String sharedkey=(String)session.getAttribute("sharedkey");
                                String rstatus = "no", rowner = (String) session.getAttribute("rocloud"), raowner = null;
                               
                                int requestedspace = 0, rid = 0;
                                GetOwnerName gon = new GetOwnerName();
                                String onNameis = gon.getOwnerNameBasedAccessKey(rowner);
                              
                                ResultSet rs = null;

                                Connection con = null;
                                try {
                                    con = DbConnection.getConnection();
                                    String qry = "select rid,raowner,requestedspace from reqspace where raowner='" + onNameis + "' and requestedStatus='" + rstatus + "'";
                                    System.out.println("Query "+qry);
                                    PreparedStatement ps = con.prepareStatement(qry);

                                    rs = ps.executeQuery(qry);
                                    while (rs.next()) {
                                        rid = rs.getInt("rid");
                                        raowner = rs.getString("raowner");
                                        requestedspace = rs.getInt("requestedspace");


                            %>
                            <tbody>
                                <tr>
                                    <td class="column1"><%=rid%></td>
                                    <td class="column2"><%=raowner%></td>
                                    <td class="column2"><%=requestedspace%></td>


                                    <td class="column5"><a href="oreqaccept21.jsp?rid=<%=rid%>&&raowner=<%=raowner%>&&rspace=<%=requestedspace%>&&rowner=<%=rowner%>">Accept</a></td>

                                </tr>
                                <%
                                        }
                                    } catch (Exception e1) {
                                        out.println(e1.getMessage());
                                    }
                                %>	

                            </tbody>
                        </table>



                    </div>

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