package org.cqie.controller;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.api.R;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.val;
import org.cqie.annotation.Log;
import org.cqie.common.result.Result;

import org.cqie.enums.BusinessType;
import org.cqie.model.system.SysRole;
import org.cqie.model.vo.AssginRoleVo;
import org.cqie.model.vo.SysRoleQueryVo;
import org.cqie.service.SysRoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("admin/system/role")
@Api(tags = "角色管理")
public class SysRoleController {
    @Autowired
    private SysRoleService sysRoleService;

    //角色列表查询
    @Log(title = "角色管理",businessType = BusinessType.SELECT)
    @GetMapping("/findAll")
    @ApiOperation(value = "查询所有角色列表")
    public Result findAll(){
        List<SysRole> roleList = sysRoleService.list();
        return Result.ok(roleList);
    }
    //分页列表查询
    @Log(title = "角色管理",businessType = BusinessType.SELECT)
    @PreAuthorize("hasAuthority('bnt.sysRole.list')")
    @GetMapping("/{page}/{limit}")
    @ApiOperation("分页查询角色列表")
    public Result findPageQueryRole(@PathVariable Long page,
                                    @PathVariable Long limit,
                                    SysRoleQueryVo sysRoleQueryVo){
        Page<SysRole> pageParam = new Page<>(page,limit);
        IPage<SysRole> pageModel = sysRoleService.selectPage(pageParam,sysRoleQueryVo);
        return Result.ok(pageModel);
    }
    //根据id查询角色
    @Log(title = "角色管理",businessType = BusinessType.SELECT)
    @PreAuthorize("hasAuthority('bnt.sysRole.list')")
    @GetMapping("/selectById/{id}")
    @ApiOperation("根据id查询角色")
    public Result selectById(@PathVariable Long id){
        SysRole role = sysRoleService.getById(id);
        return Result.ok(role);
    }
    //新增角色操作
    @Log(title = "角色管理",businessType = BusinessType.INSERT)
    @PreAuthorize("hasAuthority('bnt.sysRole.add')")
    @PostMapping("/save")
    @ApiOperation("新增角色")
    public Result save(@RequestBody SysRole role){
        sysRoleService.save(role);
        return Result.ok();
    }
    //修改角色信息
    @Log(title = "角色管理",businessType = BusinessType.UPDATE)
    @PreAuthorize("hasAuthority('bnt.sysRole.update')")
    @PutMapping("/update")
    @ApiOperation("修改角色")
    public Result updateById(@RequestBody SysRole role){
        sysRoleService.updateById(role);
        return Result.ok();
    }
    //删除角色
    @Log(title = "角色管理",businessType = BusinessType.DELETE)
    @PreAuthorize("hasAuthority('bnt.sysRole.remove')")
    @DeleteMapping("/remove/{id}")
    @ApiOperation("删除角色")
    public Result removeRole(@PathVariable Long id){
        sysRoleService.removeById(id);
        return Result.ok();
    }
    //根据id列表删除角色
    @Log(title = "角色管理",businessType = BusinessType.DELETE)
    @PreAuthorize("hasAuthority('bnt.sysRole.remove')")
    @DeleteMapping("/batchRemove")
    @ApiOperation("根据id列表删除角色")
    public Result batchRemove(@RequestBody List<Long> list){
        sysRoleService.removeByIds(list);
        return Result.ok();
    }
    //根据用户获取角色数据
    @Log(title = "角色管理",businessType = BusinessType.OTHER)
    @ApiOperation("根据用户获取角色数据")
    @GetMapping("toAssign/{userId}")
    public Result toAssign(@PathVariable String userId){
        Map<String,Object> roleMap = sysRoleService.getRoleByUserId(userId);
        return Result.ok(roleMap);
    }
    //根据用户分配角色
    @Log(title = "角色管理",businessType = BusinessType.ASSGIN)
    @ApiOperation("根据用户分配角色")
    @PostMapping("doAssign")
    public Result doAssign(@RequestBody AssginRoleVo assginRoleVo){
        sysRoleService.doAssign(assginRoleVo);
        return Result.ok();
    }
}
