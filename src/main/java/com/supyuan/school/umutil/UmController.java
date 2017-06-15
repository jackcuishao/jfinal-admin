package com.supyuan.school.umutil;

import com.jfinal.kit.PathKit;
import com.jfinal.kit.Ret;
import com.jfinal.upload.UploadFile;
import com.supyuan.component.base.BaseProjectController;
import com.supyuan.jfinal.component.annotation.ControllerBind;

import javax.imageio.ImageIO;
import javax.imageio.ImageReader;
import javax.imageio.stream.ImageInputStream;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;

/**
 * Created by CSJ11 on 2017/6/15.
 */
@ControllerBind(controllerKey = "/um")
public class UmController extends BaseProjectController {

    public void index() {
        render("/pages/school/um/index.html");
    }


    /**
     * ueditor上传
     */
    public void upload(){
        if ("config".equals(getPara("action"))) {
            render("/static/component/ueditor/jsp/config.json");
            return;
        }
        String path = PathKit.getWebRootPath().replace("\\","/") + "/upload/";
        UploadFile file = getFile("upfile"); //获取文件
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
        Ret ret = Ret.create("state", "SUCCESS")  //下面这几个都是必须返回给ueditor的数据
                .set("url", "/upload/"+fileName)  //文件上传后的路径
                .set("title", fileName)  //文件名称
                .set("original", orig)
                .set("type", "."+typeArr[1])
                .set("size", size);
        renderJson(ret);
    }


}
