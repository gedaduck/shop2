package controller;

import service.SearchService;
import vo.Goods;

import java.io.IOException;
import java.util.List;

public class SearchController extends javax.servlet.http.HttpServlet {
    protected void doPost(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {

    }

    protected void doGet(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {
        SearchService searchService=new SearchService();
        String goods_introduce=request.getParameter("keyword");
        List<Goods> list=searchService.Search(goods_introduce);
        request.setAttribute("goods",list);
        request.getRequestDispatcher("search.jsp").forward(request,response);
    }
}
