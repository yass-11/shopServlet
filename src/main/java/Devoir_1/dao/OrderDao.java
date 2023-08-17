package Devoir_1.dao;

import Devoir_1.model.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.*;

public class OrderDao {
	private Connection con;

	private String query;
    private PreparedStatement pst;
    private ResultSet rs;
    
    

	public OrderDao(Connection con) {
		super();
		this.con = con;
	}

	public boolean insertOrder(Order order) {
        boolean result = false;
        try {
            query = "insert into orders (idproduct, iduser, order_quantity, order_date) values(?,?,?,?)";
            pst = this.con.prepareStatement(query);
            pst.setInt(1, order.getId());
            pst.setInt(2, order.getUid());
            pst.setInt(3, order.getQunatity());
            pst.setString(4, order.getDate());
            pst.executeUpdate();
            result = true;
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
        return result;
    }
	

    public List<Order> userOrders(int id) {
        List<Order> list = new ArrayList<>();
        try {
            query = "select * from orders where iduser=? order by orders.idorder desc";
            pst = this.con.prepareStatement(query);
            pst.setInt(1, id);
            rs = pst.executeQuery();
            while (rs.next()) {
                Order order = new Order();
                ProductDao productDao = new ProductDao(this.con);
                int pId = rs.getInt("idproduct");
                Product product = productDao.getSingleProduct(pId);
                order.setOrderId(rs.getInt("idorder"));
                order.setId(pId);
                order.setName(product.getName());
                order.setCategory(product.getCategory());
                order.setPrice(product.getPrice()*rs.getInt("order_quantity"));
                order.setQunatity(rs.getInt("order_quantity"));
                order.setDate(rs.getString("order_date"));
                list.add(order);
            }
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println(e.getMessage());
        }
        return list;
    }

    public void cancelOrder(int id) {
        try {
            query = "delete from orders where idorder=?";
            pst = this.con.prepareStatement(query);
            pst.setInt(1, id);
            pst.execute();
            //result = true;
        } catch (SQLException e) {
            e.printStackTrace();
            System.out.print(e.getMessage());
        }
    }
}
