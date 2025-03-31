package org.cqie.service;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.IService;
import org.cqie.model.system.SysLoginLog;
import org.cqie.model.vo.SysLoginLogQueryVo;

/**
 * 异步调用日志服务
 */
public interface LoginLogService extends IService<SysLoginLog> {
    /**
     * 记录登录信息
     * @param username  用户名
     * @param status    状态
     * @param ipaddr    Ip
     * @param message   消息内容
     */
    void recordLoginLog(String username,Integer status,String ipaddr,String message);
    //条件分页查询日志
    IPage<SysLoginLog> selectPage(long page, long limit, SysLoginLogQueryVo sysLoginLogQueryVo);
}
