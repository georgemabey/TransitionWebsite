<%-- 
    Document   : adminpage
    Created on : 18-Dec-2014, 20:54:43
    Author     : George
--%>

<%@page import="java.text.DecimalFormat"%>
<%@page import="TransitionWebsite1.Rating"%>
<%@page import="TransitionWebsite1.Transition"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
          <link rel="stylesheet" type="text/css" href="transcss.css" />
        <title>Admin Page</title>
    </head>
    
    <% 
            
             //String transID1 = (String) request.getParameter("nextTransitionID");
            ArrayList<String> transitions = new ArrayList();
            transitions = Transition.getTransitions();
                %>
    <body>
        
        <h1 style="text-align: center;"><span style="font-family:verdana,geneva,sans-serif;">
            Admin Page</span></h1>
            <p style="line-height:1.15;margin-top:0pt;margin-bottom:0pt;">&nbsp;</p>
        
        
        <% for(int i = 0; i<transitions.size(); i++)
                
            {
                
             ArrayList<String> transRatings = new ArrayList();   
             transRatings = Rating.getRatings(i);
             double size = (double)Rating.getRatings(i).size();
             double percentages[] = new double[5];
             DecimalFormat df = new DecimalFormat("#.##");
             
            for(int j = 0; j<transRatings.size(); j++)
                
            {
                if (transRatings.get(j).equals("Unlistenable"))
                {
                    percentages[0]++;
                }
                else if (transRatings.get(j).equals("Bad"))
                {
                    percentages[1]++;
                }
                else if (transRatings.get(j).equals("Ok"))
                {
                    percentages[2]++;
                }
                else if (transRatings.get(j).equals("Good"))
                {
                    percentages[3]++;
                }
                else if (transRatings.get(j).equals("Perfect"))
                {
                    percentages[4]++;
                }
            }
            
            double max =  (percentages[0]/transRatings.size())*100.0;
            int location = 0;
            String rat = "";
            for(int x = 0; x<percentages.length; x++)  
            {
                
                    percentages[x] = (percentages[x]/transRatings.size())*100.0;
                    
                    if (percentages[x]>max)
                    {
                        max = percentages[x];
                        location = x;
                    }
            }
            
            if (location == 0)
                {
                    rat ="Unlistenable";
                }
                else if (location == 1)
                {
                    rat ="Bad";
                }
                else if (location == 2)
                {
                    rat ="Ok";
                }
                else if (location == 3)
                {
                    rat ="Good";
                }
                else if (location == 4)
                {
                    rat ="Perfect";
                }

%>
<div class="buttonHolder">
<table > 
    
   <%if (i == 6){ %>
            <tr>
                <%}%>
                
            <td>Transition <%=transitions.get(i)%> </td> 
            
            <form action="transitionController" method="post"> 
                <td> 
                <input TYPE ="hidden" name ="transid" value ="<%=transitions.get(i)%>"/>

                <input TYPE="submit" value="See Current Statistics"/> 
                </td>
                
                </form>
            <form action="editTransition" method="post"> 
                <td> 
                <input TYPE ="hidden" name ="id" value ="<%=transitions.get(i)%>"/>

                <input TYPE="submit" value="Edit"/> 
                </td>
                <tr>
                <td> 
                    Most Chosen Rating:<%=rat%>
                </td>
                </tr>
                <td> 
                <%=df.format(max)%>%
                </td>
                
                </form>
            
            
            <%if (i == 6){ %>
            </tr>
                <%}%>
          
         </table>
                <% } %>  
                </div>
                <div class="buttonHolder">
               
             
               
          <table>
          <tr>
              <form action="addPage.jsp" method="post"> 
                <td> 
                <input TYPE="submit" value="Add Transition"/> 
                </td>
                
                </form>
          </tr>
        
          </table>
                    
               
                    
     
</div>
                
                <div class="buttonHolder">
               
              <table>    
                    <tr>
                <form action="firstPage.jsp">
                <input type="submit" value="Home Page">
            </form>
                </tr>
          </table>
               
       </div>
    </body>
</html>
