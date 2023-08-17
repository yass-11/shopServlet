<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="Devoir_1.connection.DbCon"%>
<%@page import="Devoir_1.dao.*"%>   
<%@page import="Devoir_1.model.*"%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="java.util.*"%>

<%
DecimalFormat dcf = new DecimalFormat("#.##");
request.setAttribute("dcf", dcf);
User auth = (User) request.getSession().getAttribute("auth");
List<Order> orders = null;
if (auth != null) {
    request.setAttribute("person", auth);
    OrderDao orderDao  = new OrderDao(DbCon.getConnection());
	orders = orderDao.userOrders(auth.getId());
}else{
	response.sendRedirect("login.jsp");
}
ArrayList<Cart> cart_list = (ArrayList<Cart>) session.getAttribute("cart-list");
if (cart_list != null) {
	request.setAttribute("cart_list", cart_list);
}
%>

<!DOCTYPE html>
<html>
<head>
<%@include file="includes/header.jsp" %>
<title>Orders</title>
</head>
<body>

<%-- ####################################################################### --%>
<header>			
 	<%if(auth != null){%>
 		<div class="container">
			<div class="brand">
				<div class="logo">
					<a href="index.jsp">
						<img src="products_images/icons/online_shopping.png">
						<div class="logo-text">
							<p class="big-logo">Electronics</p>
							<p class="small-logo">Planet</p>
						</div>
					</a>
				</div> <!-- logo -->
		 		<div class="shop-icon">
					<div class="dropdown">
						<img src="products_images/icons/account.png">
						<div class="dropdown-menu">
							<ul>
								<li><a href="account.html">My Account</a></li>
								<li><a href="orders.jsp">My Orders</a></li>
							</ul>
						</div>
					</div>
					<div class="dropdown">
						<img src="products_images/icons/heart.png">
					</div>
					<div class="dropdown">
						<a href="cart.jsp"><img src="products_images/icons/shopping_cart.png"><span class="badge badge-danger">${cart_list.size()}</span></a>
					</div>
					<div class="dropdown">
						<a href="log-out">
			          		<img src="products_images/icons/forward.png">
				        </a>
					</div>
				</div> <!-- shop icon -->
			</div> <!-- brand -->
	
			<div class="menu-bar">
				<div class="menu">
					<ul>
						<li><a href="index.jsp">Home</a></li>
						<li><a href="shop.jsp">Shop</a></li>
						<li><a href="about.jsp">About</a></li>
						<li><a href="contact.jsp">Contact</a></li>
					</ul>
				</div>
				<div class="search-bar">
					<form>
						<div class="form-group">
							<input type="text" class="form-control" name="search" placeholder="Search">
							<img src="products_images/icons/search.png">
						</div>
					</form>
				</div>
			</div> <!-- menu -->
		</div> <!-- container -->
	<%}else {%>
	 	<div class="container">
			<div class="brand">
				<div class="logo">
					<a href="index.jsp">
						<img src="products_images/icons/online_shopping.png">
						<div class="logo-text">
							<p class="big-logo">Electronics</p>
							<p class="small-logo">Planet</p>
						</div>
					</a>
				</div> 
				<div>
					<a href="login.jsp"><img src="products_images/icons/account.jpg"> Log In</a>
				</div>
			</div> <!-- brand -->
			<div class="menu-bar">
				<div class="menu">
					<ul>
						<li><a href="index.jsp">Home</a></li>
						<li><a href="shop.jsp">Shop</a></li>
						<li><a href="about.jsp">About</a></li>
						<li><a href="contact.jsp">Contact</a></li>
					</ul>
				</div>
				<div class="search-bar">
					<form>
						<div class="form-group">
							<input type="text" class="form-control" name="search" placeholder="Search">
							<img src="products_images/icons/search.png">
						</div>
					</form>
				</div>
			</div> <!-- menu -->
		</div> <!-- container -->
	<%}%>
</header> <!-- header -->	

<div class="container">
		<div class="card-header my-3">All Orders</div>
		<table class="table table-light">
			<thead>
				<tr>
					<th scope="col">Date</th>
					<th scope="col">Name</th>
					<th scope="col">Category</th>
					<th scope="col">Quantity</th>
					<th scope="col">Price</th>
					<th scope="col">Cancel</th>
				</tr>
			</thead>
			<tbody>
			
			<%
			if(orders != null){
				for(Order o:orders){%>
					<tr>
						<td><%=o.getDate() %></td>
						<td><%=o.getName() %></td>
						<td><%=o.getCategory() %></td>
						<td><%=o.getQunatity() %></td>
						<td><%=dcf.format(o.getPrice()) %></td>
						<td><a class="btn btn-sm btn-danger" href="cancel-order?id=<%=o.getOrderId()%>">Cancel Order</a></td>
					</tr>
				<%}
			}
			%>
			
			</tbody>
		</table>
	</div>
<%-- ####################################################################### --%>


<%@include file="includes/footer.jsp" %>
</body>
</html>