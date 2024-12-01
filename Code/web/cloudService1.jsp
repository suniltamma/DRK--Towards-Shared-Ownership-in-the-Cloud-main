<html>
<%@page import="DataBaseCon.DbConnection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>

<%
String name=request.getParameter("name");
String name1=request.getParameter("name1");
String ram=request.getParameter("ram");
String  storage=request.getParameter("storage");
int s=Integer.parseInt(storage);
int s1=s*1024;
String support=request.getParameter("support");
Connection con=null;
PreparedStatement ps=null; 
try{

con=DbConnection.getConnection();

 String qry="insert into cloudservice(name,name1,ram,storage,support)values(?,?,?,?,?)";
 ps=con.prepareStatement(qry);
ps.setString(1, name);
ps.setString(2,name1);
ps.setString(3, ram);
ps.setInt(4, s1);
ps.setString(5, support);
int row=ps.executeUpdate();
    if (row > 0) { 
        System.out.println("Sucess"+name+"ram="+support);
             response.sendRedirect("cloudService.jsp?msg=success");
              }else{
            request.setAttribute("failed", "Registration failed");
                response.sendRedirect("cloudService.jsp?msg=faild");
                          //rd.forward(request, response); 
            }
}catch(Exception e){ 
    System.out.println("checkonce");
        e.printStackTrace();
        }
%>
</html>