package service.seller;

import dao.Impl.SellerImpl;
import dao.dao.SellerDao;
import service.goods.GoodsService;
import service.goods.GoodsServiceImpl;
import vo.Goods;
import vo.Orders;
import vo.Seller;

import java.util.List;

public class SellerServiceImpl implements SellerService{
    private SellerDao sellerImpl=new SellerImpl();

    @Override
    public Seller sellerLogin(String name, String password) {
        return sellerImpl.login(name,password);
    }

    @Override
    public List<Goods> getGoods(String businessman_account) {
        return sellerImpl.getGoods(businessman_account);
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
