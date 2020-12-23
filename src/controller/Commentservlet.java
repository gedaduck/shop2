package controller;



import dao.DB;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


@WebServlet("/Commentservlet")
public class Commentservlet extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		String comment=request.getParameter("comment");
		String order_id=request.getParameter("order_id");
		String user_account=request.getParameter("user_account");
		DB Manager = new DB();
		String sql="update orders set order_comment='"+comment+"' Where order_id="+order_id+"";
		Manager.update(sql);
		response.sendRedirect("order.jsp?user_account="+user_account);
	}

}
