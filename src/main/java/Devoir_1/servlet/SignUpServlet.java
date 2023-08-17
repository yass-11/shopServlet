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
import Devoir_1.dao.UserDao;
import Devoir_1.model.User;

@WebServlet("/sign-up")
public class SignUpServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try(PrintWriter out = response.getWriter()) {
			String srole = request.getParameter("role");
			if ("Admin".equals(srole)) {
			    srole="Admin";
			} else if ("User".equals(srole)) {
				srole="User";
			}
			String semail = request.getParameter("email");
			String sname = request.getParameter("name");
			String spassword = request.getParameter("password");
			String smobile = request.getParameter("mobile");
			String saddress = request.getParameter("address");
			String scompany = request.getParameter("company");
			User u1 = new User(sname,semail,spassword,srole,smobile,saddress,scompany);
			UserDao userDao = new UserDao(DbCon.getConnection());
			userDao.InsertUser(u1);
			response.sendRedirect("login.jsp");
		} catch (ClassNotFoundException|SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
