package com.supyuan.school.article;

import com.supyuan.jfinal.base.BaseService;

import java.util.List;

/**
 * Created by CSJ11 on 2017/6/16.
 */
public class AtricleSvc extends BaseService {
    public List<ArticleClass> getArticleClass() {
        return ArticleClass.dao.findByWhere("");
    }
}
