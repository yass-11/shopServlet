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
<title>Sign Up</title>
</head>
<body>
<%-- ####################################################################### --%>
<%@include file="BodyHeader.jsp" %>
<div class="form_wrapper">
  <div class="form_container">
    <div class="title_container">
      <h2>Registration Form</h2>
    </div>
    <div class="row clearfix">
      <div class="">
        <form>
          <div class="input_field"> <span><i aria-hidden="true" class="fa fa-envelope"></i></span>
            <input type="email" name="email" placeholder="Email" required />
          </div>
          <div class="input_field"> <span><i aria-hidden="true" class="fa fa-lock"></i></span>
            <input type="password" name="password" placeholder="Password" required />
          </div>
          <div class="input_field"> <span><i aria-hidden="true" class="fa fa-lock"></i></span>
            <input type="password" name="password" placeholder="Re-type Password" required />
          </div>
          <div class="row clearfix">
            <div class="col_half">
              <div class="input_field"> <span><i aria-hidden="true" class="fa fa-user"></i></span>
                <input type="text" name="name" placeholder="User Name" />
              </div>
            </div>
            <div class="col_half">
              <div class="input_field"> <span><i aria-hidden="true" class="fa fa-user"></i></span>
                <input type="text" name="mobile" placeholder="Mobile" required />
              </div>
            </div>
          </div>
            	<div class="input_field radio_option">
              <input type="radio" name="radiogroup1" id="admin">
              <label for="admin">Admin</label>
              <input type="radio" name="radiogroup1" id="user">
              <label for="user">User</label>
              </div>
              <div class="input_field"> <span><i aria-hidden="true" class="fa fa-envelope"></i></span>
	            <input type="text" name="address" placeholder="Postal Address" required />
	          </div>
            <div class="input_field checkbox_option">
            	<input type="checkbox" id="cb1">
    			<label for="cb1">I agree with terms and conditions</label>
            </div>
            <div class="input_field checkbox_option">
            	<input type="checkbox" id="cb2">
    			<label for="cb2">I want to receive the newsletter</label>
            </div>
          <input class="button" type="submit" value="Register" />
        </form>
      </div>
    </div>
  </div>
</div>
<%@include file="BodyFooter.jsp" %>
<%-- ####################################################################### --%>

<%@include file="includes/footer.jsp" %>
</body>
</html>