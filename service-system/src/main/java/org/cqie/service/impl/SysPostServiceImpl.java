package org.cqie.service.impl;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import org.cqie.mapper.SysPostMapper;
import org.cqie.model.system.SysPost;
import org.cqie.model.vo.SysPostQueryVo;
import org.cqie.service.SysPostService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * <p>
 * 岗位信息表 服务实现类
 * </p>
 *
 * @author Jerry
 * @since 2025-03-09
 */
@Service
public class SysPostServiceImpl extends ServiceImpl<SysPostMapper, SysPost> implements SysPostService {
    @Autowired
    private SysPostMapper sysPostMapper;
    //分页查询岗位列表
    @Override
    public IPage<SysPost> selectPage(Page<SysPost> pageParam, SysPostQueryVo sysPostQueryVo) {
        return sysPostMapper.selectPage(pageParam,sysPostQueryVo);
    }
    //修改岗位状态
    @Override
    public void updateStatus(Long id, Integer status) {
        SysPost sysPost = sysPostMapper.selectById(id);
        sysPost.setStatus(status);
        sysPostMapper.updateById(sysPost);
    }
}
