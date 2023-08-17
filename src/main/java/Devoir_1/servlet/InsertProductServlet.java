package Devoir_1.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Devoir_1.connection.DbCon;
import Devoir_1.model.*;
import Devoir_1.dao.*;


@WebServlet("/insert-product")
public class InsertProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try(PrintWriter out = response.getWriter()) {
			String p_name = request.getParameter("p_name");
			String p_category = request.getParameter("p_category");
			String p_price = request.getParameter("p_price");
			String p_image = request.getParameter("p_image");
			Product p1 = new Product(p_name, p_category,Double.parseDouble(p_price), p_image);
			ProductDao productDao = new ProductDao(DbCon.getConnection());
			productDao.addProduct(p1);
			response.sendRedirect("store.jsp");
		} catch (ClassNotFoundException|SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
