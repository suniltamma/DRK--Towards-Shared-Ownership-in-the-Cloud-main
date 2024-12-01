package ownerspace;

import DataBaseCon.DbConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author Ramu Maloth
 */
public class ownerspace{

    private Connection con = null;
    private PreparedStatement ps = null;
    private ResultSet rs = null;

  
  public long aownerSpace(String uname){
      System.out.println("Original Owner "+uname);
  long availmemory=0;
  try {
            con = DbConnection.getConnection();
            String query = "select storage from cloudservice where name = ?";
            ps = con.prepareStatement(query);
            ps.setString(1, uname);
            rs = ps.executeQuery();
            if (rs.next()) {
                availmemory = rs.getInt(1);
            }
        } catch (Exception e) {
            System.out.println("Error at getting user memory " + e.getMessage());
        } finally {
            try {
                rs.close();
                ps.close();                
                con.close();
            } catch (Exception e) {
            }
        }
  
  return availmemory;
  } 
  
  
   public long rownerSpace(String uname){
  long availmemoryy=0;
       System.out.println("User Name "+uname);
  try {
            con = DbConnection.getConnection();
            String query = "select storage from cloudservice where name = ?";
            ps = con.prepareStatement(query);
            ps.setString(1, uname);
            rs = ps.executeQuery();
            if (rs.next()) {
                availmemoryy = rs.getInt(1);
            }
        } catch (Exception e) {
            System.out.println("Error at getting user memory " + e.getMessage());
        } finally {
            try {
                rs.close();
                ps.close();                
                con.close();
            } catch (Exception e) {
            }
        }
  
  return availmemoryy;
  } 
  
   public boolean updateaownerSpace(String uname, long mem1) {
        boolean flag = false;
        System.out.println("Uname is "+uname);
        try {
            String query = "update cloudservice set storage = ? where name = ?";
            con = DbConnection.getConnection();
            ps = con.prepareStatement(query);
            ps.setLong(1, mem1);
            ps.setString(2, uname);
            int no = ps.executeUpdate();
            if (no > 0) {
                flag = true;
            }
        } catch (Exception e) {
            System.out.println("Error frm user memory update " + e.getMessage());
        } finally {
            try {
                ps.close();
                con.close();
            } catch (Exception e) {
            }
        }
        return flag;
    }
   public boolean updaterownerSpace(String uname1, long mem2) {
        boolean flag = true;
        System.out.println("unameis   asdasd "+uname1);
        try {
            String query = "update cloudservice set storage = ? where name = ?";
            con = DbConnection.getConnection();
            ps = con.prepareStatement(query);
            ps.setLong(1, mem2);
            ps.setString(2, uname1);
            int no = ps.executeUpdate();
            if (no > 0) {
                flag = true;
            }
        } catch (Exception e) {
            System.out.println("Error frm user memory update " + e.getMessage());
        } finally {
            try {
                ps.close();
                con.close();
            } catch (Exception e) {
            }
        }
        return flag;
    }
   
      public boolean updaeStaus(String uname2, int rid) {
        boolean flag = false;
          
        try {
            String query = "update reqspace set requestedStatus = ? where rid = ?";
            con = DbConnection.getConnection();
            ps = con.prepareStatement(query);
            ps.setString(1, uname2);
            ps.setInt(2, rid);
            int no = ps.executeUpdate();
            if (no > 0) {
                flag = true;
            }
        } catch (Exception e) {
            System.out.println("Error frm user memory update " + e.getMessage());
        } finally {
            try {
                ps.close();
                con.close();
            } catch (Exception e) {
            }
        }
        return flag;
    }
  
}
