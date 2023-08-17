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


@WebServlet("/edit-profile")
public class EditProfileServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try(PrintWriter out = response.getWriter()) {
			String fname = request.getParameter("fname");
			String cname = request.getParameter("cname");
			String faddress = request.getParameter("faddress");
			String femail = request.getParameter("femail");
			String fmobile = request.getParameter("fmobile");
			User u1 = new User(fname,femail,fmobile,faddress,cname);
			UserDao userDao = new UserDao(DbCon.getConnection());
			userDao.updateUser(u1);
			response.sendRedirect("login.jsp");
		} catch (ClassNotFoundException|SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}



}
