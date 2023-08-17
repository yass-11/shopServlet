<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@page import="Devoir_1.connection.DbCon"%>
<%@page import="Devoir_1.dao.*"%>
<%@page import="Devoir_1.model.*"%>
<%@page import="java.util.*"%>

<%
UserDao userDao = new UserDao(DbCon.getConnection());
%>

<!DOCTYPE html>
<html>
<head>
<%@include file="includes/header.jsp" %>
<title>Edit Account</title>
</head>
<body>
<%-- ####################################################################### --%>
<%@include file="BodyHeader.jsp" %>
<div class="container">
	<main>
		<div class="breadcrumb">
			<ul>
				<li><a href="index.html">Home</a></li>
				<li> / </li>
				<li>My Account</li>
			</ul>
		</div> 
		
		<div class="account-page">
			<div class="profile">
				<div class="profile-img">
					<img src="products_images/icons/profile.png">
					<h2 class="test2"><%= auth.getName()%></h2>
					<p><%=  auth.getEmail() %></p>
				</div>
				<ul>
					<li><a href="editAccount.jsp" class="active">Account <span>></span></a></li>
					<li><a href="change-password.html">Change Password <span>></span></a></li>
					<li><a href="log-out">Logout <span>></span></a></li>
				</ul>
			</div>
			<div class="account-detail">
				<h2>Account</h2>
				<div class="billing-detail">					
					<form action="edit-profile" method="get" class="checkout-form">						
						<div class="form-group">
							<label>UserName</label>
							<input type="text" id="fname" name="fname" value="<%= auth.getName()%>">
						</div>
						<div class="form-group">
							<label>Company Name (Optional)</label>
							<input type="text" id="cname" name="cname" value="<%= auth.getCompany()%>">
						</div>
						<div class="form-group">
							<label>Address</label>
							<textarea style="resize:none" id="address" name="faddress" rows="3"><%= auth.getAddress()%></textarea>
						</div>
						<div class="form-inline">					
							<div class="form-group">
								<label>Email</label>
								<input type="text" id="tel" name="femail" value="<%= auth.getEmail()%>">
							</div>
							<div class="form-group">
								<label>Mobile</label>
								<input type="text" id="mobile" name="fmobile" value="<%= auth.getMobile() %>>">
							</div>
						</div>
						<div class="form-group">
							<label></label>
							<input type="submit" id="update" name="update" value="Update">
						</div>
					</form>		
				</div>
			</div>				
		</div>		
	</main> <!-- Main Area -->
</div>
<%@include file="BodyFooter.jsp" %>
<%-- ####################################################################### --%>

<%@include file="includes/footer.jsp" %>
</body>
</html>