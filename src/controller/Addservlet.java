package controller;

import dao.DB;
import vo.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;


@WebServlet("/Addservlet")
public class Addservlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String goods_id=request.getParameter("goods_id");
		System.out.println(goods_id);
		HttpSession session=request.getSession();
		User user=(User)session.getAttribute("user");
		String goods_name=null;
		String goods_img=null;
		int price=0;
		int number=0;
		String businessman_account=null;
		DB Manager = new DB();
		String sql1="select * from goods where goods_id="+goods_id;
		ResultSet rs =Manager.query(sql1);
		try {
			while (rs.next()){
				goods_name=rs.getString("goods_name");
				goods_img=rs.getString("goods_img");
				price=rs.getInt("price");
				businessman_account=rs.getString("businessman_account");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		String sql2="select * from cart where goods_id="+goods_id;
		ResultSet rs2 =Manager.query(sql2);
		try {
			if(rs2.next()) {
				number = rs2.getInt("number");
				number++;
				String sql3="update cart set number='"+number+"' where goods_id='"+goods_id+"' and user_account='"+user.getUser_account()+"'" ;
				Manager.update(sql3);
			}
			else {
				String sql = "insert into cart values('"+goods_id+"','"+goods_name+"','"+goods_img+"','"+price+"','"+1+"','"+user.getUser_account()+"','"+businessman_account+"')";
				Manager.update(sql);}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		response.sendRedirect("cart.jsp");
	}	
	
}

