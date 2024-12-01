package DataBaseCon;
import java.util.*;
import FileReador.ContentExtractor;
import com.sun.org.apache.xerces.internal.impl.dv.util.Base64;


import DataBaseCon.DbConnection;
import FileReador.ContentExtractor;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.security.SecureRandom;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Random;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;
@MultipartConfig(maxFileSize = 16177215)
public class fileupload extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
int spce2=0; 
String id = request.getParameter("id");
String name1 = request.getParameter("name");        
HttpSession session=request.getSession(true);        
String name=(String)session.getAttribute("sharedkey");
int space=Integer.parseInt(session.getAttribute("space").toString());
        System.out.println(space);
InputStream inputStream = null;
        Part filePart = request.getPart("ofile");
       String fname= "";
         long size=filePart.getSize();
         System.out.println("filesize="+size);
         
String filetype=filePart.getContentType();
            // prints out some information for debugging
            System.out.println(filePart.getName());
           
            System.out.println(filePart.getContentType());  
            fname=filePart.getSubmittedFileName();
            // obtains input stream of the upload file
inputStream=filePart.getInputStream();           
//String str = ContentExtractor.getStringFromInputStream(filePart.getInputStream());                
Connection con = null;
PreparedStatement ps = null;
ResultSet rs1=null;
if(space>size){
    

String query="insert into filedetails(id,name,fname,file,size) values(?,?,?,?,?)";
try{
con = DbConnection.getConnection();
ps  = con.prepareStatement(query);
ps.setString(1, id);
ps.setString(2, name1);
ps.setString(3,fname);
ps.setBinaryStream(4, inputStream);
ps.setLong(5, size);
int no = ps.executeUpdate();

if(no>0){
    spce2=space-(int)size;
    String sql="update cloudservice set storage='"+spce2+"' where name='"+name+"'";    
    ps=con.prepareStatement(sql);
    int k=ps.executeUpdate();
if(k>0){
response.sendRedirect("oupload.jsp?msg=success");

}else{
response.sendRedirect("oupload.jsp?msg=updatefailed");    
}}else{response.sendRedirect("oupload.jsp?msg=success");}
}
catch(Exception e){
    e.printStackTrace();
        }}
    else{
response.sendRedirect("oupload.jsp?msg=updatefaileddue to lowspace");    
}
    
    }}