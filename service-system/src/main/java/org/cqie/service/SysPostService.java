package org.cqie.service;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.IService;
import org.cqie.model.system.SysPost;
import org.cqie.model.vo.SysPostQueryVo;

/**
 * <p>
 * 岗位信息表 服务类
 * </p>
 *
 * @author Jerry
 * @since 2025-03-09
 */
public interface SysPostService extends IService<SysPost> {
    //分页查询岗位列表
    IPage<SysPost> selectPage(Page<SysPost> pageParam, SysPostQueryVo sysPostQueryVo);
    //修改岗位状态
    void updateStatus(Long id, Integer status);
}
