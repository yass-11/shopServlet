<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@page import="Devoir_1.connection.DbCon"%>
<%@page import="Devoir_1.dao.*"%>
<%@page import="Devoir_1.model.*"%>

<%
UserDao userDao = new UserDao(DbCon.getConnection());
%>

<!DOCTYPE html>
<html>
<head>
<%@include file="includes/header.jsp" %>
<link rel="stylesheet" type="text/css" href="style/styleSign.css" />
<title>Sign Up</title>
</head>
<body>
<%-- ####################################################################### --%>
<%@include file="BodyHeader.jsp" %>
<div class="testbox">
  <h1>Registration Form</h1>

  <form action="sign-up" method="get">
      <hr>
	  <div class="accounttype">
	    <input type="radio" value="None" id="admin" name="role" checked/>
	    <label for="admin" class="radio" chec>Admin</label>
	    <input type="radio" value="None" id="user" name="role" />
	    <label for="user" class="radio">User</label>
	  </div>
	  <hr>
		<label id="icon" for="email"><i class="icon-envelope "></i></label>
		<input type="text" name="email" id="email" placeholder="Email" required/>
		<label id="icon" for="name"><i class="icon-user"></i></label>
		<input type="text" name="name" id="name" placeholder="Name" required/>
		<label id="icon" for="password"><i class="icon-shield"></i></label>
		<input type="password" name="password" id="password" placeholder="Password" required/>
		<label id="icon" for="mobile"><i class="icon-shield"></i></label>
		<input type="text" name="mobile" id="mobile" placeholder="+40-XXXXXXXXX"/>
		<label id="icon" for="address"><i class="fa-solid fa-address-book"></i></label>
		<input type="text" name="address" id="address" placeholder="Address"/>
		<label id="icon" for="company"><i class="fa-solid fa-address-book"></i></label>
		<input type="text" name="company" id="address" placeholder="Company"/>
		 
		 <p>By clicking Register, you agree on our <a href="terms.jsp">terms and condition</a>.</p>
		 <input type="submit" id="update" name="update" value="Register">
  </form>
</div>
<%@include file="BodyFooter.jsp" %>
<%-- ####################################################################### --%>

<%@include file="includes/footer.jsp" %>
</body>
</html>