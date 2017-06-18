package com.supyuan.school.article;

import com.jfinal.kit.PathKit;
import com.jfinal.plugin.activerecord.Db;
import com.jfinal.plugin.activerecord.Page;
import com.jfinal.upload.UploadFile;
import com.supyuan.component.base.BaseProjectController;
import com.supyuan.jfinal.component.annotation.ControllerBind;
import com.supyuan.jfinal.component.db.SQLUtils;
import com.supyuan.util.StrUtils;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by CSJ11 on 2017/6/16.
 */
@ControllerBind(controllerKey = "/Article")
public class ArticleController extends BaseProjectController {
    private static final String path = "/pages/school/article/";

    public void index() {
        list();
    }

    public void list() {
        Article model = getModelByAttr(Article.class);

        SQLUtils sql = new SQLUtils(" from article t left join  sys_user u on t.createUser = u.userid left join article_class ac on ac.id = t.class_id"
                + " where 1=1 ");
        if (model.getAttrValues().length != 0) {
            sql.setAlias("t");
            // 查询条件
            sql.whereLike("article_title", model.getStr("article_title"));
            sql.whereEquals("class_id", model.getInt("class_id"));
        }

        // 排序
        String orderBy = getBaseForm().getOrderBy();
        if (StrUtils.isEmpty(orderBy)) {
            sql.append(" order by t.id desc ");
        } else {
            sql.append(" order by ").append(orderBy);
        }

        Page<Article> page = Article.dao.paginate(getPaginator(), "select t.*,u.username as username ,ac.class_name as class_name", //
                sql.toString().toString());

        List<ArticleClass> articleClasses =  new AtricleSvc().getArticleClass();
        setAttr("articleClasses", articleClasses);
        // 下拉框
        setAttr("page", page);
        setAttr("attr", model);



        render(path + "article_list.html");
    }

    public void add() {
        List<ArticleClass> articleClasses =  new AtricleSvc().getArticleClass();
        setAttr("articleClasses", articleClasses);
        render(path + "article_add.html");
    }


    public void edit() {
        Article model = Article.dao.findById(getParaToInt());
        List<ArticleClass> articleClasses =  new AtricleSvc().getArticleClass();
        setAttr("articleClasses", articleClasses);
        setAttr("model", model);
        render(path + "article_edit.html");
    }


    public void save() {
        Integer pid = getParaToInt();
        Article model = getModel(Article.class);
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

    public void delete() {
        Integer id = getParaToInt();
        // 日志添加
        Article model = new Article();
        Integer userid = getSessionUser().getUserID();
        String now = getNow();
        model.put("update_id", userid);
        model.put("update_time", now);

        // 删除授权
        Db.update("delete from article where id = ? ", id);

        model.deleteById(id);

        list();
    }


    public void uploadImg() {
        String path = PathKit.getWebRootPath().replace("\\","/") + "/upload/";
        UploadFile file = getFile("myFile"); //获取文件
        String fileName = file.getFileName();
        String[] typeArr = fileName.split("\\.");
        String orig = file.getOriginalFileName();
        long size = file.getFile().length();
        String extName = fileName.substring(fileName.lastIndexOf(".") + 1);
        SimpleDateFormat dateFormat = new SimpleDateFormat(
                "yyyyMMddHHmmss");
        int temp = (int) (Math.random() * 9000 + 1000);
        fileName = getRequest().getRemoteAddr().replaceAll(":", "")
                + dateFormat.format(new Date())
                + new Integer(temp).toString() + "." + extName;//对文件进行重命名，防治文件重名。命名的规则是使用上传客户端的ip+上传时间+四位随机数的方法。

        file.getFile().renameTo(new File(path + fileName));
        Map<String, Object> json = new HashMap<String, Object>();
        json.put("success", "/upload/"+fileName);
        renderJson(json);
    }




}
