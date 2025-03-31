package org.cqie.service;

import com.baomidou.mybatisplus.extension.service.IService;
import org.cqie.model.system.SysMenu;
import org.cqie.model.vo.AssginMenuVo;
import org.cqie.model.vo.RouterVo;

import java.util.List;

/**
 * 菜单表 服务类
 *
 * @author Jerry
 * @since 2025-02-23
 */
public interface SysMenuService extends IService<SysMenu> {
    //菜单树形数据
    List<SysMenu> findNodes();
    //删除菜单
    void removeMenuById(Long id);
    //根据角色获取菜单
    List<SysMenu> findSysMenuRoleId(String roleId);
    //给角色分配权限
    void doAssign(AssginMenuVo assginMenuVo);
    //权限更新状态
    void updateStatus(Long id, Integer status);
    //根据userId查询菜单权限信息
    List<RouterVo> getUserMenuList(String userId);
    //根据UserId查询按钮权限信息
    List<String> getUserButtonList(String userId);
}
