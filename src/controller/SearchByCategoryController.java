package controller;

import service.SearchService;
import vo.Goods;

import javax.servlet.annotation.WebServlet;
import java.io.IOException;
import java.util.List;

public class SearchByCategoryController extends javax.servlet.http.HttpServlet {
    protected void doPost(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {

    }

    protected void doGet(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {
        SearchService searchService=new SearchService();
        int goods_category=Integer.parseInt(request.getParameter("goods_category"));
        List<Goods> list=searchService.searchByCategory(goods_category);
        request.setAttribute("goods",list);
        request.getRequestDispatcher("search.jsp").forward(request,response);
    }
}
