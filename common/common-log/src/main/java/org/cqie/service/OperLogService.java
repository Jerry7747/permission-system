package org.cqie.service;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.IService;
import org.cqie.model.system.SysOperLog;
import org.cqie.model.vo.SysOperLogQueryVo;

public interface OperLogService extends IService<SysOperLog> {
    void saveSysLog(SysOperLog sysOperLog);
    //操作分页查询日志
    IPage<SysOperLog> selectPage(Page<SysOperLog> pageParam, SysOperLogQueryVo sysOperLogQueryVo);
}
