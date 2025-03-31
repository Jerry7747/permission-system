package org.cqie.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Mapper;
import org.cqie.model.system.SysMenu;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * 菜单表 Mapper 接口
 *
 * @author Jerry
 * @since 2025-02-23
 */
@Repository
@Mapper
public interface SysMenuMapper extends BaseMapper<SysMenu> {
    //查询该用户的权限
    List<SysMenu> findListByUserId(String userId);
}
