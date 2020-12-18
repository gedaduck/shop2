package controller;

import service.LoginService;
import vo.User;

import javax.servlet.http.HttpSession;
import java.io.IOException;

public class LoginController extends javax.servlet.http.HttpServlet {

    protected void doPost(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {

    }

    protected void doGet(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {
        LoginService loginService=new LoginService();
        HttpSession session=request.getSession();
        String account = request.getParameter("account");
        String password = request.getParameter("password");
        User user=loginService.userLogin(account,password);
        if(user!=null){
            session.setAttribute("user",user);
            request.setAttribute("res", "success");
        }
        request.getRequestDispatcher("/loginRes.jsp").forward(request, response);

    }
}
