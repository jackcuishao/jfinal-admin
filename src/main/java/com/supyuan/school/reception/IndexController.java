package com.supyuan.school.reception;

import com.supyuan.component.base.BaseProjectController;
import com.supyuan.jfinal.component.annotation.ControllerBind;

/**
 * Created by sj on 17-6-18.
 */
@ControllerBind(controllerKey = "/")
public class IndexController extends BaseProjectController {
    private static final String path = "/pages/school/jhdxedu/";
    public void index(){
        render(path + "index.html");
    }
}
