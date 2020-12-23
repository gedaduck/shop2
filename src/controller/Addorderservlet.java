package controller;



import dao.DB;
import vo.Cart;
import vo.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;


@WebServlet("/Addorderservlet")
public class Addorderservlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		User user=(User)session.getAttribute("user");
		String user_account=user.getUser_account();
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		List<Cart> acart=(ArrayList)session.getAttribute("acart");
		DB Manager = new DB();
		String sql1="delete from cart where user_account='"+user_account+"'";
		Manager.update(sql1);
		for(Cart cart:acart){
        	String sql="insert into orders (user_account,goods_id,goods_name,goods_num,price,order_date,order_send,order_get,order_comment,businessman_account) values ('"
        	+cart.getUser_account()+ "','"+cart.getGoods_id()+"','"+cart.getGoods_name()+"','"+cart.getNumber()+"','"+cart.getPrice()+"','"+df.format(new Date())+"','待发货','"+"未收货','暂无','"+cart.getBusinessman_id()+"')";
        	Manager.update(sql);
        	}
		response.sendRedirect("order.jsp?user_account="+user_account);
	}

}
