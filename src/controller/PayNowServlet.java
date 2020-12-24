package controller;

import dao.DB;
import vo.Cart;
import vo.Goods;
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

@WebServlet("/payNowServlet")
public class PayNowServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        User user=(User)session.getAttribute("user");
        String user_account=user.getUser_account();
        String number=request.getParameter("number");
        System.out.println(number);
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        Goods goods=(Goods)session.getAttribute("goods");
        DB Manager = new DB();
        String sql="insert into orders (user_account,goods_id,goods_name,goods_num,price,order_date,order_send,order_get,order_comment,businessman_account,goods_img) values ('"
                +user_account+ "','"+goods.getGoods_id()+"','"+goods.getGoods_name()+"','"+number+"','"+goods.getPrice()+"','"+df.format(new Date())+"','待发货','"+"未收货','暂无','"+goods.getBusinessman_account()+"','"+goods.getGoods_img()+"')";
        Manager.update(sql);
        response.sendRedirect("order.jsp?user_account="+user_account);
    }
}
