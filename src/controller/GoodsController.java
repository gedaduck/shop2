package controller;

import service.goods.GoodsService;
import service.goods.GoodsServiceImpl;
import vo.Goods;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;


public class GoodsController extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id=Integer.valueOf(request.getParameter("goods_id"));
        GoodsService goodsService=new GoodsServiceImpl();
        Goods goods=goodsService.getGoods(id);
        List<String> goodsEvaluationList=goodsService.getGoodsEvaluation(id);
        request.setAttribute("goods",goods);
        request.setAttribute("goodsEvaluationList",goodsEvaluationList);
        request.getRequestDispatcher("goodsIntroduce.jsp").forward(request, response);
    }
}
