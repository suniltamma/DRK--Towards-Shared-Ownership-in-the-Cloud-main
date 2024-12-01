 <%@page import="java.sql.Statement"%>
<%@page import="DataBaseCon.DbConnection"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>


     <%
               String cspace=(String)session.getAttribute("space").toString();
               System.out.println(cspace);
               int st1=Integer.parseInt(cspace);
               String uspace=request.getParameter("uspace").toString();
               System.out.println(cspace);
               
               int st2=Integer.parseInt(uspace);
               int storage=0;
               storage=st1+st2;
               String name=(String)session.getAttribute("name");
                Connection con =null;
                ResultSet rs=null;
                try{
               con= DbConnection.getConnection();
        String qry="update cloudservice set storage='"+storage+"' where name='"+name+"' ";
	Statement st=con.createStatement();
       int i = st.executeUpdate(qry);

if(i>0){
response.sendRedirect("update.jsp?space="+storage+"&&name="+name+"");
}    
else{
out.println("<script type=\"text/javascript\">");
out.println("alert('You reach max limit');");
out.println("location='cloudService.jsp';");
out.println("</script>");


}
}

      catch(Exception e){
e.printStackTrace();
}     %>
