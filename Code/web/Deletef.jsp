<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="DataBaseCon.DbConnection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%
    
String fid=request.getParameter("fid");
String sid=request.getParameter("sid");
System.out.println(fid+""+sid);
Connection con=null;
Statement st=null;
Statement st1=null;
try{
con=DbConnection.getConnection();
st=con.createStatement();
int i=st.executeUpdate("delete  from  filedetails where fid='"+fid+"'");
if(i!=0){

st1=con.createStatement();
int k=st1.executeUpdate("delete  from  oreq where fid='"+fid+"'and sid='"+sid+"'");
if(k>0){
response.sendRedirect("fileDownload.jsp?msg=DeleteSucessfully");
}
}else{
response.sendRedirect("fileDownload.jsp?msg=DeleteFailure");
}
}catch(Exception e){}


    %>