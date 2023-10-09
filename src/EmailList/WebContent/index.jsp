<%@include file="/includes/header.jsp" %>
	<a href="../dashboard.html">
		<img src="./icons/return.png">
	</a>
	<h1> Join our email list </h1>
	<p>To join our email list, enter your name and email address below.</p>
	<form action="emailList" method="get">
		<input type="hidden" name="action" value="add">
		
		<label> Email:</label>
		<input type="email" name="email" required><br>
		
		<label>First Name:</label>
		<input type="text" name="firstName" required><br>
		
		<label> Last Names </label>
		<input type="text" name="lastName" required><br>
		
		<label>&nbsp;</label>
		<input type="submit" value="Join Now" id="submit">
	</form><br>
<%@include file="/includes/footer.jsp" %>