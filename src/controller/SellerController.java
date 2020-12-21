package controller;

import com.jspsmart.upload.SmartUpload;
import com.jspsmart.upload.SmartUploadException;
import com.mysql.cj.Session;
import service.seller.SellerService;
import service.seller.SellerServiceImpl;
import vo.Goods;
import vo.Seller;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.util.List;

@WebServlet(name = "SellerController",urlPatterns = "/sellerController")
public class SellerController extends HttpServlet {
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
        SellerService sellerServiceImpl=new SellerServiceImpl();
        PrintWriter out=response.getWriter();
        response.setContentType("text/html; charset=UTF-8");
        response.setCharacterEncoding("UTF-8");
        Seller seller=sellerServiceImpl.sellerLogin(name,password);
        List<Goods> goodsList=sellerServiceImpl.getGoods(name);
        if(seller.getBusinessman_account()!=null){
            session.setAttribute("seller",seller);
            session.setAttribute("goodsList",goodsList);
            out.write("<script>alert('登陆成功！');window.location.href='sellerView.jsp';</script>");
        }
        else{
            out.write("<script>alert('登陆失败！');window.location.href='html/seller_login.html';</script>");
        }
    }


    public void getAGood(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        request.setCharacterEncoding("UTF-8");
        int goods_id=Integer.valueOf(request.getParameter("goods_id"));
        SellerService sellerServiceImpl=new SellerServiceImpl();
        Goods goods=sellerServiceImpl.getaGood(goods_id);
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
        SellerService sellerServiceImpl=new SellerServiceImpl();
        if(sellerServiceImpl.addGoods(goods)){
            response.sendRedirect("sellerView.jsp?name"+smartUpload.getRequest().getParameter("businessman_account"));
        }else {
            PrintWriter out= response.getWriter();
            out.write("<body><script>alert('添加失败');window.location.href='sellerView.jsp?name="+smartUpload.getRequest().getParameter("businessman_account")+"';</script></body>");
        }
    }

}
