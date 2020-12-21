package dao.dao;

import vo.Goods;
import vo.Orders;
import vo.Seller;

import java.util.List;

public interface SellerDao {
    Seller login(String name,String password);
    List<Goods> getGoods(String business_account);
    List<Orders> getOrders(String business_account);
}
