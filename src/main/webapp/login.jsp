<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="includes/header.jsp" %>
<title>Login</title>
</head>
<body>
<%-- ####################################################################### --%>
<%@include file="BodyHeader.jsp" %>
<div class="container">
	<div class="row">
		<div class="col-sm-12">
	    	<form action="register.jsp">
				<button type="submit" class="btn btn-primary" style="margin:20px; float: right;">Sign Up</button>
			</form>
	    </div>
	</div>
</div>
<div class="container">
	<div class="card w-50 mx-auto my-5">
		<div class="card-header text-center">User Login</div>
		<div class="card-body">
			<form action="user-login" method="post">
				<div class="form-group">
					<label>Email address</label> 
					<input type="email" name="login-email" class="form-control" placeholder="Enter email">
				</div>
				<div class="form-group">
					<label>Password</label> 
					<input type="password" name="login-password" class="form-control" placeholder="Password">
				</div>
				<div class="text-center">
					<button type="submit" class="btn btn-primary">Login</button>
				</div>
			</form>
		</div>
	</div>
</div>

<%@include file="BodyFooter.jsp" %>
<%-- ####################################################################### --%>
<%@include file="includes/footer.jsp" %>
</body>
</html>