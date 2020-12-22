package service.goods;

import vo.Goods;
import vo.Orders;

import java.util.List;

public interface GoodsService {
    Goods getGoods(int goods_id);
    List<Orders> getGoodsEvaluation(int goods_id);
    boolean addGoods(Goods goods);
}
