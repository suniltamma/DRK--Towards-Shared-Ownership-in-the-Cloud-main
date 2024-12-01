<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="DataBaseCon.DbConnection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%
String data=request.getParameter("writef");    
String fid=request.getParameter("fid");
Connection con=null;
Statement st=null;
try{
con=DbConnection.getConnection();
st=con.createStatement();
int i=st.executeUpdate("update filedetails set file='"+data+"' where fid='"+fid+"'");
if(i!=0){
response.sendRedirect("fileDownload.jsp?msg=updationSucessfully");
}else{
response.sendRedirect("fileDownload.jsp?msg=updationFailure");
}
}catch(Exception e){}


    %>