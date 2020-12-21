package service.seller;

import vo.Goods;
import vo.Orders;
import vo.Seller;

import java.util.List;

public interface SellerService {
    Seller sellerLogin(String name,String password);
    List<Goods> getGoods(String businessman_account);
    Goods getaGood(int goods_id);
    boolean addGoods(Goods goods);
    List<Orders> getOrders(String businessman_account);
}
