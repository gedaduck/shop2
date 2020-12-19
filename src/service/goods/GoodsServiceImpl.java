package service.goods;

import dao.Impl.GoodsImpl;
import dao.dao.GoodsDao;
import vo.Goods;

import java.util.List;

public class GoodsServiceImpl implements GoodsService {
    private GoodsDao goodsImpl=new GoodsImpl();
    @Override
    public Goods getGoods(int goods_id) {
        return goodsImpl.getGoods(goods_id);
    }

    @Override
    public List<String> getGoodsEvaluation(int goods_id) {
        return goodsImpl.getGoodsEvaluation(goods_id);
    }
}
