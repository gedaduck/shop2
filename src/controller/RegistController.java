package controller;

import service.RegistService;
import vo.User;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;


public class RegistController extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session=request.getSession();
        RegistService registService=new RegistService();
        String account = request.getParameter("account");
        String password=request.getParameter("password");
        String name=request.getParameter("name");
        String address=request.getParameter("address");
        int telephone=Integer.parseInt(request.getParameter("telephone"));
        String id_card=request.getParameter("id_card");
        User user=registService.UserRegist(account,password,name,address,telephone,id_card);
        if(user!=null){
            request.setAttribute("res","success");
        }
        request.getRequestDispatcher("/registRes.jsp").forward(request, response);
    }
}
