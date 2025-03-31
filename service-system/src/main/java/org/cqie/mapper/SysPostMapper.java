package org.cqie.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import org.apache.ibatis.annotations.Param;
import org.cqie.model.system.SysPost;
import org.cqie.model.vo.SysPostQueryVo;

/**
 * <p>
 * 岗位信息表 Mapper 接口
 * </p>
 *
 * @author Jerry
 * @since 2025-03-09
 */
public interface SysPostMapper extends BaseMapper<SysPost> {
    IPage<SysPost> selectPage(Page<SysPost> pageParam, @Param("vo") SysPostQueryVo sysPostQueryVo);
}
