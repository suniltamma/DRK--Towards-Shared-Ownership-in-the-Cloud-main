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
   <div style="background-image: url(images/abstract.jpg); background-repeat:no-repeat; background-position:center; background-size:cover;">
    <div class="wrapper row2" >
  <nav id="mainav" class="hoc clear"> 
   
    <ul class="clear" style="float: center">
      <li><a style="text-decoration: none;" href="index.html">Home</a></li>
      <li><a style="text-decoration: none;" href="osignin.jsp">Data Owner</a></li>
      <li><a style="text-decoration: none;" href="usignin.jsp">Data User</a></li>
      <li class="active"><a style="text-decoration: none;" href="cloudService.jsp">Cloud Service</a></li>
      <li><a href="cloudverify.jsp">Cloud</a></li>
    </ul>
    
  </nav>
</div>
     <center> <br> <br> <br><br> <div class="wrap-login100" >
             <form id="service" action="cloudService1.jsp" method="post">
                                        <div class="wrap-input100 validate-input">
						<input class="input100" type="text" name="name">
						<span class="focus-input100" data-placeholder="Accesskey"></span>
					</div>
                 <div class="wrap-input100 validate-input">
						<input class="input100" type="text" name="name1">
						<span class="focus-input100" data-placeholder="name"></span>
					</div>
                                        <div class="wrap-input100 validate-input" >
						<input class="input100" type="text" name="ram">
						<span class="focus-input100" data-placeholder="Ram"></span>
					</div>
                                        <div class="wrap-input100 validate-input" >
						<input class="input100" type="number" name="storage">
						<span class="focus-input100" data-placeholder="Storage in Mega Bytes"></span>
					</div>
                                          <div class="wrap-input100 validate-input" >
						<input class="input100" type="text" name="support">
						<span class="focus-input100" data-placeholder="Support"></span>
					</div>
					</form>
					<div class="container-login100-form-btn">
						<div class="wrap-login100-form-btn">
							<div class="login100-form-bgbtn"></div>
                                                        <button type="submit" form="service"  class="login100-form-btn">
                                                            Create Service
                                                        </button>
						</div>
					</div>

					
				
			</div>
         
          </center>
       <br><br><br><br>
       </div>
    <div class="wrapper row5">
  <div id="copyright" class="hoc clear"> 

    <p class="fl_left">Copyright &copy; 2018 - All Rights Reserved - <a href="index.html">TSIOC</a></p>
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
