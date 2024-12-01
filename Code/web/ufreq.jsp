<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="DataBaseCon.DbConnection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<html>
 <% 
String uname=(String)session.getAttribute("uname");
String name=request.getParameter("name");
int fid=Integer.parseInt(request.getParameter("fid"));
String fname=request.getParameter("fname");
String status="not accepted";
Connection con=null;
PreparedStatement ps=null;
ResultSet rs=null; 
try{
con=DbConnection.getConnection();
String sql1="insert into userfreq(fid,fname,name,ruser,status)values(?,?,?,?,?)";
 ps=con.prepareStatement(sql1);
ps.setInt(1, fid);
ps.setString(2, fname);
ps.setString(3, name);
ps.setString(4, uname);
ps.setString(5, status);
int row=ps.executeUpdate();
if(row>0){
response.sendRedirect("userHome.jsp?msg=requestUpdatedSucessfullly");
}
else{
response.sendRedirect("userHome.jsp?msg=fail");
}



}catch(Exception e){
e.printStackTrace();
}
%>
