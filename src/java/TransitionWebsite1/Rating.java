/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package TransitionWebsite1;

import Utilities.DBAccess;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import javax.servlet.ServletException;

/**
 *
 * @author George
 */
public class Rating {
    
    private int ratingID;
    private String rating;
    private int transitionID;


public Rating()
{}

public Rating (int ratID, String rat, int transID)
{
    ratingID = ratID;
    rating = rat;
    transitionID = transID;

}

public Rating (String rat, int transID)
{
    rating = rat;
    transitionID = transID;

}


    public void persist() throws ServletException
    { 
        try{Connection con = DBAccess.getConnection(); 
        PreparedStatement ps = con.prepareStatement ("INSERT INTO rating(rating,transitionid) VALUES(?, ?)");
        ps.setString(1, rating); 
        ps.setInt(2, transitionID); 
        
        ps.executeUpdate(); 
        } catch(Exception e)
        { 
            throw new ServletException("Persist Problem", e); 
        } 
    }
    
        
    public static ArrayList<String> getRatings(int id) throws ServletException, SQLException, ClassNotFoundException
    {
        Connection con = DBAccess.getConnection(); 
        
        ArrayList<String> transitionRatings = new ArrayList();
        PreparedStatement ps = con.prepareStatement("SELECT rating FROM rating WHERE transitionid=?");
        
        
          ps.setInt(1, id);
        
        ResultSet rs = ps.executeQuery();
        
        while(rs.next()){
            String rating = rs.getString("rating");
            transitionRatings.add(rating);
  
        }
        return transitionRatings;
          
    }
    
    /**
     * @return the ratingID
     */
    public int getRatingID() {
        return ratingID;
    }

    /**
     * @param ratingID the ratingID to set
     */
    public void setRatingID(int ratingID) {
        this.ratingID = ratingID;
    }

    /**
     * @return the rating
     */
    public String getRating() {
        return rating;
    }

    /**
     * @param rating the rating to set
     */
    public void setRating(String rating) {
        this.rating = rating;
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

}
