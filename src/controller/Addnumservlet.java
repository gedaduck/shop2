package controller;



import dao.DB;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Servlet implementation class Addnumservlet
 */
@WebServlet("/Addnumservlet")
public class Addnumservlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String goods_id=request.getParameter("goods_id");
		String number=request.getParameter("number");
		int numberInt=Integer.parseInt(number);
		numberInt++;
		DB Manager = new DB();
		String sql="update cart set number='"+numberInt+"' where goods_id="+goods_id+"";
		Manager.update(sql);
		response.sendRedirect("cart.jsp");
	}

}
