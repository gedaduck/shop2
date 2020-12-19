package dao.dao;

import vo.Goods;

import java.util.List;

public interface GoodsDao {
    public Goods getGoods(int goods_id);
    public List<String> getGoodsEvaluation(int goods_id);
}
