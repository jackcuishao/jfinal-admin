package com.supyuan.school.reception;

import com.jfinal.plugin.activerecord.Page;
import com.supyuan.component.base.BaseProjectController;
import com.supyuan.jfinal.component.annotation.ControllerBind;
import com.supyuan.jfinal.component.db.SQLUtils;
import com.supyuan.school.article.Article;
import com.supyuan.util.StrUtils;

/**
 * Created by sj on 17-6-18.
 */
@ControllerBind(controllerKey = "/")
public class IndexController extends BaseProjectController {
    private static final String path = "/pages/school/jhdxedu/";
    public void index(){
        Page<Article> jddt = getArticleBystate(4);//江大动态
        Page<Article> zyjs = getArticleBystate(2);//专业介绍
        Page<Article> zsdt = getArticleBystate(1);//招生动态
        Page<Article> zszn = getArticleBystate(6);//招生指南
        Page<Article> zswd = getArticleBystate(7);//招生问答
        Page<Article> tzgg = getArticleBystate(5);//通知公告
        setAttr("jddt", jddt);
        setAttr("zyjs", zyjs);
        setAttr("zsdt", zsdt);
        setAttr("zszn", zszn);
        setAttr("zswd", zswd);
        setAttr("tzgg", tzgg);
        render(path + "index.html");
    }

    private Page<Article> getArticleBystate(int type){
        SQLUtils sql = new SQLUtils(" from article t "
                + " where 1=1 ");
        // 查询条件
        sql.whereEquals("class_id", type);
        // 排序
        String orderBy = getBaseForm().getOrderBy();
        if (StrUtils.isEmpty(orderBy)) {
            sql.append(" order by t.is_UP, desc ");
        } else {
            sql.append(" order by ").append(orderBy);
        }
        Page<Article> page = Article.dao.paginate(getPaginator(), "select t.*,u.username as username ,ac.class_name as class_name", //
                sql.toString().toString());
        return page;
    }
}
