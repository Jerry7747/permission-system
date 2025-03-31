package org.cqie.service;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.IService;
import org.cqie.model.system.SysUser;
import org.cqie.model.vo.SysUserQueryVo;

import java.util.Map;

public interface SysUserService extends IService<SysUser> {
    IPage<SysUser> selectPage(Page<SysUser> pageParam, SysUserQueryVo userQueryVo);
    //根据id更改状态
    void updateStatus(Long id, Integer status);
    //根据username查询数据
    SysUser getByUsername(String username);
    //根据用户名称获取用户信息
    Map<String, Object> getUserInfo(String username);
}
