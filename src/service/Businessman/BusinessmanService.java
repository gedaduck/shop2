package service.Businessman;

import vo.Goods;
import vo.Orders;
import vo.Businessman;

import java.util.List;

public interface BusinessmanService {
    Businessman businessmanLogin(String name,String password);
    List<Goods> getGoods(String businessman_account);
    Goods getaGood(int goods_id);
    boolean addGoods(Goods goods);
    List<Orders> getOrders(String businessman_account);
    int order_send(int goods_id);
    int order_delete(int goods_id);
    int regist(Businessman businessman);
    boolean goods_modify(Goods goods);
}
