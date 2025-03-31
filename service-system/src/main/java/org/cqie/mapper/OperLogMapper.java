package org.cqie.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import org.apache.ibatis.annotations.Param;
import org.cqie.model.system.SysLoginLog;
import org.cqie.model.system.SysOperLog;
import org.cqie.model.vo.SysOperLogQueryVo;
import org.cqie.service.OperLogService;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

@Repository
@Service
public interface OperLogMapper extends BaseMapper<SysOperLog> {
    IPage<SysOperLog> selectPageOverride(Page<SysOperLog> page, @Param("vo")SysOperLogQueryVo sysOperLogQueryVo);
}
