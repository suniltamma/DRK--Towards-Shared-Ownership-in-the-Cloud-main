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

	<link rel="icon" type="image/png" href="tabler/images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="tabler/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="tabler/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="tabler/vendor/animate/animate.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="tabler/vendor/select2/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="tabler/vendor/perfect-scrollbar/perfect-scrollbar.css">
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
      <li><a style="text-decoration: none;" href="userHome.jsp">Home</a></li>
      <li><a style="text-decoration: none;" href="ufreq.jsp">Request Status</a></li>     
      <li><a style="text-decoration: none;" href="usignin.jsp">Logout</a></li>
    </ul>   
  </nav>
        
</div>
         <%
         String ownername=(String)session.getAttribute("ownername");
         System.out.println(ownername);
          %>
     <div style="background-image: url(images/f2.jpg); background-repeat:no-repeat; background-position:center; background-size:cover;">
         <br><br> 
      <br><br>
      <br><br>


  
    <div class="limiter">
		<div class="container-table100">
			<div class="wrap-table100">
				<div class="table100">
					<table >
						<thead>
							<tr class="table100-head">
                                                            <th class="column1">Rid</th>
							    <th class="column1">fid</th>
                                                            <th class="column2">Owner Name</th>
                                                            <th class="column2">file name</th>
                                                            <th class="column5">Request Status</th>
							</tr>
						</thead>
                                                 <%
                          int ofrid=0,fid=0;
                        String name=null,  fname=null, status=null,uname=(String)session.getAttribute("uname");
ResultSet rs=null; 

Connection con=null;
       String qry="select ofrid,fid,fname,name,status from userfreq where ruser='"+uname+"'";//nrmal
        
try
{
	 con = DbConnection.getConnection();
 
	PreparedStatement ps=con.prepareStatement(qry);

        rs =ps.executeQuery(qry);
	while(rs.next())
	{
        ofrid=rs.getInt("ofrid");       
    	fid=rs.getInt("fid");
        fname=rs.getString("fname");
        name=rs.getString("name");
        ;
	status=rs.getString("status");
%>
<tbody>
<tr>
<td class="column1"><%=ofrid%></td>
<td class="column1"><%=fid%></td>
<td class="column2"><%=name%></td>
<td class="column2"><%=fname%></td>

<td class="column2">
    <% if(status.equalsIgnoreCase("yes")){
        %><a href="ufileDownload.jsp?fid=<%=fid%>&&fname=<%=fname%>&&name=<%=name%>">Download File</a> <%
    }else{
        out.println(status);
    } %>
    </td>

</tr>

<%
}}
 catch(Exception e1)
{
 out.println(e1.getMessage());
 }
 %>	
								
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
     <br><br> 
      <br><br>
      <br><br>
         
      <br><br> 
      <br><br>
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