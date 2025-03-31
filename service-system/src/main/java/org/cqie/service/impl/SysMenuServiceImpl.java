package org.cqie.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import org.cqie.handler.MyException;
import org.cqie.mapper.SysMenuMapper;
import org.cqie.mapper.SysRoleMenuMapper;
import org.cqie.model.system.SysMenu;
import org.cqie.model.system.SysRoleMenu;
import org.cqie.model.vo.AssginMenuVo;
import org.cqie.model.vo.RouterVo;
import org.cqie.service.SysMenuService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.cqie.utils.MenuHelper;
import org.cqie.utils.RouterHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
 * 菜单表 服务实现类
 *
 * @author Jerry
 * @since 2025-02-23
 */
@Service
public class SysMenuServiceImpl extends ServiceImpl<SysMenuMapper, SysMenu> implements SysMenuService {
    @Autowired
    private SysMenuMapper sysMenuMapper;
    @Autowired
    private SysRoleMenuMapper sysRoleMenuMapper;
    //菜单树形数据
    @Override
    public List<SysMenu> findNodes() {
        //全部权限列表
        List<SysMenu> sysMenuList = sysMenuMapper.selectList(null);
        //构建树形数据
        List<SysMenu> result = MenuHelper.buildTree(sysMenuList);
        return result;
    }
    //删除菜单
    @Override
    public void removeMenuById(Long id) {
        //查询当前菜单下是否有子菜单
        QueryWrapper<SysMenu> wrapper = new QueryWrapper<>();
        wrapper.eq("parent_id",id);
        Integer count = sysMenuMapper.selectCount(wrapper);
        if(count > 0){
            //有子菜单抛出
            throw new MyException(201,"请先删除子菜单！");
        }
        //删除菜单
        sysMenuMapper.deleteById(id);
    }

    //根据角色获取菜单
    @Override
    public List<SysMenu> findSysMenuRoleId(String roleId) {
        //获取status为1的权限列表
        QueryWrapper<SysMenu> menuQueryWrapper = new QueryWrapper<>();
        menuQueryWrapper.eq("status",1);
        List<SysMenu> menuList = sysMenuMapper.selectList(menuQueryWrapper);

        //根据角色id获取角色权限
        QueryWrapper<SysRoleMenu> roleMenuQueryWrapper = new QueryWrapper<>();
        roleMenuQueryWrapper.eq("role_id",roleId);
        List<SysRoleMenu> roleMenus = sysRoleMenuMapper.selectList(roleMenuQueryWrapper);

        //获取角色已分配的权限id
        List<String> roleMenuIds = new ArrayList<>();
        for (SysRoleMenu roleMenu : roleMenus) {
            roleMenuIds.add(roleMenu.getMenuId());
        }

        //遍历权限列表
        for (SysMenu sysMenu : menuList) {
            if(roleMenuIds.contains(sysMenu.getId())){
                //设置权限已被分配
                sysMenu.setSelect(true);
            }else{
                sysMenu.setSelect(false);
            }
        }

        //将权限列表转换为权限树结构
        List<SysMenu> sysMenus = MenuHelper.buildTree(menuList);
        return sysMenus;
    }

    //给角色分配权限
    @Override
    public void doAssign(AssginMenuVo assginMenuVo) {
        //删除已分配的权限
        QueryWrapper<SysRoleMenu> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("role_id",assginMenuVo.getRoleId());
        sysRoleMenuMapper.delete(queryWrapper);

        //遍历已选择的权限id
        List<String> menuIdList = assginMenuVo.getMenuIdList();
        for (String menuId : menuIdList) {
            if(menuId != null){
                //创建SysRoleMenu对象
                SysRoleMenu sysRoleMenu = new SysRoleMenu();
                sysRoleMenu.setMenuId(menuId);
                sysRoleMenu.setRoleId(assginMenuVo.getRoleId());

                //添加新的权限
                sysRoleMenuMapper.insert(sysRoleMenu);
            }
        }
    }
    //权限更新状态
    @Override
    public void updateStatus(Long id, Integer status) {
        //查找该菜单
        SysMenu sysMenu = sysMenuMapper.selectById(id);
        //更改状态
        sysMenu.setStatus(status);
        sysMenuMapper.updateById(sysMenu);
    }
    //根据userId查询菜单权限信息
    @Override
    public List<RouterVo> getUserMenuList(String userId) {
        //超级管理员，操作所有内容
        List<SysMenu> sysMenus = null;
        //判断userId是1代表超级管理员，查询所有权限数据
        if("1".equals(userId)){
            QueryWrapper<SysMenu> wrapper = new QueryWrapper<>();
            wrapper.eq("status",1);
            wrapper.orderByAsc("sort_value");
            sysMenus = sysMenuMapper.selectList(wrapper);
        }else{
            //userId不是1，是其它类型用户，查询该用户的权限
            sysMenus = sysMenuMapper.findListByUserId(userId);
        }
        //构建树形数据
        List<SysMenu> sysMenuTreeList = MenuHelper.buildTree(sysMenus);

        //构建路由
        List<RouterVo> routerVoList = RouterHelper.buildRouters(sysMenuTreeList);
        return routerVoList;
    }
    //根据UserId查询按钮权限信息
    @Override
    public List<String> getUserButtonList(String userId) {
        //判断是否是超级管理员
        List<SysMenu> sysMenuList = null;
        if("1".equals(userId)){
            QueryWrapper<SysMenu> wrapper = new QueryWrapper<>();
            wrapper.eq("status",1);
            sysMenuList = sysMenuMapper.selectList(wrapper);
        }else{
            sysMenuList = sysMenuMapper.findListByUserId(userId);
        }
        //创建返回的集合
        List<String> permissionList = new ArrayList<>();
        for (SysMenu sysMenu : sysMenuList) {
            if(sysMenu.getType() == 2){
                permissionList.add(sysMenu.getPerms());
            }
        }
        return permissionList;
    }

}

