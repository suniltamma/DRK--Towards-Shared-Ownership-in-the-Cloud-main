 <%@page import="java.sql.Statement"%>
<%@page import="DataBaseCon.DbConnection"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>


     <%
              int ofrid=Integer.parseInt(request.getParameter("ofrid").toString());
              String status="yes";
                Connection con =null;
                ResultSet rs=null;
                try{
               con= DbConnection.getConnection();
        String qry="update userfreq set status='"+status+"' where ofrid='"+ofrid+"' ";
	Statement st=con.createStatement();

int i=st.executeUpdate(qry);
if(i>0){
response.sendRedirect("ureq.jsp?msg=updatedSucessfully");
}    
else{
response.sendRedirect("ureq.jsp?msg=updatedFailure");

}

      }catch(Exception e){
e.printStackTrace();
}     %>

