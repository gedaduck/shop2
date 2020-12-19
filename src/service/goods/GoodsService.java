package service.goods;

import vo.Goods;

import java.util.List;

public interface GoodsService {
    public Goods getGoods(int goods_id);
    public List<String> getGoodsEvaluation(int goods_id);
}
