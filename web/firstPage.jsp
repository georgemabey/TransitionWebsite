
<%-- 
    Document   : firstPage
    Created on : 20-Nov-2014, 16:38:00
    Author     : George
--%>

<%@page import="TransitionWebsite1.Transition"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="transcss.css" />
        <title>Welcome Page</title>
    </head>
<body>
<h1 style="text-align: center;"><span style="font-family:verdana,geneva,sans-serif;">An investigation into what makes a good transition</span></h1>

<p>&nbsp;</p>

<p dir="ltr" style="line-height:1.15;margin-top:0pt;margin-bottom:0pt;"><span style="font-family:verdana,geneva,sans-serif;"><span id="docs-internal-guid-4153c8a3-55e4-343e-d9f6-93b639aebbab"><span style="font-size: 15px; vertical-align: baseline; white-space: pre-wrap;">If you are reading this, you are a musical person trusted by George to take part in his third year project investigation. The project aims to solve the following problem:</span></span></span></p>

<p dir="ltr" style="line-height:1.15;margin-top:0pt;margin-bottom:0pt;">&nbsp;</p>

<p dir="ltr" style="line-height:1.15;margin-top:0pt;margin-bottom:0pt;"><span style="font-family:verdana,geneva,sans-serif;"><span id="docs-internal-guid-4153c8a3-55e4-343e-d9f6-93b639aebbab"><span style="font-size: 15px; vertical-align: baseline; white-space: pre-wrap;">An essential DJing skill is the ability to transition between songs as smoothly as possible. A competent DJ will have practiced and researched a transition to see how it sounds and whether it is viable. This is where most time is spent when choosing and ordering songs to create a set-list/play-list. There is currently no application available to quickly suggest whether two songs will transition well. The project will use the results from this experiment to justify the design of an algorithm that given the BPM and key of two songs, will compute a percentage to indicate the level of compatibility.</span></span></span></p>

<p><span style="font-family:verdana,geneva,sans-serif;"><span id="docs-internal-guid-4153c8a3-55e4-343e-d9f6-93b639aebbab"><span style="font-size: 15px; vertical-align: baseline; white-space: pre-wrap;">Upon pressing the begin questionnaire button, you will be presented with 12 transitions, one at a time an each being one minute long. The style of each transition has purposefully been made as generic as possible. A transition begins with the outro track being played just before its last chorus. The track being mixed in is then introduced around the 20 second mark. By 50 seconds, the audio will just be the new track. Please do not judge the transition on the style of the mix, judge on how in sync the beats and melodies are. You will be asked to rate each transition on the following scale:</span></span></span></p>



<p style="line-height:1.15;margin-top:0pt;margin-bottom:0pt;">&nbsp;</p>

<ul style="margin-top:0pt;margin-bottom:0pt;">
	<li dir="ltr" style="list-style-type: disc; font-size: 15px; font-family: Arial; vertical-align: baseline;">
	<p dir="ltr" style="line-height:1.15;margin-top:0pt;margin-bottom:0pt;"><span style="font-family:verdana,geneva,sans-serif;"><span id="docs-internal-guid-4153c8a3-55e4-343e-d9f6-93b639aebbab"><span style="font-weight: bold; vertical-align: baseline; white-space: pre-wrap;">Unlistenable</span><span style="vertical-align: baseline; white-space: pre-wrap;"> - The transition is very unpleasant to listen to. The songs involved in the transition can be easily resolved as two separate entities.</span></span></span></p>
	</li>
	<li dir="ltr" style="list-style-type: disc; font-size: 15px; font-family: Arial; vertical-align: baseline;">
	<p dir="ltr" style="line-height:1.15;margin-top:0pt;margin-bottom:0pt;"><span style="font-family:verdana,geneva,sans-serif;"><span id="docs-internal-guid-4153c8a3-55e4-343e-d9f6-93b639aebbab"><span style="font-weight: bold; vertical-align: baseline; white-space: pre-wrap;">Bad </span><span style="vertical-align: baseline; white-space: pre-wrap;">- The transition is unpleasant to listen to. The two melodies don&rsquo;t sound good together during the majority of the transition. The songs aren&#39;t in sync for the majority of the audio.</span></span></span></p>
	</li>
	<li dir="ltr" style="list-style-type: disc; font-size: 15px; font-family: Arial; vertical-align: baseline;">
	<p dir="ltr" style="line-height:1.15;margin-top:0pt;margin-bottom:0pt;"><span style="font-family:verdana,geneva,sans-serif;"><span id="docs-internal-guid-4153c8a3-55e4-343e-d9f6-93b639aebbab"><span style="font-weight: bold; vertical-align: baseline; white-space: pre-wrap;">Ok </span><span style="vertical-align: baseline; white-space: pre-wrap;">- The transition is ok. Not unpleasant, but also not that special.</span></span></span></p>
	</li>
	<li dir="ltr" style="list-style-type: disc; font-size: 15px; font-family: Arial; vertical-align: baseline;">
	<p dir="ltr" style="line-height:1.15;margin-top:0pt;margin-bottom:0pt;"><span style="font-family:verdana,geneva,sans-serif;"><span id="docs-internal-guid-4153c8a3-55e4-343e-d9f6-93b639aebbab"><span style="font-weight: bold; vertical-align: baseline; white-space: pre-wrap;">Good </span><span style="vertical-align: baseline; white-space: pre-wrap;">- The transition is better than the majority.</span></span></span></p>
	</li>
	<li dir="ltr" style="list-style-type: disc; font-size: 15px; font-family: Arial; vertical-align: baseline;">
	<p dir="ltr" style="line-height:1.15;margin-top:0pt;margin-bottom:0pt;"><span style="font-family:verdana,geneva,sans-serif;"><span id="docs-internal-guid-4153c8a3-55e4-343e-d9f6-93b639aebbab"><span style="font-weight: bold; vertical-align: baseline; white-space: pre-wrap;">Perfect </span><span style="vertical-align: baseline; white-space: pre-wrap;">- The transition is seamless. The two tracks were almost indistinguishable. </span></span></span></p>
	</li>
</ul>

<p style="line-height:1.15;margin-top:0pt;margin-bottom:0pt;">&nbsp;</p>

<p style="line-height:1.15;margin-top:0pt;margin-bottom:0pt;">&nbsp;</p>

    <div class="buttonHolder">
<form id="form1" action="NewServlet2" method="post"> 
    
    <table>
                
                 <input TYPE ="hidden" name ="transitionID" value ="-1"/>
                <tr><td><input TYPE="submit" value="Begin Questionnaire" /> <td/><tr/>
            </table> 
  
        </form>
</div>
<hr />
<p dir="ltr" style="line-height:1.15;margin-top:0pt;margin-bottom:0pt;"><span style="font-family:verdana,geneva,sans-serif;"><span style="font-size:12px;"><span id="docs-internal-guid-4153c8a3-55e4-343e-d9f6-93b639aebbab"><span style="vertical-align: baseline; white-space: pre-wrap;">Thank you in advance for taking the questionnaire. If you wish to see the final results or have any questions or bugs to report, please send me an email (G.Mabey@uea.ac.uk).</span></span></span></span></p>
<a href="adminlogin.jsp">Admin Page</a>
<div>&nbsp;</div>
</body>
</html>
