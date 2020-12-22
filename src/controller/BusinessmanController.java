package controller;

import com.jspsmart.upload.SmartUpload;
import com.jspsmart.upload.SmartUploadException;
import service.Businessman.BusinessmanService;
import service.Businessman.BusinessmanServiceImpl;
import vo.Goods;
import vo.Businessman;
import vo.Orders;

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

@WebServlet(name = "BusinessmanController",urlPatterns = "/businessmanController")
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
        else if(method.equals("getOrders"))
            getOrders(request,response);
        else if(method.equals("sendGoods"))
            sendGoods(request,response);
        else if(method.equals("deleteGoods"))
            deleteGoods(request,response);
        else if(method.equals("regist"))
            regist(request,response);
        else if(method.equals("loginOut"))
            businessmanLoginOut(request,response);
        else if(method.equals("modify"))
            businessmanModifyGoods(request,response);


    }
    public void businessmanModifyGoods(HttpServletRequest request, HttpServletResponse response) throws IOException {
        Goods goods=new Goods();
        BusinessmanServiceImpl businessmanService=new BusinessmanServiceImpl();
        request.setCharacterEncoding("UTF-8");
        goods.setGoods_name(request.getParameter("goods_name"));
        goods.setGoods_introduce(request.getParameter("goods_introduce"));
        goods.setGoods_category(Integer.parseInt(request.getParameter("goods_category")));
        goods.setGoods_id(Integer.parseInt(request.getParameter("goods_id")));
        goods.setPrice(Double.parseDouble(request.getParameter("price")));
        response.setContentType("text/html;UTF-8");
        response.setCharacterEncoding("UTF-8");
        PrintWriter out = response.getWriter();
        out.write("<body>");
        out.write("<script>");
        if(businessmanService.goods_modify(goods)) {
            out.write("alert('修改成功！');");
        }
        else {
            out.write("alert('修改失败！');");
        }
        out.write("window.location.href='businessman_store.jsp'");
        out.write("</script>");
        out.write("</body>");

    }
    public void businessmanLoginOut(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session=request.getSession();
        session.invalidate();
        request.getRequestDispatcher("/index.jsp").forward(request, response);
    }

    public void businessLogin(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        HttpSession session=request.getSession();
        String name=request.getParameter("name");
        String password=request.getParameter("password");
        System.out.println("商家登录中");
        BusinessmanService businessmanServiceImpl=new BusinessmanServiceImpl();
        response.setContentType("text/html; charset=UTF-8");
        response.setCharacterEncoding("UTF-8");
        PrintWriter out=response.getWriter();
        Businessman businessman=businessmanServiceImpl.businessmanLogin(name,password);
        List<Goods> goodsList=businessmanServiceImpl.getGoods(name);
        if(businessman.getBusinessman_account()!=null){
            session.setAttribute("businessman",businessman);
            session.setAttribute("goodsList",goodsList);
            out.write("<script>alert('登陆成功！');window.location.href='businessman_menu.jsp';</script>");
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
        request.setCharacterEncoding("gb2312");
        // 设置输出为中文
        response.setCharacterEncoding("gb2312");
        HttpSession session=request.getSession();
        Businessman businessman=(Businessman)session.getAttribute("businessman");
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
        System.out.println(smartUpload.getRequest().getParameter("good_introduce"));
        goods.setGoods_introduce(smartUpload.getRequest().getParameter("good_introduce"));
        goods.setGoods_name(smartUpload.getRequest().getParameter("good_name"));
        goods.setGoods_img(img);
        BusinessmanService businessmanServiceImpl=new BusinessmanServiceImpl();
        if(businessmanServiceImpl.addGoods(goods)){
            List<Goods> goodsList=businessmanServiceImpl.getGoods(businessman.getBusinessman_account());
            session.setAttribute("goodsList",goodsList);
            response.sendRedirect("businessman_store.jsp?name"+smartUpload.getRequest().getParameter("businessman_account"));
        }else {
            PrintWriter out= response.getWriter();
            out.write("<body><script>alert('添加失败');window.location.href='businessman_store.jsp?name="+smartUpload.getRequest().getParameter("businessman_account")+"';</script></body>");
        }
    }

    public void getOrders(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        request.setCharacterEncoding("UTF-8");
        // 设置输出为中文
        response.setCharacterEncoding("UTF-8");
        HttpSession session=request.getSession();
        Businessman businessman=(Businessman)session.getAttribute("businessman");
        BusinessmanService businessmanServiceImpl=new BusinessmanServiceImpl();
        List<Orders> ordersList=businessmanServiceImpl.getOrders(businessman.getBusinessman_account());
        request.setAttribute("ordersList",ordersList);
        request.setAttribute("name",businessman.getBusinessman_name());
        request.getRequestDispatcher("businessman_order.jsp").forward(request, response);
    }

    public void sendGoods(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException{
        request.setCharacterEncoding("UTF-8");
        // 设置输出为中文
        response.setCharacterEncoding("UTF-8");
        HttpSession session=request.getSession();
        Businessman businessman=(Businessman)session.getAttribute("businessman");
        BusinessmanService businessmanServiceImpl=new BusinessmanServiceImpl();
        int goods_id=Integer.parseInt(request.getParameter("goods_id"));
        if(businessmanServiceImpl.order_send(goods_id)==1){
            response.sendRedirect("businessmanController?method=getOrders&name="+businessman.getBusinessman_name()+"");
        }

    }

    public void deleteGoods(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException{
        request.setCharacterEncoding("UTF-8");
        // 设置输出为中文
        response.setCharacterEncoding("UTF-8");
        HttpSession session=request.getSession();
        Businessman businessman=(Businessman)session.getAttribute("businessman");
        BusinessmanService businessmanServiceImpl=new BusinessmanServiceImpl();
        System.out.println(request.getParameter("goods_id"));
        int goods_id=Integer.parseInt(request.getParameter("goods_id"));
        if(businessmanServiceImpl.order_delete(goods_id)==1){
            List<Goods> goodsList=businessmanServiceImpl.getGoods(businessman.getBusinessman_account());
            session.setAttribute("goodsList",goodsList);
            request.getRequestDispatcher("businessman_store.jsp").forward(request, response);
        }

    }

    public void regist(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException{
        request.setCharacterEncoding("UTF-8");
        HttpSession session=request.getSession();
        String businessman_account=request.getParameter("businessman_account");
        String businessman_name=request.getParameter("businessman_name");
        int store_id=1233;
        String store_name=request.getParameter("store_name");
        String businessman_address=request.getParameter("businessman_address");
        String businessman_telephone=request.getParameter("businessman_telephone");
        String businessman_password=request.getParameter("password");
        Businessman businessman=new Businessman(businessman_account,businessman_password,businessman_name,businessman_address,businessman_telephone,store_id,store_name);
        businessman.toString();
        BusinessmanService businessmanServiceImpl=new BusinessmanServiceImpl();
        response.setContentType("text/html; charset=UTF-8");
        response.setCharacterEncoding("UTF-8");
        PrintWriter out=response.getWriter();
        if(businessmanServiceImpl.regist(businessman)==1)
            out.write("<body><script>alert('注册成功');window.location.href='html/business_login.html';</script></body>");
        else
            out.write("<body><script>alert('注册失败');window.location.href='html/business_regist.html';</script></body>");



    }

}
