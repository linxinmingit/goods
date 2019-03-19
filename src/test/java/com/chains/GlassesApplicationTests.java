package com.chains;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.chains.mapper.SysRoleMapper;
import com.chains.model.SysMenu;
import com.chains.model.SysRole;
import com.chains.service.ISysMenuService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.List;

@RunWith(SpringRunner.class)
@SpringBootTest
public class GlassesApplicationTests {

    @Autowired
    private SysRoleMapper sysRoleMapper;

    @Autowired
    private ISysMenuService sysMenuService;

    @Test
    public void selectMenu(){
        List<SysMenu> list = sysMenuService.list(null);
        for(SysMenu sysMenu : list) {
            System.out.println(sysMenu.toString());
        }
    }


    @Test
    public void page(){
        IPage<SysRole> page = sysRoleMapper.selectPage(new Page<SysRole>(1,10), null);
        for(SysRole sysRole : page.getRecords()) {
            System.out.println(sysRole.toString());
        }
    }


    @Test
    public void findById(){
        String id = "5369d947-f9cd-11e8-b76e-2c56dc9c49c2";
        SysRole sysRole = sysRoleMapper.findById(id);
        System.out.println(sysRole.toString());
    }




}
