<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="DataBaseCon.DbConnection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<html>
    <%
        String rowner = request.getParameter("User_name");
        String raowner = request.getParameter("raowner");
        String requestedS = request.getParameter("requestedspace");
        int req = Integer.parseInt(requestedS);
        int k = 0;
        String sharedkey = (String) session.getAttribute("sharedkey");

        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;

        try {
            con = DbConnection.getConnection();

            String qry = "insert into reqspace(rowner,raowner,requestedspace,rkey)values(?,?,?,?)";
            ps = con.prepareStatement(qry);
   //ps.setString(1, rowner);
            ps.setString(1, sharedkey);
            ps.setString(2, raowner);
            ps.setInt(3, req);
            ps.setString(4, sharedkey);

            k = ps.executeUpdate();
            if (k > 0) {
                response.sendRedirect("oreq.jsp?msg=sucess");
            } else {
                response.sendRedirect("oreq.jsp?msg=sucess");
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
    %>