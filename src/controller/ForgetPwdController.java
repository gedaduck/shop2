package controller;

import service.ForgetPwdService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;


@WebServlet(name = "ForgetPwdController",urlPatterns = "/forgetPwdController")
public class ForgetPwdController extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ForgetPwdService forgetPwdServicer=new ForgetPwdService();
        String account = request.getParameter("user_account");
        String name=request.getParameter("user_name");
        String password=request.getParameter("new_password");
        if(forgetPwdServicer.ForgetPwd(account,name,password)==1){
            response.setContentType("text/html;UTF-8");
            response.setCharacterEncoding("UTF-8");
            PrintWriter out=response.getWriter();
            out.write("<body>");
            out.write("<script>");
            out.write("alert('修改成功！');");
            out.write("window.location.href='login.jsp'");
            out.write("</script>");
            out.write("</body>");
        }
    }
}
