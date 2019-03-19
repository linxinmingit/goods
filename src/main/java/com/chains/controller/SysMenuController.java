package com.chains.controller;


import com.chains.model.SysEmployee;
import com.chains.service.ISysMenuService;
import com.chains.vo.SimpleMsgVO;
import org.apache.shiro.SecurityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * <p>
 * 菜单表 前端控制器
 * </p>
 *
 * @author cong
 * @since 2019-03-15
 */
@RestController
@RequestMapping("/sysMenu")
public class SysMenuController {

    @Autowired
    private ISysMenuService sysMenuService;

    /**
     * 获取当前用户的所有菜单
     * @return
     */
    @RequestMapping("/findCurrentMenus")
    public Object findCurrentMenus(){
        try {
            SysEmployee sysEmployee = (SysEmployee) SecurityUtils.getSubject().getPrincipal();
            if(null != sysEmployee){
                return SimpleMsgVO.getOk(sysMenuService.findCurrentMenusById(sysEmployee.getId()));
            }
        } catch (Exception e) {
            e.printStackTrace();
            return SimpleMsgVO.getFail9997();
        }
        return null;
    }

}

