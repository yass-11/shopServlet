<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="includes/header.jsp" %>
<title>Add Product</title>
</head>
<body>
<%-- ####################################################################### --%>
<%@include file="BodyHeader.jsp" %>
 <form action="insert-product" method="get">
        <p>Name:</p> 
        <input type="text" name="p_name"/>
        <br/>
        <p>Category:</p>
        <select name="p_category" id="cars"> 
	        <option value="phone">Phones</option>
			<option value="computer">Computers</option>
			<option value="tablet">Tablets</option>
			<option value="accessory">Accessories</option>
		</select>
        <br/>
        <p>Price:</p> 
        <input type="text" name="p_price"/>
        <br/>
        <p>Image:</p> 
        <input type="text" name="p_image"/>
        <br/><br/><br/>
        <input type="submit"/>
    </form>
</body>
</html>