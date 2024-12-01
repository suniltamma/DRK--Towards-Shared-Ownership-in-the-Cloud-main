<%@page import="java.security.SecureRandom"%>
<%@page import="java.util.Random"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="DataBaseCon.DbConnection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%
    int sid = Integer.parseInt(request.getParameter("sid"));
    System.out.println(sid);
    String readperm = request.getParameter("read");
    System.out.println("read Value "+readperm);
    String writeperm = request.getParameter("write");
    String deleteperm = request.getParameter("Delete");
    System.out.println(readperm +"\t"+ writeperm + "\t"+deleteperm);
    Connection con = null;
    PreparedStatement ps = null;
    String readpermVal = null; 
    String writepermVal = null; 
    String deletepermVal = null; 
    if(readperm == null ){
     readpermVal = "no";
    }else if(readperm.equals("yes") ){
    readpermVal = "yes";
    }else{
    readpermVal = "no";
    }
    if(writeperm == null){
     writepermVal= "no";
    }
    else if(writeperm.equals("yes")){
     writepermVal = "yes";
    }else{
     writepermVal= "no";
    }
    if(deleteperm == null){
    deletepermVal="no";
    }
    else if(deleteperm.equals("yes")){
    deletepermVal = "yes";
    }else{
    deletepermVal="no";
    }
    
    try {
        con = DbConnection.getConnection();
        String query = "update oreq set  readperm = ? ,writeperm = ?, deleteperm=? where sid = ?";
        ps = con.prepareStatement(query);
        ps.setString(1, readpermVal);
        ps.setString(2, writepermVal);
        ps.setString(3, deletepermVal);
        ps.setInt(4, sid);
        int no = ps.executeUpdate();
        if(no > 0){
        out.println("<button type='button' onclick='javascript:window.close()'>Close</button>");
        }else{
        out.println("<button type='button' onclick='javascript:window.close()'>Discord</button>");
        }
   } catch (Exception e) {
        e.printStackTrace();
    }
        %>
    <button type='button' onclick='javascript:window.close()'>Close</button>