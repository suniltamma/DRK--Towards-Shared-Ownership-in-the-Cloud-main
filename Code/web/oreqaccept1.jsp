 <%@page import="java.sql.Statement"%>
<%@page import="DataBaseCon.DbConnection"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="ownerspace.ownerspace"%>


     <%
         String raowner=request.getParameter("raowner");
         String rowner=request.getParameter("rowner");
         String rid=request.getParameter("rid");
         
         String uname2="yes";
         int id=Integer.parseInt(rid);
         String space=request.getParameter("rspace");
         long rspace=Long.parseLong(space);
         ownerspace os=new ownerspace();
         int aownerspce=os.aownerSpace(rowner);
         System.out.println("thr aceept"+aownerspce);
         int rownerSpace=os.rownerSpace(raowner);
         System.out.println("the request"+rownerSpace);
         long mem1=aownerspce - (int)rspace;
         long mem2=rownerSpace + (int)rspace;
         System.out.println("memory"+mem2);
         boolean frmsts = os.updateaownerSpace(rowner, mem1);
         boolean frmsts1 = os.updaterownerSpace(raowner, mem2);
         if(frmsts == true & frmsts1==true){
         boolean up1=os.updaeStaus(uname2, id);
         if(up1==true){
         response.sendRedirect("oaccept.jsp?rid="+id+"");
         }
         }
                %>
