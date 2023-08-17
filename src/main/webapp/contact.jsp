<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="includes/header.jsp" %>
<title>Contact Us</title>
<style>
@import url(https://fonts.googleapis.com/css?family=Montserrat:400,700);

body { background:#ffffff; }
form { max-width:420px; margin:50px auto; }

.feedback-input {
  color:white;
  font-family: Helvetica, Arial, sans-serif;
  font-weight:500;
  font-size: 18px;
  border-radius: 5px;
  line-height: 22px;
  background-color: transparent;
  border:2px solid #ADD1D0;
  transition: all 0.3s;
  padding: 13px;
  margin-bottom: 15px;
  width:100%;
  box-sizing: border-box;
  outline:0;
}

.feedback-input:focus { border:2px solid #ADD1D0; }

textarea {
  height: 150px;
  line-height: 150%;
  resize:vertical;
}

[type="submit"] {
  font-family: 'Montserrat', Arial, Helvetica, sans-serif;
  width: 100%;
  background:#ADD1D0;
  border-radius:5px;
  border:0;
  cursor:pointer;
  color:white;
  font-size:24px;
  padding-top:10px;
  padding-bottom:10px;
  transition: all 0.3s;
  margin-top:-4px;
  font-weight:700;
}
[type="submit"]:hover { background:#ADD1D0; }
</style>
</head>
<body>

<%-- ####################################################################### --%>
<%@include file="BodyHeader.jsp" %>

    <form action="../sendmail.jsp" method="post">      
	    <label for="name">Name:</label>
		<input name="name" type="text" class="feedback-input" placeholder="Full Name" />  
		<label for="email">Email:</label> 
		<input name="email" type="text" class="feedback-input" placeholder="Email" />
		<label for="message">Message:</label>
		<textarea name="text" class="feedback-input" placeholder="Comment"></textarea>
		<input type="submit" value="SUBMIT"/>
	</form>
<%@include file="BodyFooter.jsp" %>
<%-- ####################################################################### --%>
<%@include file="includes/footer.jsp" %>  
</body>
</html>