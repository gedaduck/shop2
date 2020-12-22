package controller;

import com.jspsmart.upload.SmartUpload;
import com.jspsmart.upload.SmartUploadException;
import service.Businessman.BusinessmanService;
import service.Businessman.BusinessmanServiceImpl;
import vo.Goods;
import vo.Businessman;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@WebServlet(name = "BusinessmanController",urlPatterns = "/BusinessmanController")
public class BusinessmanController extends HttpServlet {
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

    private void selectFun(HttpServletRequest request, HttpServletResponse response, String method) throws ServletException, IOException {
        if (method.equals("login"))
            businessLogin(request,response);
        else if(method.equals("getaGood"))
            getAGood(request,response);
        else if(method.equals("addGoods"))
            addGoods(request,response);
    }


    public void businessLogin(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        HttpSession session=request.getSession();
        String name=request.getParameter("name");
        String password=request.getParameter("password");
        BusinessmanService businessmanServiceImpl=new BusinessmanServiceImpl();
        PrintWriter out=response.getWriter();
        response.setContentType("text/html; charset=UTF-8");
        response.setCharacterEncoding("UTF-8");
        Businessman businessman=businessmanServiceImpl.BusinessmanLogin(name,password);
        List<Goods> goodsList=businessmanServiceImpl.getGoods(name);
        if(businessman.getBusinessman_account()!=null){
            session.setAttribute("Businessman",businessman);
            session.setAttribute("goodsList",goodsList);
            out.write("<script>alert('登陆成功！');window.location.href='BusinessmanView.jsp';</script>");
        }
        else{
            out.write("<script>alert('登陆失败！');window.location.href='html/Businessman_login.html';</script>");
        }
    }


    public void getAGood(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        request.setCharacterEncoding("UTF-8");
        int goods_id=Integer.valueOf(request.getParameter("goods_id"));
        BusinessmanService BusinessmanServiceImpl=new BusinessmanServiceImpl();
        Goods goods=BusinessmanServiceImpl.getaGood(goods_id);
        System.out.println(goods.toString());
        request.setAttribute("good",goods);
        request.getRequestDispatcher("/goods_modify.jsp").forward(request, response);
    }

    public void addGoods(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException{
        request.setCharacterEncoding("UTF-8");
        // 设置输出为中文
        response.setCharacterEncoding("UTF-8");
        Goods goods=new Goods();
        SmartUpload smartUpload=new SmartUpload();
        ServletConfig config=this.getServletConfig();
        smartUpload.initialize(config,request,response);
        String img=null;
        try{
            smartUpload.upload();
        } catch (SmartUploadException e) {
            e.printStackTrace();
        }
        try {
            com.jspsmart.upload.File smartFile=smartUpload.getFiles().getFile(0);
            String filename=smartFile.getFileName();
            System.out.println(filename);
            img="images/"+filename;
            smartFile.saveAs("\\images\\"+filename,SmartUpload.SAVE_AUTO);
        } catch (SmartUploadException e) {
            e.printStackTrace();
        }
        goods.setBusinessman_account(smartUpload.getRequest().getParameter("businessman_account"));
        goods.setGoods_id(Integer.valueOf(smartUpload.getRequest().getParameter("good_id")));
        goods.setPrice(Double.valueOf(smartUpload.getRequest().getParameter("good_price")));
        goods.setGoods_category(Integer.valueOf(smartUpload.getRequest().getParameter("good_category")));
        goods.setGoods_introduce(smartUpload.getRequest().getParameter("good_introduce"));
        goods.setGoods_img(smartUpload.getRequest().getParameter(img));
        BusinessmanService BusinessmanServiceImpl=new BusinessmanServiceImpl();
        if(BusinessmanServiceImpl.addGoods(goods)){
            response.sendRedirect("BusinessmanView.jsp?name"+smartUpload.getRequest().getParameter("businessman_account"));
        }else {
            PrintWriter out= response.getWriter();
            out.write("<body><script>alert('添加失败');window.location.href='BusinessmanView.jsp?name="+smartUpload.getRequest().getParameter("businessman_account")+"';</script></body>");
        }
    }

}
