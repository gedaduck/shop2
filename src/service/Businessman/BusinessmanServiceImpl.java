package service.Businessman;

import dao.Impl.BusinessmanImpl;
import dao.dao.BusinessmanDao;
import service.goods.GoodsService;
import service.goods.GoodsServiceImpl;
import vo.Goods;
import vo.Orders;
import vo.Businessman;

import java.util.List;

public class BusinessmanServiceImpl implements BusinessmanService {
    private BusinessmanDao businessmanImpl=new BusinessmanImpl();

    @Override
    public Businessman businessmanLogin(String name, String password) {
        return businessmanImpl.login(name,password);
    }

    @Override
    public List<Goods> getGoods(String businessman_account) {
        return businessmanImpl.getGoods(businessman_account);
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
        return businessmanImpl.getOrders(businessman_account);

    }

    @Override
    public int order_send(int goods_id) {
        return businessmanImpl.goods_send(goods_id);
    }

    @Override
    public int order_delete(int goods_id) {
        return businessmanImpl.goods_delete(goods_id);
    }

    @Override
    public int regist(Businessman businessman) {
        return businessmanImpl.regist(businessman);
    }

    @Override
    public boolean goods_modify(Goods goods) {
        return businessmanImpl.goods_modify(goods);
    }

}
