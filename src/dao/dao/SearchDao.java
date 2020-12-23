package dao.dao;

import vo.Goods;

import java.util.List;

public interface SearchDao {
    public List<Goods> Search(String goods_introduce);
    public List<Goods> searchByCategory(int goods_category);
}
