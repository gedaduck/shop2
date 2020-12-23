package controller;


import dao.DB;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Servlet implementation class Removeservlet
 */
@WebServlet("/Removeservlet")
public class Removeservlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String id=request.getParameter("id");
		DB Manager = new DB();
		String sql = "delete from cart where goods_id='"+id+"'";
		Manager.update(sql);
		response.sendRedirect("cart.jsp");
	}


}
