<%@page import="ownerspace.MailsSending"%>
<%@page import="java.util.Random"%>
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
              <li><a class="drop" style="text-decoration: none;" href="#">Owner Request</a>
          <ul>
            <li><a style="text-decoration: none;" href="oreq.jsp">owner space request</a></li>

            <li><a style="text-decoration: none;" href="ofreq.jsp">owner file request</a>
         <ul>
                <li><a style="text-decoration: none;" href="ofreq.jsp">Request for file</a></li>
                <li><a style="text-decoration: none;" href="ofareq.jsp">Request Accept</a></li>
                
              </ul>
          </li>
          </ul>
        </li>
      <li><a style="text-decoration: none;" href="ureq.jsp">User File Request</a></li>
      <li><a style="text-decoration: none;" href="oupload.jsp">File Upload</a></li>
      <li  class="active"><a style="text-decoration: none;" href="fileDownload.jsp">File Download</a></li>
      <li><a style="text-decoration: none;" href="osignin.jsp">Logout</a></li>
    </ul>
  </nav>
</div>
       <div style="background-image: url(images/b4.jpg); background-repeat:no-repeat; background-position:center; background-size:cover;">
    <div>
        <center> <br> <br><br><br>
            <h1 style="color:whitesmoke">Delete OTP Checking</h1> <br> <div class="wrap-login100" >
                <% 
                String fid = request.getParameter("fid");
                String sid = request.getParameter("sid");
                int genOtp = (new Random()).nextInt(900000)+100000;
                String email = session.getAttribute("ownerEmail").toString();
                String sub = "Delete Otp From Cloud Server";
                String msg = "Dear user this is OTP = "+genOtp+" and File id "+fid+" of the Sid "+sid;
                MailsSending ms = new MailsSending();
                ms.sendMail(msg, sub, email, email);
                %>
             <form id="verify" action="OTPVerify.jsp" method="post">
                                        <div class="wrap-input100 validate-input">
						<input class="input100" type="text" name="otp">
						<span class="focus-input100" data-placeholder="Enter OTP"></span>
					</div>
                 <input type="hidden" name="fid" value="<%=fid%>">
                 <input type="hidden" name="sid" value="<%=sid%>">
                 <input type="hidden" name="originalOtp" value="<%=genOtp%>">
                 
					</form>
					<div class="container-login100-form-btn">
						<div class="wrap-login100-form-btn">
							<div class="login100-form-bgbtn"></div>
                                                        <button type="submit" form="verify"  class="login100-form-btn">
                                                          Check Otp
                                                        </button>
						</div>
					</div>
                <br>

                <a href="Ownesginup.jsp"> Click here for new registration</a>
				
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