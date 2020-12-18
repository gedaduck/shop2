package service;

import dao.Impl.SearchDaoImpl;
import dao.SearchDao;
import vo.Goods;

import java.util.List;

public class SearchService {
    private SearchDao goods=new SearchDaoImpl();

    public List<Goods> Search (String goods_introduce){
        List<Goods> list=goods.Search(goods_introduce);
        return list;
    }
}
