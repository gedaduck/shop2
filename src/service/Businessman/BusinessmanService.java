package service.Businessman;

import vo.Goods;
import vo.Orders;
import vo.Businessman;

import java.util.List;

public interface BusinessmanService {
    Businessman BusinessmanLogin(String name,String password);
    List<Goods> getGoods(String businessman_account);
    Goods getaGood(int goods_id);
    boolean addGoods(Goods goods);
    List<Orders> getOrders(String businessman_account);
}
