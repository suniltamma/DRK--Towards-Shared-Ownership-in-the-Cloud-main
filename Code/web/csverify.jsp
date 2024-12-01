<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="DataBaseCon.DbConnection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<html>
 <%
     String name=request.getParameter("name");
    session.setAttribute("rocloud", name);
    if(name.equalsIgnoreCase("Cloud")){
    response.sendRedirect("CloudMemAccept.jsp");
    }else{
     int sum=0;
     int space=0;
    
    System.out.println(name);
Connection con=null;
PreparedStatement ps=null;
ResultSet rs=null; 
ResultSet rs1=null;
try{
con=DbConnection.getConnection();
String sql="select * from cloudservice where name='"+name+"' ";
String sql1="select storage  from cloudservice where name='"+name+"' ";

ps=con.prepareStatement(sql);
rs=ps.executeQuery();

if(rs.next()){
ps=con.prepareStatement(sql1);
rs1=ps.executeQuery(sql1);
while(rs1.next()){
   sum=rs1.getInt(1);
   System.out.println(sum);
   space=space+sum;
}
session.setAttribute("name", name);
session.setAttribute("space",space);
System.out.println("space"+space);
if(space>1000){
response.sendRedirect("update.jsp?space="+space+"&&name="+name+"");
}
else if(space>=1 && space<10){
response.sendRedirect("update.jsp?space="+space+"&&name="+name+"");
}else{
out.println("<script type=\"text/javascript\">");
out.println("alert('You reach max limit');");
out.println("location='cloudService.jsp';");
out.println("</script>");
}
}
else{

out.println("<script type=\"text/javascript\">");
out.println("alert('You donot have a cloud service ...please click here  to create cloud service');");
out.println("location='cloudService.jsp';");
out.println("</script>");
}



}catch(Exception e){
e.printStackTrace();
}
   }
%>