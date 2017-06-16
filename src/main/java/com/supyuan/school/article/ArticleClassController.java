package com.supyuan.school.article;

import com.jfinal.plugin.activerecord.Db;
import com.jfinal.plugin.activerecord.Page;
import com.supyuan.component.base.BaseProjectController;
import com.supyuan.jfinal.component.annotation.ControllerBind;
import com.supyuan.jfinal.component.db.SQLUtils;
import com.supyuan.system.department.SysDepartment;
import com.supyuan.system.role.SysRole;
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
    public void add() {
        render(path + "add.html");
    }


    public void edit() {
        ArticleClass model = ArticleClass.dao.findById(getParaToInt());
        setAttr("model", model);
        render(path + "edit.html");
    }

    public void delete() {
        Integer id = getParaToInt();
        // 日志添加
        ArticleClass model = new ArticleClass();
        Integer userid = getSessionUser().getUserID();
        String now = getNow();
        model.put("update_id", userid);
        model.put("update_time", now);

        // 删除授权
        Db.update("delete from article_class where id = ? ", id);

        model.deleteById(id);

        list();
    }

    public void save() {
        Integer pid = getParaToInt();
        ArticleClass model = getModel(ArticleClass.class);
        // 日志添加
        Integer userid = getSessionUser().getUserID();
        String now = getNow();
        model.put("update_id", userid);
        model.put("update_time", now);
        if (pid != null && pid > 0) { // 更新
            model.update();
        } else { // 新增
            model.remove("id");
            model.put("createUser", userid);
            model.put("createTime", now);
            model.save();
        }
        renderMessage("保存成功");
    }
}
