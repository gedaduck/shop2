package dao.get;


import dao.DB;
import vo.Cart;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class GetCart {
	public List<Cart> getCart(String user_account) throws SQLException {
		List<Cart> lists = new ArrayList();
		DB Manager = new DB();
		String sql = "select* from cart where user_account='"+user_account+"'";
		ResultSet rs = Manager.query(sql);
		while (rs.next()) {
			Cart cart = new Cart();
			cart.setGoods_id(rs.getInt(1));
			cart.setGoods_name(rs.getString(2));
			cart.setGoods_img(rs.getString(3));
			cart.setPrice(rs.getDouble(4));
			cart.setNumber(rs.getInt(5));
			cart.setUser_account(rs.getString(6));
			cart.setBusinessman_id(rs.getInt(7));
			lists.add(cart);
		}
		System.out.println(lists.size());
		return lists;
	}
}
