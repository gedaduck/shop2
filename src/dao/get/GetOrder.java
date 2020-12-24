package dao.get;





import com.mysql.cj.x.protobuf.MysqlxCrud;
import dao.DB;
import vo.Orders;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


public class GetOrder {
	public  List<Orders> getOrder(String user_account) throws  SQLException {
		// TODO Auto-generated method stub
		List<Orders> lists = new ArrayList();
		DB Manager = new DB();
		ResultSet rs = Manager.query("select * from orders where user_account='"+user_account+"' order by order_id desc");
		while (rs.next())
	 	{ 
			Orders order=new Orders();
			order.setOrder_id(rs.getInt("order_id"));
			order.setUser_account(rs.getString("user_account"));
			order.setGoods_id(rs.getInt("goods_id"));
			order.setGoods_name(rs.getString("goods_name"));
			order.setGoods_num(rs.getInt("goods_num"));
			order.setPrice(rs.getDouble("price"));
			order.setOrder_date(rs.getString("order_date"));
			order.setOrder_send(rs.getString("order_send"));
			order.setOrder_get(rs.getString("order_get"));
			order.setOrder_comment(rs.getString("order_comment"));
			order.setBusinessman_account(rs.getString("businessman_account"));
			order.setGoods_img(rs.getString("goods_img"));
			lists.add(order);
		 }
	
		return lists;
}
}
