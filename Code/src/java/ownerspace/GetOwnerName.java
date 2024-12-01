/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ownerspace;

import DataBaseCon.DbConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author Ch.Sravani
 */
public class GetOwnerName {
    private Connection con = null;
    private PreparedStatement ps = null;
    private ResultSet rs = null;
    
    public String getOwnerNameBasedAccessKey(String accesskey){
    String ownername = null;
        try {
            con = DbConnection.getConnection();
            ps = con.prepareStatement("select name from ownerreg where sharedkey = ?");
            ps.setString(1, accesskey);
            rs = ps.executeQuery();
            if(rs.next()){
            ownername = rs.getString("name");
            }
        } catch (Exception e) {
            System.out.println("Exception is "+e.getMessage());
        }finally{
            try {
                rs.close();
                ps.close();
                con.close();
            } catch (Exception e) {
            }
        }
    return ownername;
    }
}
