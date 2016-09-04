/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package TransitionWebsite1;

import Utilities.DBAccess;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import javax.servlet.ServletException;

/**
 *
 * @author George
 */
public class Transition{ 

    
    private int transitionID;
    private int keyDiff;
    private int BPMDiff;
    private String embedLink;


public Transition()
{}

public Transition (int transID, int kDiff, int BDiff, String eLink){

    transitionID = transID;
    keyDiff = kDiff;
    BPMDiff = BDiff;
    embedLink = eLink;
    
}

public Transition (int kDiff, int BDiff, String eLink){

    keyDiff = kDiff;
    BPMDiff = BDiff;
    embedLink = eLink;
    
}

public Transition (int transID){

    transitionID = transID;
    
}
    /**
     * @return the transitionID
     */
    public int getTransitionID() {
        return transitionID;
    }

    /**
     * @param transitionID the transitionID to set
     */
    public void setTransitionID(int transitionID) {
        this.transitionID = transitionID;
    }

    /**
     * @return the keyDiff
     */
    public int getKeyDiff() {
        return keyDiff;
    }

    /**
     * @param keyDiff the keyDiff to set
     */
    public void setKeyDiff(int keyDiff) {
        this.keyDiff = keyDiff;
    }

    /**
     * @return the BPMDiff
     */
    public int getBPMDiff() {
        return BPMDiff;
    }

    /**
     * @param BPMDiff the BPMDiff to set
     */
    public void setBPMDiff(int BPMDiff) {
        this.BPMDiff = BPMDiff;
    }
    
        public static String getURL(int id) throws ServletException, SQLException, ClassNotFoundException
    {
        Connection con = DBAccess.getConnection(); 
        
        String url = "not there";
        PreparedStatement ps = con.prepareStatement("SELECT url FROM transition WHERE transition_id=?");
        
        
          ps.setInt(1, id);
        
        ResultSet rs = ps.executeQuery();
        
        while(rs.next()){
            
            String url1 = rs.getString("URL");
            return url1;
            
  
        }
        return url;
          
    }
        
    public void persist() throws ServletException
    { 
        try{Connection con = DBAccess.getConnection(); 
        PreparedStatement ps = con.prepareStatement ("INSERT INTO transition(transition_id,key_Diff,BPM_Diff,url) VALUES(?,?,?,?)");
        ps.setInt(1, transitionID); 
        ps.setInt(2, keyDiff); 
        ps.setInt(3, BPMDiff); 
        ps.setString(4, embedLink); 
        
        ps.executeUpdate(); 
        } catch(Exception e)
        { 
            throw new ServletException("Persist Problem", e); 
        } 
    }

    /**
     * @return the embedLink
     */
    public String getEmbedLink() {
        return embedLink;
    }

    /**
     * @param embedLink the embedLink to set
     */
    public void setEmbedLink(String embedLink) {
        this.embedLink = embedLink;
    }
    
    
    public static ArrayList<String> getTransitions() throws ServletException, SQLException, ClassNotFoundException
    {
        Connection con = DBAccess.getConnection(); 
        
        ArrayList<String> transList = new ArrayList();
        PreparedStatement ps = con.prepareStatement("SELECT transition_ID FROM transition");
         
        
        ResultSet rs = ps.executeQuery();
        
        while(rs.next()){
            
            transList.add(rs.getString("transition_ID"));
            
        }
        return transList;
          
    }
    
     public static int getNextID() throws ServletException, SQLException, ClassNotFoundException
    {
        Connection con = DBAccess.getConnection(); 
        
        String id = "";
        PreparedStatement ps = con.prepareStatement("SELECT transition_ID FROM transition");
         
        
        ResultSet rs = ps.executeQuery();
        
        while(rs.next()){
            
            id = rs.getString("transition_ID");
            
        }
        int ID = Integer.parseInt(id);
        
        return ID+1;
          
    }
     
         public void edit() throws ServletException
    { 
        try{Connection con = DBAccess.getConnection(); 
        PreparedStatement ps = con.prepareStatement ("UPDATE transition SET key_Diff=?,BPM_Diff=?,url=? WHERE transition_id =?");
         ps.setInt(1, keyDiff); 
        ps.setInt(2, BPMDiff); 
        ps.setString(3, embedLink); 
        ps.setInt(4, transitionID); 
        ps.executeUpdate(); 
        } catch(Exception e)
        { 
            throw new ServletException("Persist Problem", e); 
        } 
    }
         
    public void setInfo() throws ServletException
    {
        try{Connection con = DBAccess.getConnection(); 
        
        PreparedStatement ps = con.prepareStatement("SELECT * FROM transition WHERE transition_id=?");
        
        ps.setInt(1, transitionID); 
        
        ResultSet rs = ps.executeQuery();
        
        if(rs.next()){
            transitionID = rs.getInt("transition_id");
            keyDiff = rs.getInt("key_diff");
            BPMDiff = rs.getInt("bpm_diff");
            embedLink = rs.getString("url");
        }
        

    }catch(Exception e)
        { 
            throw new ServletException("Persist Problem", e); 
        } 
    }

}



    


