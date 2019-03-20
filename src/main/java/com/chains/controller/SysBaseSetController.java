package com.chains.controller;


import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.chains.comment.BaseController;
import com.chains.model.SysBaseSet;
import com.chains.model.SysEmployee;
import com.chains.service.ISysBaseSetService;
import com.chains.vo.SimpleMsgVO;
import com.chains.vo.TableMsgVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpSession;
import java.io.File;
import java.time.LocalDateTime;

/**
 * <p>
 * 基础设置 前端控制器
 * </p>
 *
 * @author chains
 * @since 2019-03-19
 */
@RestController
@RequestMapping("/sysBaseSet")
public class SysBaseSetController extends BaseController {

    @Autowired
    private ISysBaseSetService iSysBaseSetService;

    /**
     * 分页查询角色列表
     * @param sysBaseSetPage
     * @param wrapper
     * @param sysBaseSet
     * @return
     */
    @RequestMapping("/page")
    public Object queryPageList(Page<SysBaseSet> sysBaseSetPage, QueryWrapper<SysBaseSet> wrapper, SysBaseSet sysBaseSet){
        try {
            if(null != sysBaseSet.getHotSearch() && !"".equals(sysBaseSet.getHotSearch())){
                wrapper.like("hot_search", sysBaseSet.getHotSearch());
            }
            IPage<SysBaseSet> page = iSysBaseSetService.page(new Page<>(sysBaseSetPage.getCurrent(), sysBaseSetPage.getSize()), wrapper);
            return TableMsgVO.getOk(page.getTotal(),page.getRecords());
        }catch (Exception e){
            e.printStackTrace();
            return SimpleMsgVO.getFail9997();
        }
    }

    /**
     *  新增或编辑角色
     * @param file
     * @param sysBaseSet
     * @param session
     * @return
     */
    @RequestMapping("/save")
    public Object save(MultipartFile file, SysBaseSet sysBaseSet, HttpSession session){
        /**
         * 从session中获取登录用户信息
         */
        SysEmployee employee = (SysEmployee) session.getAttribute("user");
        try {
            if(null != sysBaseSet.getId() && !"".equals(sysBaseSet.getId())){
                sysBaseSet.setUpdateOn(LocalDateTime.now());
                sysBaseSet.setCreateBy(employee.getLoginName());
            } else {
                sysBaseSet.setUpdateBy(employee.getLoginName());
                sysBaseSet.setCreateOn(LocalDateTime.now());
            }
            /**
             * 图片上传
             */
//            String path = uploadImg(sysBaseSet.getDefaultImgFile());
//            if (!file.isEmpty())
//            {
//                String fileName = file.getOriginalFilename();
//                String suffix = fileName.substring(fileName.lastIndexOf(".") + 1);
//                File fi = new File(path,fileName);       //将path路径与图片名称联系在一起
//                if(!fi.getParentFile().exists()){    //判断是否存在path路径下的文件夹
//                    fi.getParentFile().mkdirs();       //不存在创建path路径下的文件夹
//                }
//                file.transferTo(fi);                        //上传图片
//                sysBaseSet.setDefaultImg(path);  //为保存图片路径
//            }


            /**
             * 数据默认启用状态
             */
            sysBaseSet.setIsDeleted(0);
            return SimpleMsgVO.getOk(iSysBaseSetService.saveOrUpdate(sysBaseSet));
        }catch (Exception e){
            e.printStackTrace();
            return SimpleMsgVO.getFail9997();
        }
    }

    /**
     * 删除id
     * @param id
     * @return
     */
    @RequestMapping("/del/{id}")
    public Object save(@PathVariable("id") String id){
        try {
            boolean flag = iSysBaseSetService.updateStatusById(id);
//            boolean flag = iSysBaseSetService.removeById(id);
            if(flag){
                QueryWrapper<SysEmployee> wrapper = new QueryWrapper<>();
                wrapper.eq("id", id);
//                iSysBaseSetService.remove(wrapper);
                return SimpleMsgVO.getOk();
            }
        } catch (Exception e){
            e.printStackTrace();
            return SimpleMsgVO.getFail9997();
        }
        return null;
    }

}

