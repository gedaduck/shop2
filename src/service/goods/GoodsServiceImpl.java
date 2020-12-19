package service.goods;

import dao.Impl.GoodsImpl;
import dao.dao.GoodsDao;
import vo.Goods;

public class GoodsServiceImpl implements GoodsService {
    private GoodsDao goodsImpl=new GoodsImpl();
    @Override
    public Goods getGoods(int goods_id) {
        return goodsImpl.getGoods(goods_id);
    }
}
