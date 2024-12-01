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
String fid=request.getParameter("fid");
String hkeystatus="yes";
  String sharedkey = null;
    Random RANDOM = new SecureRandom();
    int mac1_LENGTH = 7;
    String letters = "0123456789";
    String uid = "";
    for (int i = 0; i < mac1_LENGTH; i++) {
        int index = (int) (RANDOM.nextDouble() * letters.length());
        uid += letters.substring(index, index + 1);
    }
  sharedkey=uid;
Connection con=null;
PreparedStatement ps=null; 
try{

con=DbConnection.getConnection();
 String qry="insert into ownerreg(name,password,email,gender,mobile,state,sharedkey)values(?,?,?,?,?,?,?)";
 ps=con.prepareStatement(qry);
ps.setString(1, name);
ps.setString(2, password);
ps.setString(3, email);
ps.setString(4, gender);
ps.setString(5, mobile);
ps.setString(6, state);
ps.setString(7, sharedkey);
int row=ps.executeUpdate();
    if (row > 0) { 
        
             response.sendRedirect("osignin.jsp?msg=success");
              }else{
            request.setAttribute("failed", "Registration failed");
                response.sendRedirect("osignin.jsp?msg=faild");
                          //rd.forward(request, response); 
            }
}catch(Exception e){ 
    System.out.println("checkonce");
        e.printStackTrace();
        }
%>
</html>
