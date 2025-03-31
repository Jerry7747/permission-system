package org.cqie.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.cqie.mapper.SysLoginLogMapper;
import org.cqie.model.system.SysLoginLog;
import org.cqie.model.vo.SysLoginLogQueryVo;
import org.cqie.service.LoginLogService;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import javax.annotation.Resource;

@Service
public class LoginLogServiceImpl extends ServiceImpl<SysLoginLogMapper,SysLoginLog> implements LoginLogService{
    @Resource
    private SysLoginLogMapper sysLoginLogMapper;
    /**
     * 记录登录信息
     * @param username  用户名
     * @param status    状态
     * @param ipaddr    Ip
     * @param message   消息内容
     */
    @Override
    public void recordLoginLog(String username, Integer status, String ipaddr, String message) {
        SysLoginLog sysLoginLog = new SysLoginLog();
        sysLoginLog.setUsername(username);
        sysLoginLog.setIpaddr(ipaddr);
        sysLoginLog.setMsg(message);
        //日志状态
        sysLoginLog.setStatus(status);
        sysLoginLogMapper.insert(sysLoginLog);
    }
    //条件分页查询日志
    @Override
    public IPage<SysLoginLog> selectPage(long page, long limit, SysLoginLogQueryVo sysLoginLogQueryVo) {
        //创建page对象
        Page<SysLoginLog> pageParam = new Page<>(page,limit);
        //获取条件值
        String username = sysLoginLogQueryVo.getUsername();
        String createTimeBegin = sysLoginLogQueryVo.getCreateTimeBegin();
        String createTimeEnd = sysLoginLogQueryVo.getCreateTimeEnd();
        //封装条件
        QueryWrapper<SysLoginLog> wrapper = new QueryWrapper<>();
        if(!StringUtils.isEmpty(username)){
            wrapper.like("username",username);
        }
        if(!StringUtils.isEmpty(createTimeBegin)){
            wrapper.ge("create_time",createTimeBegin);
        }
        if(!StringUtils.isEmpty(createTimeEnd)){
            wrapper.le("create_time",createTimeEnd);
        }
        wrapper.orderByDesc("create_time");
        //调用mapper方法
        IPage<SysLoginLog> pageModel = sysLoginLogMapper.selectPage(pageParam, wrapper);
        return pageModel;
    }
}
