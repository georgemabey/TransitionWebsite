/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package TransitionWebsite1;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author George
 */
@WebServlet(name = "RateProfile", urlPatterns = {"/RateProfile"})
public class RateTransition extends HttpServlet {

    /**
     * Processes requests for both HTTP
     * <code>GET</code> and
     * <code>POST</code> methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException, ClassNotFoundException {
        response.setContentType("text/html;charset=UTF-8");
        
        HttpSession session = request.getSession();
        
        String rating = request.getParameter("rating");
        String transID = request.getParameter("transitionid");
        
        int transitionID = Integer.parseInt(transID);
        int nextTransition = Integer.parseInt(transID+1);
        
        session.setAttribute("nextTransitionID", nextTransition); 
        
        
        Rating rating1= new Rating(rating,transitionID);

        rating1.persist();
        
        Transition nextTransition1= new Transition(nextTransition);
       
        nextTransition1.setEmbedLink(Transition.getURL(nextTransition));
        
        // Set the actor attribute within the request 
        //request.setAttribute("nextTransitionID", nextTransition); 
        
         // Send it on to a different View 
        
        if (nextTransition < 15)
        {
        request.getRequestDispatcher("index2.jsp").forward(request, response); 
        }
        else
        {
        request.getRequestDispatcher("finalPage.jsp").forward(request, response); 
        }
        }
        
            
        
    }


    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP
     * <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */


    /**
     * Handles the HTTP
     * <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */


    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
