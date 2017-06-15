package com.supyuan.school.article;

import com.supyuan.component.base.BaseProjectModel;
import com.supyuan.jfinal.component.annotation.ModelBind;
import com.supyuan.system.department.SysDepartment;

/**
 * Created by sj on 17-6-16.
 */
@ModelBind(table = "article_class")
public class ArticleClass extends BaseProjectModel<ArticleClass> {
    private static final long serialVersionUID = 1L;
    public static final ArticleClass dao = new ArticleClass();

}
