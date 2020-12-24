package controller;



import dao.DB;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


@WebServlet("/Getservlet")
public class Getservlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String goods_id=request.getParameter("goods_id");
		String user_account=request.getParameter("user_account");
		DB Manager = new DB();
		String sql="update orders set order_get='已收货' Where goods_id='"+goods_id+"' and `order_send`='已发货'";
		Manager.update(sql);
		response.sendRedirect("order.jsp?user_account="+user_account);
	}

}
