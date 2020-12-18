package controller;

import service.AdminServiceImpl;
import vo.Admin;
import vo.Businessman;
import vo.Goods;
import vo.User;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class AdminController extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String method=request.getParameter("method");
        System.out.println(method);
        selectFun(request,response,method);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String method=request.getParameter("method");
        System.out.println(method);
        selectFun(request,response,method);
    }
    public void selectFun(HttpServletRequest request, HttpServletResponse response,String method) throws ServletException, IOException {
        if(method.equals("deleteUser"))
            deleteUser(request,response);
        else if(method.equals("deletePBusinessman"))
            deleteBusinessman(request,response);
        else if(method.equals("getAllUser"))
            getAllUser(request,response);
        else if(method.equals("getAllBusinessman"))
            getAllBusinessman(request,response);
        else if(method.equals("adminLogin"))
            adminLogin(request,response);
        else if(method.equals("getAllGoods"))
            getAllGoods(request,response);

    }
    public void deleteUser(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        AdminServiceImpl adminService=new AdminServiceImpl();
        boolean bool=adminService.deleteUser(request.getParameter("user_account"));
        if(bool){
            request.setAttribute("res","删除成功");

        }
        else
            request.setAttribute("res","删除失败");
        getAllUser(request, response);
        //request.getRequestDispatcher("admin_show_user.jsp").forward(request, response);
    }
    public void deleteBusinessman(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        AdminServiceImpl adminService=new AdminServiceImpl();
        boolean bool=adminService.deleteBusinessman(request.getParameter("businessman_account"));
        if(bool){
            request.setAttribute("res","删除成功");
        }
        else
            request.setAttribute("res","删除失败");
        getAllBusinessman(request, response);
        //request.getRequestDispatcher("查看所有商家界面").forward(request, response);
    }
    public void getAllUser (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        AdminServiceImpl adminService=new AdminServiceImpl();
        List<User> list=new ArrayList<>();
        list=adminService.getAllUser();
        request.setAttribute("user",list);
        request.getRequestDispatcher("admin_show_user.jsp").forward(request, response);
    }
    public void getAllBusinessman (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        AdminServiceImpl adminService=new AdminServiceImpl();
        List<Businessman> list=new ArrayList<>();
        list=adminService.getAllBusinessman();
        request.setAttribute("businessman",list);
        request.getRequestDispatcher("admin_show_businessman.jsp").forward(request, response);
    }
    public void adminLogin(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        AdminServiceImpl adminService=new AdminServiceImpl();
        Admin admin=new Admin();
        System.out.println("方法");
        admin=adminService.adminLogin(request.getParameter("admin_account"),request.getParameter("admin_password"));
        HttpSession session=request.getSession();
        if(admin!=null){
            session.setAttribute("admin",admin);
            request.setAttribute("res", "success");
        }
        request.getRequestDispatcher("admin_menu.jsp").forward(request, response);

    }
    public void getAllGoods (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        AdminServiceImpl adminService=new AdminServiceImpl();
        List<Goods> list=new ArrayList<>();
        list=adminService.getAllGoods();
        request.setAttribute("goods",list);
        request.getRequestDispatcher("查看所有商品界面").forward(request, response);
    }
    public void deleteGoods(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        AdminServiceImpl adminService=new AdminServiceImpl();
        boolean bool=adminService.deleteGoods(Integer.parseInt(request.getParameter("goods_id")));
        if(bool){
            request.setAttribute("res","删除成功");
        }
        else
            request.setAttribute("res","删除失败");
        request.getRequestDispatcher("查看所有商品界面").forward(request, response);
    }
}
