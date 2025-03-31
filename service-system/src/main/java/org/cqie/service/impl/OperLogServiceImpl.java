package org.cqie.service.impl;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.cqie.mapper.OperLogMapper;
import org.cqie.mapper.SysLoginLogMapper;
import org.cqie.model.system.SysOperLog;
import org.cqie.model.vo.SysOperLogQueryVo;
import org.cqie.service.OperLogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class OperLogServiceImpl extends ServiceImpl<OperLogMapper,SysOperLog> implements OperLogService {
    @Autowired
    private OperLogMapper operLogMapper;
    @Override
    public void saveSysLog(SysOperLog sysOperLog) {
        operLogMapper.insert(sysOperLog);
    }
    //操作分页查询日志
    @Override
    public IPage<SysOperLog> selectPage(Page<SysOperLog> pageParam, SysOperLogQueryVo sysOperLogQueryVo) {
        return operLogMapper.selectPageOverride(pageParam,sysOperLogQueryVo);
    }
}
