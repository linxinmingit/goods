package com.chains.comment;
import com.chains.util.DateUtils;
import lombok.extern.log4j.Log4j2;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.multipart.MultipartFile;
import java.io.File;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;

import java.util.Date;


/**
 * 基础controller类
 *
 * @author liangyijie
 * @since 1.0.0
 */
@Log4j2
public class BaseController {

    //上传地址实际位置
    @Value("upload.uploadConfig.upload-url")
    private String uploadUrl;
    //返回文件访问地址
    @Value("upload.uploadConfig.web-url")
    private String webUrl;

    /**
     * 处理文件上传
     * @param file
     * @return
     */
    public String uploadImg( MultipartFile file) {
        if (!file.isEmpty()) {

            // 获取文件存放路径
            String separator = File.separator;
            String basePath = uploadUrl + separator;
            String location = DateUtils.formatDate(new Date(), "yyyyMMdd") + separator;
            File targetFile = new File(basePath + location);
            if (!targetFile.exists()) {
                boolean mkdirs = targetFile.mkdirs();
            }
            String fileName = file.getOriginalFilename();
            String suffix = fileName.substring(fileName.lastIndexOf(".") + 1);
            fileName = System.currentTimeMillis() + "." + suffix;
            try {
                Files.copy(file.getInputStream(), Paths.get(basePath + location, fileName), StandardCopyOption.REPLACE_EXISTING);
                //	String path = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + request.getContextPath();
                return webUrl + DateUtils.formatDate(new Date(), "yyyyMMdd") + "/" + fileName;
            } catch (Exception e) {
                log.error("上传文件失败，" + e);
            }

        } else {
            log.error("上传文件为空");
            return "上传失败";
        }
        return "";
    }


}
