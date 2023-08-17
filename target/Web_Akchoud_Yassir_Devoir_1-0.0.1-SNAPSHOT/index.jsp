<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="Devoir_1.connection.DbCon"%>
<%@page import="Devoir_1.dao.ProductDao"%>
<%@page import="Devoir_1.model.*"%>
<%@page import="java.util.*"%>

<%
ProductDao pd = new ProductDao(DbCon.getConnection());
List<Product> products = pd.getAllProducts();
ArrayList<Cart> cart_list = (ArrayList<Cart>) session.getAttribute("cart-list");
if (cart_list != null) {
	request.setAttribute("cart_list", cart_list);
}
%>

<!DOCTYPE html>
<html>
<head>
<%@include file="includes/header.jsp" %>
<title>Home</title>
</head>
<body>

<%-- ####################################################################### --%>
<%@include file="BodyHeader.jsp" %>

<div class="container">
	
	<div class="container">
    <main>
        
		<%@include file="includes/slide.jsp" %>
        <div class="new-product-section">
            <div class="product-section-heading">
                <h2>Tranding Products <img src="products_images/icons/increase.png"></h2>
                <h3>Most selling product for the month</h3>
            </div>
            <div class="product">
                <div class="row">
                    <%
                        if (!products.isEmpty()) {
                            for (Product p : products) {
                    %>
                                <div class="col-md-3 my-3">
                                    <div class="card w-100">
                                        <img class="card-img-top" src="products_images/product/<%=p.getImage() %>"
                                            alt="Card image cap">
                                        <div class="product-detail">
                                            <h5 class="card-title"><%=p.getName() %></h5>
                                            <h6 class="category">Category: <%=p.getCategory() %></h6>
                                            <div class="mt-3 d-flex justify-content-between">
                                                <a class="btn btn-dark" href="add-to-cart?id=<%=p.getId()%>">Add to Cart</a>
                                                <h6 class="price">Price: $<%=p.getPrice() %></h6> 
                                            </div>
                                        </div>
                                    </div>
                                </div>
                    <%
					}
					} else {
					out.println("There is no proucts");
					}
					%>
                </div>
            </div>
        </div> <!-- New Product Section -->

        <div class="collection">
            <div class="men-collection">
                <h2>Men's Collection</h2>
            </div>
            <div class="women-collection">
                <h2>Women's Collection</h2>
            </div>
        </div> <!-- Collection Section -->

        <div class="new-product-section">
            <div class="product-section-heading">
                <h2>Recommend Products <img src="products_images/icons/good_quality.png"></h2>
                <h3>OUR BEST PRODUCTS RECOMMENDED FOR YOU</h3>
            </div>
            
            <div class="product">
                <div class="row product-content">
                    <%
                        if (!products.isEmpty()) {
                            for (Product p : products) {
                    %>
                                <div class="col-md-3 my-3">
                                    <div class="card w-100">
                                        <img class="card-img-top" src="products_images/product/<%=p.getImage() %>"
                                            alt="Card image cap">
                                        <div class="product-detail">
                                            <h5 class="card-title"><%=p.getName() %></h5>
                                            <h6 class="category">Category: <%=p.getCategory() %></h6>
                                            <div class="mt-3 d-flex justify-content-between">
                                                <a class="btn btn-dark" href="add-to-cart?id=<%=p.getId()%>">Add to Cart</a>
                                                <h6 class="price">Price: $<%=p.getPrice() %></h6> 
                                            </div>
                                        </div>
                                    </div>
                                </div>
                    <%
					}
					} else {
					out.println("There is no proucts");
					}
					%>
                </div>
            </div>
        </div> <!-- Recommend Product Section -->
    </main> <!-- Main Area -->
</div>
	
</div>

<%@include file="BodyFooter.jsp" %>
<%-- ####################################################################### --%>

<%@include file="includes/footer.jsp" %>
</body>
</html>