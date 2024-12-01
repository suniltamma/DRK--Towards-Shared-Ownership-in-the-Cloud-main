<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="DataBaseCon.DbConnection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<html>
 <%
    String uname=request.getParameter("name");
       session.setAttribute("uname", uname);
String password=request.getParameter("password");
String ownername=null;
Connection con=null;
PreparedStatement ps=null;
ResultSet rs=null; 
try{
con=DbConnection.getConnection();
String sql="select name,password,ownername from userreg where name='"+uname+"' and password='"+password+"' ";
ps=con.prepareStatement(sql);
rs=ps.executeQuery();
if(rs.next()){
     ownername=rs.getString("ownername");
    session.setAttribute("ownername", ownername);
    uname=rs.getString("name");
 
    System.out.println(ownername);
response.sendRedirect("userHome.jsp");
}
else{
response.sendRedirect("index.jsp?msg=fail");
}



}catch(Exception e){
e.printStackTrace();
}
%>