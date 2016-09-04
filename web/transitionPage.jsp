<%-- 
    Document   : transitionPage
    Created on : 18-Dec-2014, 21:33:27
    Author     : George
--%>

<%@page import="TransitionWebsite1.Rating"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    
      <% 
            int id = (int) session.getAttribute("transID");
             ArrayList<String> transRatings = new ArrayList();
             transRatings = Rating.getRatings(id);
             double size = (double)Rating.getRatings(id).size();
             double percentages[] = new double[5];
             
             
             
                %>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="transcss.css" />
        <title>Transition <%=id%> Stats</title>
    </head>

    
    <body>
         <h1 style="text-align: center;"><span style="font-family:verdana,geneva,sans-serif;">
            Transition <%=id%> Statistics</span></h1>
            <p style="line-height:1.15;margin-top:0pt;margin-bottom:0pt;">&nbsp;</p>
            
            <h2 style="text-align: center;"><span style="font-family:verdana,geneva,sans-serif;">
            All Ratings:</span></h2>
        <p style="line-height:1.15;margin-top:0pt;margin-bottom:0pt;">&nbsp;</p>
        <% for(int i = 0; i<transRatings.size(); i++)
                
            {
                if (transRatings.get(i).equals("Unlistenable"))
                {
                    percentages[0]++;
                }
                else if (transRatings.get(i).equals("Bad"))
                {
                    percentages[1]++;
                }
                else if (transRatings.get(i).equals("Ok"))
                {
                    percentages[2]++;
                }
                else if (transRatings.get(i).equals("Good"))
                {
                    percentages[3]++;
                }
                else if (transRatings.get(i).equals("Perfect"))
                {
                    percentages[4]++;
                }
                
                
                
    

%>
<div class="buttonHolder">
<table border="1"> 
            <tr>
            <td><%=transRatings.get(i)%> </td> 
            </tr>
              
</table>
            
            <% } %>
</div>
<p style="line-height:1.15;margin-top:0pt;margin-bottom:0pt;">&nbsp;</p>


<h2 style="text-align: center;"><span style="font-family:verdana,geneva,sans-serif;">
Percentages:</span></h2>
<p style="line-height:1.15;margin-top:0pt;margin-bottom:0pt;">&nbsp;</p>
<% for(int i = 0; i<percentages.length; i++)
                
            {
                
                    percentages[i] = (percentages[i]/transRatings.size())*100.0;
            }
%>
<div class="buttonHolder">
<table border="1"> 
            <tr>
            <td>Unlistenable </td> 
            <td>Bad </td>
            <td>Ok </td>
            <td>Good </td>
            <td>Perfect </td>
            </tr>
            <tr>
            <td><%=percentages[0]%>% </td> 
            <td><%=percentages[1]%>% </td>
            <td><%=percentages[2]%>% </td>
            <td><%=percentages[3]%>% </td>
            <td><%=percentages[4]%>% </td>
            </tr>
              
</table>
</div>

    </body>
</html>
