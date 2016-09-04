

<%@page import="java.util.Stack"%>
<%@page import="TransitionWebsite1.Transition"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="transcss.css" />
        
        <% 
            String noRating = "";
        

	//Get error messages if the servlet passed back any
            if (request.getAttribute("noRating") != null)
            {
                noRating = (String) request.getAttribute("noRating");
            }
             //String transID1 = (String) request.getParameter("nextTransitionID");
             
             String transID1 = (String) session.getAttribute("nextTransitionID");
             Stack<Integer> transStack = (Stack) session.getAttribute("transitionStack");
        int transID = Integer.parseInt(transID1);
        
            Transition trans1 = new Transition(transStack.pop());
 String embedURL = Transition.getURL(trans1.getTransitionID());
                %>
        <title>Transition <%=(transID+1)%></title>
    </head>
    <body>
                
                <p> <iframe width="100%" height="300" scrolling="no" frameborder="no" src="<%=embedURL%>"></iframe></p>
                 <div class="buttonHolder">
                     
                     <p style="line-height:1.15;margin-top:0pt;margin-bottom:0pt;">&nbsp;</p>
                     
                     
                      <h1 style="text-align: center;"><span style="font-family:verdana,geneva,sans-serif;">
            Transition <%=(transID+1)%></span></h1>
                      <p style="line-height:1.15;margin-top:0pt;margin-bottom:0pt;">&nbsp;</p>
                      
                <form name ="AddRating" action="AddRating" method="post"> 
                    
            <table>
                <tr><td><input type="radio" name="rating" value="Unlistenable" /> Unlistenable<td/>
               <td><input type="radio" name="rating" value="Bad" /> Bad <td/>
                <td><input type="radio" name="rating" value="Ok" /> Ok <td/>
                <td><input type="radio" name="rating" value="Good" /> Good <td/>
                <td><input type="radio" name="rating" value="Perfect" /> Perfect<td/><tr/>
               
                <input TYPE ="hidden" name ="transitionID" value ="<%=trans1.getTransitionID()%>"/>
                <input TYPE ="hidden" name ="nextT" value ="<%=(transID+1)%>"/>
            </table> 
             <p style="line-height:1.15;margin-top:0pt;margin-bottom:0pt;">&nbsp;</p>
                <p style="text-align: center;">
             <input TYPE="submit" value="Rate" />
             <p><%=noRating%></p>
                </p>
           
                </form>
       </div>
    </body>
</html>
