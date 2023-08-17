<%@page import="Devoir_1.model.User"%>
<% 
	User auth = (User) request.getSession().getAttribute("auth"); 
	//System.out.println(auth.getEmail()+" "+auth.getRole());
	if (auth != null) {
	    request.setAttribute("person", auth);
	}
%>

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
								<li><a href="editAccount.jsp">My Account</a></li>
								<%if(auth.getRole().equals("User")){%>		
									<li><a href="orders.jsp">My Orders</a></li>
								<%}%>
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
						<li><a href="store.jsp">Shop</a></li>
						<%if(auth.getRole().equals("Admin")){%>		
							<li><a href="addProduct.jsp">AddP</a></li>
						<%}%>
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
				</div> <!-- logo -->
				<div>
					<a href="login.jsp" style="font-size:20px;text-decoration: underline overline #2f4f4f;"><img src="products_images/icons/account.png">Log In</a>
				</div>
			</div> <!-- brand -->
			<div class="menu-bar">
				<div class="menu">
					<ul>
						<li><a href="index.jsp">Home</a></li>
						<li><a href="store.jsp">Shop</a></li>
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
				