package controller;

import service.user.*;
import vo.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "UserController",urlPatterns = "/userController")
public class UserController extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String method=request.getParameter("method");
        System.out.println(method);
        selectFun(request,response,method);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String method=request.getParameter("method");
        System.out.println(method);
        selectFun(request,response,method);
    }

    private void selectFun(HttpServletRequest request, HttpServletResponse response, String method) throws ServletException, IOException{
        if(method.equals("login"))
            LoginController(request,response);
        else if(method.equals("logout"))
            LogoutController(request,response);
        else if(method.equals("modify"))
            ModifyController(request,response);
        else if(method.equals("forgetPwd"))
            ForgetPwdController(request,response);
        else if(method.equals("rePwd"))
            RePwdController(request,response);
        else if(method.equals("regist"))
            RegistController(request,response);
    }

    public void LoginController(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        UserServiceImpl userService=new UserServiceImpl();
        HttpSession session1=request.getSession();
        session1.invalidate();
        HttpSession session=request.getSession();
        String account = request.getParameter("account");
        String password = request.getParameter("password");
        User user=userService.userLogin(account,password);
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        response.setCharacterEncoding("UTF-8");
        PrintWriter out = response.getWriter();
        out.write("<body>");
        if(user!=null){
            session.setAttribute("user",user);
            out.write("<h3 style='color: red;text-align: center'><br>登陆成功，</br>三秒后自动跳转，若未跳转，请点击<a href='index.jsp'>链接</a></h3>");
            response.setHeader("Refresh","3,URL=index.jsp");
        }else {
            out.write("<script>");
            out.write("alert('账号或密码错误！');");
            out.write("window.location='login.jsp';");
            out.write("</script>");
        }
        out.write("</body>");
    }
    public void LogoutController(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        HttpSession session=request.getSession();
        session.invalidate();
        request.getRequestDispatcher("index.jsp").forward(request, response);
    }
    public void ModifyController(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        HttpSession session=request.getSession();
        UserServiceImpl userService=new UserServiceImpl();
        User user=(User)session.getAttribute("user");
        request.setCharacterEncoding("UTF-8");
        user.setUser_name(request.getParameter("name"));
        user.setAddress(request.getParameter("address"));
        user.setTelephone(Integer.valueOf(request.getParameter("telephone")));
        user.setId_card(request.getParameter("id_card"));

        System.out.println(user.toString());
        session.setAttribute("user",user);
        response.setContentType("text/html;UTF-8");
        response.setCharacterEncoding("UTF-8");
        PrintWriter out = response.getWriter();
        out.write("<body>");
        out.write("<script>");
        if(userService.modify(user)==1) {
            out.write("alert('修改成功！');");
        }
        else {
            out.write("alert('修改失败！');");
        }
        out.write("window.location.href='index.jsp'");
        out.write("</script>");
        out.write("</body>");
    }
    public void ForgetPwdController(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        UserServiceImpl userService=new UserServiceImpl();
        String account = request.getParameter("user_account");
        String name=request.getParameter("user_name");
        String password=request.getParameter("new_password");
        if(userService.forgetPwd(account,name,password)==1){
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
    public void RePwdController(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        UserServiceImpl userService=new UserServiceImpl();
        HttpSession session=request.getSession();
        String account=request.getParameter("account");
        String oldPwd=request.getParameter("oldPwd");
        String newPwd=request.getParameter("newPwd");
        response.setContentType("text/html; charset=UTF-8");
        response.setCharacterEncoding("UTF-8");
        PrintWriter out = response.getWriter();
        out.write("<body>");
        out.write("<script>");
        if(userService.rePwd(account,oldPwd,newPwd)==1){
            session.invalidate();
            out.write("alert('修改成功！');");
            out.write("window.location.href='index.jsp'");
        }else{
            out.write("alert('修改失败！');");
            out.write("window.location.href='repwd.jsp'");
        }
        out.write("</script>");
        out.write("</body>");
    }
    public void RegistController(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        UserServiceImpl userService=new UserServiceImpl();
        request.setCharacterEncoding("UTF-8");
        String account = request.getParameter("account");
        String password=request.getParameter("password");
        String name=request.getParameter("name");
        System.out.println(name);
        String address=request.getParameter("address");
        int telephone=Integer.parseInt(request.getParameter("telephone"));
        String id_card=request.getParameter("id_card");
        User user=userService.userRegist(account,password,name,address,telephone,id_card);
        response.setContentType("text/html; charset=UTF-8");
        response.setCharacterEncoding("UTF-8");
        PrintWriter out = response.getWriter();
        out.write("<body>");
        if(user.getUser_name()!=null){
            out.write("<h3 style='color: red;text-align: center'><br>注册成功！</br>三秒后自动跳转，若未跳转，请点击<a href='index.jsp'>链接</a></h3>");
            response.setHeader("Refresh","3,URL=index.jsp");
        }else {
            out.write("<script>");
            out.write("alert('注册失败！');");
            out.write("window.location='regist.jsp';");
            out.write("</script>");
        }
        out.write("</body>");
    }
}
