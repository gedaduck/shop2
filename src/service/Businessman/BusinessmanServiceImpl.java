package service.Businessman;

import dao.Impl.BusinessmanImpl;
import dao.dao.BusinessmanDao;
import service.goods.GoodsService;
import service.goods.GoodsServiceImpl;
import vo.Goods;
import vo.Orders;
import vo.Businessman;

import java.util.List;

public class BusinessmanServiceImpl implements service.Businessman.BusinessmanService {
    private BusinessmanDao BusinessmanImpl=new BusinessmanImpl();

    @Override
    public Businessman BusinessmanLogin(String name, String password) {
        return BusinessmanImpl.login(name,password);
    }

    @Override
    public List<Goods> getGoods(String businessman_account) {
        return BusinessmanImpl.getGoods(businessman_account);
    }

    @Override
    public Goods getaGood(int goods_id) {
        GoodsService goodsImpl=new GoodsServiceImpl();
        return goodsImpl.getGoods(goods_id);
    }

    @Override
    public boolean addGoods(Goods goods) {
        GoodsService goodsImpl=new GoodsServiceImpl();
        return goodsImpl.addGoods(goods);
    }

    @Override
    public List<Orders> getOrders(String businessman_account) {

        return null;
    }
}
