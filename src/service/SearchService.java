package service;

import dao.Impl.SearchDaoImpl;
import dao.dao.SearchDao;
import vo.Goods;

import java.util.List;

public class SearchService {
    private SearchDao goods=new SearchDaoImpl();

    public List<Goods> Search (String goods_introduce){
        List<Goods> list=goods.Search(goods_introduce);
        return list;
    }
    public List<Goods> searchByCategory(int goods_category){
        return goods.searchByCategory(goods_category);
    }
}
