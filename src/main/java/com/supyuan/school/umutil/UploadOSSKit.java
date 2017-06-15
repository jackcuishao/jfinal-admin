//package com.supyuan.school.umutil;
//
//import com.jfinal.upload.UploadFile;
//
//import java.text.SimpleDateFormat;
//
///**
// * Created by CSJ11 on 2017/6/15.
// */
//public class UploadOSSKit {
//    public static String uploadImage(UploadFile file) {
//        String fileName = file.getFileName();
//        String extName = fileName.substring(fileName.lastIndexOf(".") + 1);
//        SimpleDateFormat dateFormat = new SimpleDateFormat(
//                "yyyyMMddHHmmss");
//        int temp = (int) (Math.random() * 9000 + 1000);
//        fileName = getRequest().getRemoteAddr().replaceAll(":", "")
//                + dateFormat.format(new Date())
//                + new Integer(temp).toString() + "." + extName;//对文件进行重命名，防治文件重名。命名的规则是使用上传客户端的ip+上传时间+四位随机数的方法。
//        file.renameTo(new File(path + fileName));
//    }
