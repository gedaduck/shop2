package dao.dao;

import vo.Goods;
import vo.Orders;
import vo.Businessman;

import java.util.List;

public interface BusinessmanDao {
    Businessman login(String name,String password);
    List<Goods> getGoods(String business_account);
    List<Orders> getOrders(String business_account);
}
