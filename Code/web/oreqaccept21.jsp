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
         System.out.println("Request ID "+id+" Rao Owner "+raowner+" RoOwner "+rowner+" RequestSpace "+rspace);
         
         ownerspace os=new ownerspace();
         long aownerspce=os.aownerSpace(rowner);
         System.out.println("AvailableSpace1 "+aownerspce);
         long rownerSpace=os.rownerSpace(raowner);
          System.out.println("AvailableSpace1 "+rownerSpace);
         long mem1=aownerspce - (int)rspace;
         long mem2=rownerSpace + (int)rspace;
         System.out.println("Mem1 ="+mem1);
         System.out.println("Mem2 = "+mem2);
         boolean frmsts = os.updateaownerSpace(rowner, mem1);
         boolean frmsts1 = os.updaterownerSpace(raowner, mem2);
          System.out.println("Upl Value is "+frmsts1);
         if(frmsts == true && frmsts1==true){
         boolean up1=os.updaeStaus(uname2, id);
        
         if(up1==true){
         response.sendRedirect("OwnerRequest.jsp?rid="+id+"");
         }
         }
                %>
