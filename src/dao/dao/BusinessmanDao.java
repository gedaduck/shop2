package dao.dao;

import vo.Goods;
import vo.Orders;
import vo.Businessman;

import java.util.List;

public interface BusinessmanDao {
    Businessman login(String name,String password);
    int regist(Businessman businessman);
    List<Goods> getGoods(String business_account);
    List<Orders> getOrders(String business_account);
    int goods_send(int goods_id);
    int goods_delete(int goods_id);
}
