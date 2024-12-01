<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="DataBaseCon.DbConnection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<html>
 <%
    String name=request.getParameter("name");
String password=request.getParameter("password");
String sharedkey=null;

int ownerId=0;
Connection con=null;
PreparedStatement ps=null;
ResultSet rs=null; 

try{
con=DbConnection.getConnection();
String sql="select ownerId,name,password,sharedkey,email from ownerreg where name='"+name+"' and password='"+password+"' ";

ps=con.prepareStatement(sql);
rs=ps.executeQuery();
if(rs.next()){
    String ownerEmail = rs.getString("email");
    sharedkey=rs.getString("sharedkey");
    session.setAttribute("sharedkey", sharedkey);
    session.setAttribute("name",name);
    ownerId=rs.getInt(1);
    session.setAttribute("ownerId",ownerId);
    System.out.println(sharedkey);
    session.setAttribute("name",name);
    session.setAttribute("ownerEmail", ownerEmail);
response.sendRedirect("ownerHome.jsp?msg=sucess");
}
else{
response.sendRedirect("osignin.jsp?msg=fail");
}



}catch(Exception e){
e.printStackTrace();
}
%>