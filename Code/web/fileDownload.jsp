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

        <div class="wrapper row2">
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
       <li class="active"><a  style="text-decoration: none;" href="fileDownload.jsp">File Download</a></li>
      <li><a style="text-decoration: none;" href="osignin.jsp">Logout</a></li>
    </ul>   
  </nav>
        
</div>
        <div style="background-image: url(images/a1.jpg); background-repeat:no-repeat; background-position:center; background-size:cover;">
         <br><br><br><br><br>
<div class="limiter">
		<div class="container-table100">
			<div class="wrap-table100">
				<div class="table100">
					<table>
						<thead>
							<tr class="table100-head">
								<th class="column1">fid</th>
                                                                <th class="column1">id</th>
								<th class="column1">Owner name</th>
								<th class="column2">file name</th>
                                                                <th class="column1">Read</th>
                                                              <th class="column1">Write</th>
                                                              <th class="column1">Delete</th>
                                                              <th class="column1">Download-</th>
							</tr>
						</thead>
                                                 <%
		 String oname=(String)session.getAttribute("name");
         String skey1=null;
        String skey=null;
         String sql1="select sid,skey,id,fid,name,fname,readperm,writeperm,deleteperm from oreq where reqowner='"+oname+"' and skey !='"+skey1+"'";
Connection con=null;
ResultSet rs=null;

try
{
	con = DbConnection.getConnection();
        int id=0,fid=0,sid=0;
        String fname=null,name=null,readperm=null,writeperm=null,deleteperm=null;
       	PreparedStatement ps=con.prepareStatement(sql1);
        rs =ps.executeQuery();
	while(rs.next())
	{
        sid=rs.getInt("sid");
    	fid=rs.getInt("fid");
	id=rs.getInt("id");
	name=rs.getString("name");
	fname=rs.getString("fname");
        readperm=rs.getString("readperm");
	writeperm=rs.getString("writeperm");
        deleteperm=rs.getString("deleteperm");
        skey=rs.getString("skey");
        System.out.println(skey);
%>
<tbody>
<tr>
<td class="column1"><%=fid%></td>
<td class="column1"><%=id%></td>
<td class="column1"><%=name%></td>
<td class="column1"><%=fname%></td>
<%
    if(readperm.equals("yes")){%>
    <td class="column1"><a style="text-decoration: none;" href="readf.jsp?fid=<%=fid%>">Read</a></td>
<% 
}
else{%>
<td class="column1">no access</td>
<%
}
%>
 <%
    if(writeperm.equals("yes")){ %>
    <td class="column1"><a style="text-decoration: none;" href="writef.jsp?fid=<%=fid%>">Write</a></td>
<% 
}
else{ 
%>
<td class="column1">no access</td>
<%
}
%>
  <%
    if(deleteperm.equals("yes")){%>
    <td class="column1"><a style="text-decoration: none;" href="OtpCheck.jsp?fid=<%=fid%>&&sid=<%=sid%>">CheckOtp</a></td>
   <!-- <td class="column1"><a style="text-decoration: none;" href="Deletef.jsp?fid=<%=fid%>&&sid=<%=sid%>">Delete</a></td>-->
<% 
}
else{%>
<td class="column1">no access</td>
<%
}
%>
<%
    if(skey != null & (readperm.equals("yes") || writeperm.equals("yes"))){%>
    <td class="column1"><a style="text-decoration: none;" href="fileDownload1.jsp?fid=<%=fid%>&&sid=<%=sid%>">Download</a></td>
<% 
}
else{%>
<td class="column1">no access</td>
<%
}
%>
</tr>
<%	  
}

}catch(Exception e1)
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
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<div class="wrapper row5">
  <div id="copyright" class="hoc clear"> 

    <p class="fl_left">Copyright &copy; 2018 - All Rights Reserved - <a href="index.html">TSIOC</a></p>
    <p class="fl_right">Template by <a target="_blank" href="index.html">TSOIC</a></p>
  
  </div>
</div>
 </div>
 </body>
 </html>