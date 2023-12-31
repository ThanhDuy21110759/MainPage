<!-- 21110759 Ho Thanh Duy Ex1_Survey -->
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Murach's Java Servlets and JSP</title>
        <link rel="stylesheet" href="styles/main.css">
    </head>
    <body>
    	<a href="../dashboard.html">
			<img src="./icons/return.png">
		</a>
        <form action="survey" method="post">	
			<input type="hidden" name="action" value="add">
					
			<img src="images/murachlogo.jpg" alt="logo"/>
            <h1>Survey</h1>
            <p>If you have a moment, we'd appreciate it if you would fill out this survey.</p>
            
            <h2>Your information:</h2>
            <label class="pad_top">First Name</label>
            <input type="text" name="firstName" required><br>
            <label class="pad_top">Last Name</label>
            <input type="text" name="lastName" required><br>
            <label class="pad_top">Email</label>
            <input type="email" name="email" required><br>
            <label class="pad_top">Date of birth</label>
            <input type="text" name="birth" required><br>

            <h2>How did you hear about us?</h2>
            <p><input type=radio name="heardFrom" value="Search Engine" checked>Search engine
               <input type=radio name="heardFrom" value="Friend">Word of mouth
               <input type=radio name="heardFrom" value="Social">Social Media            
               <input type=radio name="heardFrom" value="Other">Other</p>

            <h2>Would you like to receive announcements about new CDs and special offers?</h2>
            <p><input type="checkbox" name="wantsUpdates">YES, I'd like that.</p>
			<p><input type="checkbox" name="wantsSendmail">YES, please send me email annoucements.</p>
			
            <p>Please contact me by:
                <select name="contactVia">
                    <option value="Both" selected>Email or postal mail</option>
                    <option value="Email">Email only</option>
                    <option value="Postal Mail">Postal mail only</option>
                </select>
            </p>
            <input type="submit" value="Submit">
        </form><br>
        <br>
<%@include file="/includes/footer.jsp" %>