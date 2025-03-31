package org.cqie.controller;

import com.baomidou.mybatisplus.core.metadata.IPage;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.cqie.annotation.Log;
import org.cqie.common.result.Result;
import org.cqie.enums.BusinessType;
import org.cqie.model.system.SysLoginLog;
import org.cqie.model.vo.SysLoginLogQueryVo;
import org.cqie.service.LoginLogService;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;

@Api(value = "SysLoginLog管理",tags = "SysLoginLog管理")
@RestController
@RequestMapping("/admin/system/sysLoginLog")
@SuppressWarnings({"unchecked","rawtypes"})
public class SysLoginLogController {
    @Resource
    private LoginLogService loginLogService;
    @ApiOperation(value = "获取分页列表")
    @GetMapping("{page}/{limit}")
    public Result index(@PathVariable long page,
                        @PathVariable long limit,
                        SysLoginLogQueryVo sysLoginLogQueryVo){
        IPage<SysLoginLog> pageModel = loginLogService.selectPage(page,limit,sysLoginLogQueryVo);
        return Result.ok(pageModel);
    }
    @ApiOperation(value = "根据id获取")
    @GetMapping("get/{id}")
    public Result get(@PathVariable String id){
        SysLoginLog sysLoginLog = loginLogService.getById(id);
        return Result.ok(sysLoginLog);
    }
}
