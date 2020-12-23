package controller;



import dao.DB;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;


@WebServlet("/Addservlet")
public class Addservlet extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String no=request.getParameter("no");
		String price=request.getParameter("price");
		String number=request.getParameter("number");
		int numberInt=Integer.parseInt(number);
		DB Manager = new DB();
		String sql1="select * from cart where no='"+no+"'";
		ResultSet rs =Manager.query(sql1);
		try {
			if(rs.next()) {
				int no1 = rs.getInt(1);
			     int price1 = rs.getInt(2);
			     int number1 = rs.getInt(3);
			     int newnumber=numberInt+number1;
				String sql2="update cart set number='"+newnumber+"' where no='"+no+"'" ;
				Manager.update(sql2);
			}
			else {
				String sql = "insert into cart values('"+no+"','"+price+"','"+number+"')";
				Manager.update(sql);}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		response.sendRedirect("cart.jsp");
	}	
	
}

