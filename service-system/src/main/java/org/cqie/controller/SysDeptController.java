package org.cqie.controller;


import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.cqie.annotation.Log;
import org.cqie.common.result.Result;
import org.cqie.enums.BusinessType;
import org.cqie.model.system.SysDept;
import org.cqie.service.SysDeptService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;

/**
 * <p>
 * 组织机构 前端控制器
 * </p>
 *
 * @author Jerry
 * @since 2025-03-09
 */
@Api(tags = "部门管理")
@RestController
@RequestMapping("admin/system/sysDept")
public class SysDeptController {
    @Autowired
    private SysDeptService sysDeptService;
    @Log(title = "部门管理",businessType = BusinessType.OTHER)
    @ApiOperation("获取部门")
    @GetMapping("findNodes")
    public Result findNodes(){
        List<SysDept> deptList = sysDeptService.findNodes();
        return Result.ok(deptList);
    }
    //添加部门
    @Log(title = "部门管理",businessType = BusinessType.INSERT)
    @ApiOperation("添加部门")
    @PostMapping("save")
    public Result save(@RequestBody SysDept sysDept){
        sysDeptService.save(sysDept);
        return Result.ok();
    }
    //根据id查询
    @Log(title = "部门管理",businessType = BusinessType.SELECT)
    @ApiOperation("根据id查询部门")
    @GetMapping("findNode/{id}")
    public Result findNode(@PathVariable String id){
        SysDept sysDept = sysDeptService.getById(id);
        return Result.ok(sysDept);
    }
    //修改菜单
    @Log(title = "部门管理",businessType = BusinessType.UPDATE)
    @ApiOperation("修改部门")
    @PostMapping("update")
    public Result update(@RequestBody SysDept sysDept){
        sysDeptService.updateById(sysDept);
        return Result.ok();
    }
    //删除部门
    @Log(title = "部门管理",businessType = BusinessType.DELETE)
    @ApiOperation("删除部门")
    @DeleteMapping("remove/{id}")
    public Result remove(@PathVariable Long id){
        sysDeptService.removeDeptById(id);
        return Result.ok();
    }
    //更新部门状态
    @Log(title = "部门管理",businessType = BusinessType.STATUS)
    @ApiOperation("部门状态")
    @GetMapping("updateStatus/{id}/{status}")
    public Result updateStatus(@PathVariable Long id,@PathVariable Integer status){
        sysDeptService.updateStatus(id,status);
        return Result.ok();
    }

}

