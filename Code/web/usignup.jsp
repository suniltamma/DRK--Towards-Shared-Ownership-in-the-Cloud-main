<%-- 
    Document   : osignup
    Created on : Oct 23, 2018, 12:48:20 PM
    Author     : Datapoint
--%>

<%@page import="java.security.SecureRandom"%>
<%@page import="java.util.Random"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="DataBaseCon.DbConnection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<html>
  <%
String name=request.getParameter("name");
String password=request.getParameter("password");
String email=request.getParameter("email");
String gender=request.getParameter("gender");
String mobile=request.getParameter("mobile");
String state=request.getParameter("state");
String ownername=request.getParameter("ownername");
String sharedkey="no";
Connection con=null;
PreparedStatement ps=null; 
try{

con=DbConnection.getConnection();
 String qry="insert into userreg(name,password,email,gender,mobile,state,sharedkey,ownername)values(?,?,?,?,?,?,?,?)";
 ps=con.prepareStatement(qry);
ps.setString(1, name);
ps.setString(2, password);
ps.setString(3, email);
ps.setString(4, gender);
ps.setString(5, mobile);
ps.setString(6, state);
ps.setString(7, sharedkey);
ps.setString(8, ownername);
int row=ps.executeUpdate();
    if (row > 0) { 
        
             response.sendRedirect("UserSignup.jsp?msg=success");
              }else{
            request.setAttribute("failed", "Registration failed");
                response.sendRedirect("Usersignup.jsp?msg=faild");
                          //rd.forward(request, response); 
            }
}catch(Exception e){ 
    System.out.println("checkonce");
        e.printStackTrace();
        }
%>
</html>
