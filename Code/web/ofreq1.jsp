<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="DataBaseCon.DbConnection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%
    String reqowner=request.getParameter("reqowner");
    System.out.println(reqowner);
			int fid=Integer.parseInt(request.getParameter("fid"));
                        System.out.println(fid);
                        int id=Integer.parseInt(request.getParameter("id"));
                        System.out.println(id);
                        String name=request.getParameter("name");
                        System.out.println(name);
                              String  fname=request.getParameter("fname");
                              System.out.println(fname);
                              String skey="Not Genrated";
 Connection con=null;
try{
                            con = DbConnection.getConnection();
String qry1="insert into oreq(fid,id,name,reqowner,fname,skey) values(?,?,?,?,?,?) ";
PreparedStatement ps1=con.prepareStatement(qry1);
ps1.setInt(1, fid);
ps1.setInt(2, id);
ps1.setString(3, name);
ps1.setString(4, reqowner);
ps1.setString(5, fname);
ps1.setString(6, skey);
int k=0;
k=ps1.executeUpdate();
if(k>0){
response.sendRedirect("ofreq.jsp?msg=sucess");
}else{
response.sendRedirect("ofreq.jsp?msg=failure");
}
}catch(Exception e){
                            
out.println( e);
                       
                        }
%>