package Devoir_1.dao;

import java.sql.*;
import Devoir_1.model.*;

public class UserDao {
	private Connection con;

	private String query;
    private PreparedStatement pst;
    private ResultSet rs;

	public UserDao(Connection con) {
		this.con = con;
	}
	
	public User userLogin(String email, String password) {
		User user = null;
        try {
            query = "select * from users where email=? and password=?";
            pst = this.con.prepareStatement(query);
            pst.setString(1, email);
            pst.setString(2, password);
            rs = pst.executeQuery();
            if(rs.next()){
            	user = new User();
            	user.setId(rs.getInt("id"));
            	user.setName(rs.getString("name"));
            	user.setEmail(rs.getString("email"));
            	user.setRole(rs.getString("role"));
            }
        } catch (SQLException e) {
            System.out.print(e.getMessage());
        }
        return user;
    }
	
	public void updateUser(User u1) {
		try {	
			query = "update users set name = ?, mobile = ?, address = ?, company = ? where email = ?";
			pst = this.con.prepareStatement(query);
			pst.setString(1, u1.getName());
			pst.setString(2, u1.getMobile());
			pst.setString(3, u1.getAddress());
			pst.setString(4, u1.getCompany());
            pst.setString(5, u1.getEmail());
            pst.executeUpdate();
            
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }	
	}
	
	public void InsertUser(User u1) {
		try {	
			query = "insert into users (name, email, password, role, mobile, address, company) values (?,?,?,?,?,?,?)";
			pst = this.con.prepareStatement(query);
			pst.setString(1, u1.getName());
			pst.setString(2, u1.getEmail());
			pst.setString(3, u1.getPassword());
			pst.setString(4, u1.getRole());
            pst.setString(5, u1.getMobile());
            pst.setString(6, u1.getAddress());
            pst.setString(7, u1.getCompany());
            pst.executeUpdate();
            
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }	
	}
	
}
