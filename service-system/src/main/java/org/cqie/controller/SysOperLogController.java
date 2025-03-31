package org.cqie.controller;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.cqie.common.result.Result;
import org.cqie.model.system.SysOperLog;
import org.cqie.model.vo.SysOperLogQueryVo;
import org.cqie.service.OperLogService;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;

@Api(value = "SysOperLog管理", tags = "SysOperLog管理")
@RestController
@RequestMapping(value="/admin/system/sysOperLog")
@SuppressWarnings({"unchecked", "rawtypes"})
public class SysOperLogController {
    @Resource
    private OperLogService operLogService;
    @ApiOperation(value = "获取分页列表")
    @GetMapping("{page}/{limit}")
    public Result index(@PathVariable long page,
                        @PathVariable long limit,
                        SysOperLogQueryVo sysOperLogQueryVo){
        Page<SysOperLog> pageParam = new Page<>(page,limit);
        IPage<SysOperLog> pageModel = operLogService.selectPage(pageParam,sysOperLogQueryVo);
        return Result.ok(pageModel);
    }
    @ApiOperation(value = "获取")
    @GetMapping("get/{id}")
    public Result get(@PathVariable Long id) {
        SysOperLog sysOperLog = operLogService.getById(id);
        return Result.ok(sysOperLog);
    }
}
