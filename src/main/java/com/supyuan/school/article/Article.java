package com.supyuan.school.article;

import com.supyuan.component.base.BaseProjectModel;
import com.supyuan.jfinal.component.annotation.ModelBind;

import java.util.List;

/**
 * Created by CSJ11 on 2017/6/16.
 */
@ModelBind(table = "article")
public class Article extends BaseProjectModel<Article> {
    private static final long serialVersionUID = 1L;
    public static final Article dao = new Article();
}
