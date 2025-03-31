package org.cqie.controller;


import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.cqie.annotation.Log;
import org.cqie.common.result.Result;
import org.cqie.enums.BusinessType;
import org.cqie.model.system.SysMenu;
import org.cqie.model.system.SysRoleMenu;
import org.cqie.model.vo.AssginMenuVo;
import org.cqie.service.SysMenuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * 菜单表 前端控制器
 *
 * @author Jerry
 * @since 2025-02-23
 */
@Api(tags = "菜单管理")
@RestController
@RequestMapping("admin/system/sysMenu")
public class SysMenuController {
    @Autowired
    private SysMenuService sysMenuService;

    //菜单树形列表
    @Log(title = "菜单管理",businessType = BusinessType.OTHER)
    @ApiOperation("获取菜单")
    @GetMapping("findNodes")
    public Result findNodes(){
        List<SysMenu> menuList = sysMenuService.findNodes();
        return Result.ok(menuList);
    }
    //添加菜单
    @Log(title = "菜单管理",businessType = BusinessType.INSERT)
    @ApiOperation("添加菜单")
    @PostMapping("save")
    public Result save(@RequestBody SysMenu sysMenu){
        sysMenuService.save(sysMenu);
        return Result.ok();
    }
    //根据id查询
    @Log(title = "菜单管理",businessType = BusinessType.SELECT)
    @ApiOperation("根据id查询菜单")
    @GetMapping("findNode/{id}")
    public Result findNode(@PathVariable String id){
        SysMenu sysMenu = sysMenuService.getById(id);
        return Result.ok(sysMenu);
    }
    //修改菜单
    @Log(title = "菜单管理",businessType = BusinessType.UPDATE)
    @ApiOperation("修改菜单")
    @PostMapping("update")
    public Result update(@RequestBody SysMenu sysMenu){
        sysMenuService.updateById(sysMenu);
        return Result.ok();
    }
    //删除菜单
    @Log(title = "菜单管理",businessType = BusinessType.DELETE)
    @ApiOperation("删除菜单")
    @DeleteMapping("remove/{id}")
    public Result remove(@PathVariable Long id){
        sysMenuService.removeMenuById(id);
        return Result.ok();
    }
    //根据角色获取菜单
    @Log(title = "菜单管理",businessType = BusinessType.OTHER)
    @ApiOperation("根据角色获取菜单")
    @GetMapping("toAssign/{roleId}")
    public Result toAssign(@PathVariable String roleId){
        List<SysMenu> menuList = sysMenuService.findSysMenuRoleId(roleId);
        return Result.ok(menuList);
    }
    //给角色分配权限
    @Log(title = "菜单管理",businessType = BusinessType.ASSGIN)
    @ApiOperation("给角色分配权限")
    @PostMapping("doAssign")
    public Result doAssign(@RequestBody AssginMenuVo assginMenuVo){
        sysMenuService.doAssign(assginMenuVo);
        return Result.ok();
    }
    //权限更新状态
    @Log(title = "菜单管理",businessType = BusinessType.STATUS)
    @ApiOperation("权限更新状态")
    @GetMapping("updateStatus/{id}/{status}")
    public Result  updateStatus(@PathVariable Long id,@PathVariable Integer status){
        sysMenuService.updateStatus(id,status);
        return Result.ok();
    }
}

