package org.cqie;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import org.cqie.mapper.SysRoleMapper;

import org.cqie.model.system.SysRole;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.List;

@SpringBootTest
public class SysRoleMapperTest {
    @Autowired
    private SysRoleMapper sysRoleMapper;

    //1.查询所有记录
    @Test
    public void selectAll(){
        //模拟自定义异常
//        try {
//            int a = 10/0;
//        }catch(Exception e) {
//            throw new GuiguException(20001,"出现自定义异常");
//        }
        List<SysRole> sysRoles = sysRoleMapper.selectList(null);
        for (SysRole sysRole : sysRoles) {
            System.out.println("sysRole = " + sysRole);
        }
    }
    //2.添加角色操作
    @Test
    public void insertRole(){
        SysRole sysRole = new SysRole();
        sysRole.setRoleName("测试角色");
        sysRole.setRoleCode("testManager");
        sysRole.setDescription("测试角色");
        int rows = sysRoleMapper.insert(sysRole);
        System.out.println(rows);
    }
    //3.更新角色操作
    @Test
    public void updateRole(){
     SysRole sysRole = sysRoleMapper.selectById("1889686488649003010");
        sysRole.setRoleName("测试角色4");
        sysRole.setRoleCode("testManager4");
        sysRole.setDescription("测试角色4");
        sysRoleMapper.updateById(sysRole);
    }
    //4.删除角色操作
    @Test
    public void deleteRole(){
        int result = sysRoleMapper.deleteById("1889686488649003010");
        System.out.println(result);
    }
    //5.根据条件查询角色
    @Test
    public void testQueryWrapper(){
        QueryWrapper<SysRole> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("role_name", "用户管理员");
        List<SysRole> sysRoles = sysRoleMapper.selectList(queryWrapper);
        System.out.println(sysRoles);
    }
}
