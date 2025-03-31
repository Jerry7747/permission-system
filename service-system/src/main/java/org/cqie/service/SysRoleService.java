package org.cqie.service;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.IService;
import org.cqie.model.system.SysRole;
import org.cqie.model.vo.AssginRoleVo;
import org.cqie.model.vo.SysRoleQueryVo;

import java.util.Map;

public interface SysRoleService extends IService<SysRole> {
    //分页列表查询
    IPage<SysRole> selectPage(Page<SysRole> pageParam, SysRoleQueryVo roleQueryVo);

    //根据用户获取角色数据
    Map<String, Object> getRoleByUserId(String userId);

    //根据用户分配角色
    void doAssign(AssginRoleVo assginRoleVo);
}
