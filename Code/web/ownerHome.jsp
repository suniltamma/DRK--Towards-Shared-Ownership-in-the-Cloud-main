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
      <li><a style="text-decoration: none;" href="fileDownload.jsp">File Download</a></li>
      <li><a style="text-decoration: none;" href="osignin.jsp">Logout</a></li>
    </ul>   
  </nav>

</div>
         <%
         String sharedkey=(String)session.getAttribute("sharedkey");
         System.out.println("setarea"+sharedkey);
       int oid=(Integer)session.getAttribute("ownerId");
           
          %>
     <div style="background-image: url(images/b4.jpg); background-repeat:no-repeat; background-position:center; background-size:cover;">
        <br><br><br><br>
         <center><h1 style="color:#ffff00; font-style: bold">Access key&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <%=sharedkey%></h1></center>
         <div>
    <br> 

            <br> 
           <center> <div class="wrap-login100">
           <p style="color:brown; font-size: 24px">Available Space</p> 
		   <%
         String sharedkey1=(String)session.getAttribute("sharedkey");
         System.out.println("setarea"+sharedkey);
         Connection con=null;
         PreparedStatement ps=null;
         ResultSet rs=null;
         ResultSet rs1=null;
         int space=0;
         try{
             con=DbConnection.getConnection();
             String sql="select storage from cloudservice where name='"+sharedkey1+"'";
             ps=con.prepareStatement(sql);
             rs=ps.executeQuery();
             while(rs.next()){
          space=rs.getInt("storage");
     System.out.println(space);
             }
             
           session.setAttribute("space",space);

}catch(Exception e){
        e.printStackTrace();
}%>

<h1><%=space%>&nbsp;KB</h1>
			</div></center>
 <br> <br><br><br>
       </div>
  
    
         <br><br><br>
        <br><br>       
   
     </div> 
       
      <div class="wrapper row5">
  <div id="copyright" class="hoc clear"> 

    <p class="fl_left">Copyright &copy; 2018 - All Rights Reserved - <a href="index.html">TSIOC</a></p>
    <p class="fl_right">Template by <a target="_blank" href="index.html">TSOIC</a></p>
  
  </div>
</div>
    </body>
</html>