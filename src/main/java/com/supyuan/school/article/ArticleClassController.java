package com.supyuan.school.article;

import com.jfinal.plugin.activerecord.Page;
import com.supyuan.component.base.BaseProjectController;
import com.supyuan.jfinal.component.annotation.ControllerBind;
import com.supyuan.jfinal.component.db.SQLUtils;
import com.supyuan.system.department.SysDepartment;
import com.supyuan.util.StrUtils;

import java.util.List;

/**
 * Created by sj on 17-6-16.
 */
@ControllerBind(controllerKey = "/article/articleClass")
public class ArticleClassController extends BaseProjectController {
    private static final String path = "/pages/school/articleclass/";

    public void index() {
        list();
    }

    public void list() {
        ArticleClass model = getModelByAttr(ArticleClass.class);

        SQLUtils sql = new SQLUtils(" from article_class t left join  sys_user u on t.createUser = u.userid"
                + " where 1=1 ");
        if (model.getAttrValues().length != 0) {
            sql.setAlias("t");
            // 查询条件
            sql.whereLike("class_name", model.getStr("class_name"));
        }

        // 排序
        String orderBy = getBaseForm().getOrderBy();
        if (StrUtils.isEmpty(orderBy)) {
            sql.append(" order by t.id desc ");
        } else {
            sql.append(" order by ").append(orderBy);
        }

        Page<ArticleClass> page = ArticleClass.dao.paginate(getPaginator(), "select t.*,u.username as username ", //
                sql.toString().toString());

        // 下拉框
        setAttr("page", page);
        setAttr("attr", model);


        render(path + "list.html");
    }
}
