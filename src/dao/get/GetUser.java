package dao.get;

import dao.DB;

import vo.User;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class GetUser {
	public List<User> getUser(String user_account) throws SQLException {
		List<User> lists = new ArrayList();
		DB Manager = new DB();
		String sql = "select * from user where user_account='"+user_account+"'";
		ResultSet rs = Manager.query(sql);
		while (rs.next()) {
			User user = new User();
			user.setUser_account(rs.getString(1));
			user.setPassword(rs.getString(2));
			user.setUser_name(rs.getString(3));
			user.setAddress(rs.getString(4));
			user.setTelephone(rs.getString(5));
			user.setId_card(rs.getString(6));
			lists.add(user);
		}
		return lists;
	}
}

