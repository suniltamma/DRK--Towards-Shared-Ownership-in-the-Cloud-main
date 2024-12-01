<%@page import="java.sql.PreparedStatement"%>
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
                    <li><a style="text-decoration: none;" href="ownerHome.jsp">Home</a></li>
                    <li><a style="text-decoration: none;" href="oreq.jsp">Owner Space Request</a></li>
                    <li><a style="text-decoration: none;" href="oreqaccept.jsp">request accept</a></li>
                    <li><a style="text-decoration: none;" href="osignin.jsp">Logout</a></li>
                </ul>   
            </nav>

        </div>
        <div style="background-image: url(images/a1.jpg); background-repeat:no-repeat; background-position:center; background-size:cover;" >
            <center> <br> <br><br><br>
                <h1 style="color:whitesmoke">Owner extra space Request</h1> <br> <div class="wrap-login100" >
                    <form id="verify" action="oreq1.jsp" method="post">

                        <div class="wrap-input100 validate-input" >
                            <select class="input100"  name="User_name">
                                <%
                                    String sharedkey = (String) session.getAttribute("sharedkey");
                                    System.out.println(sharedkey);
                                    Connection con = null;
                                    PreparedStatement ps = null;
                                    ResultSet rs = null;
                                    ResultSet rs1 = null;
                                    String User_name = null;

                                    try {
                                        //String query = "select name from ownerreg where sharedkey !='"+sharedkey+"' ";
                                        String query2 = "select storage,name1 from cloudservice where name !='" + sharedkey + "'";
                                        con = DbConnection.getConnection();

                                        ps = con.prepareStatement(query2);
                                        rs = ps.executeQuery();

                                        while (rs.next()) {
                                            User_name = rs.getString("name1");
                                            String availableMemo = rs.getString("storage");
                                            out.println("<option value=" + User_name + ">" + User_name + "&nbsp;Memeory " + availableMemo + " kb </option>");

                                        }

                                    } catch (Exception e) {
                                        System.out.println("Exception at " + e.getMessage());
                                    }

                                %>
                            </select>					
                            <span class="focus-input100"></span>
                        </div>
                        <div class="wrap-input100 validate-input">
                            <input class="input100" type="text" name="raowner">
                            <span class="focus-input100" data-placeholder="name"></span>
                        </div>  
                        <div class="wrap-input100 validate-input">
                            <input class="input100" type="text" name="requestedspace">
                            <span class="focus-input100" data-placeholder="space request"></span>

                        </div> 
                    </form>
                    <div class="container-login100-form-btn">
                        <div class="wrap-login100-form-btn">
                            <div class="login100-form-bgbtn"></div>
                            <button type="submit" form="verify"  class="login100-form-btn">
                                Sent Request
                            </button>
                        </div>
                    </div>
                    <br>
                </div>

            </center>
            <br> <br><br><br>
        </div>