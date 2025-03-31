package org.cqie.controller;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.cqie.annotation.Log;
import org.cqie.common.result.Result;
import org.cqie.common.utils.MD5;
import org.cqie.enums.BusinessType;
import org.cqie.model.system.SysUser;
import org.cqie.model.vo.SysUserQueryVo;
import org.cqie.service.SysUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@Api(tags = "用户管理")
@RestController
@RequestMapping("admin/system/sysUser")
@CrossOrigin//允许跨域
public class SysUserController {
    @Autowired
    private SysUserService sysUserService;

    //分页查询用户列表
    @Log(title = "用户管理",businessType = BusinessType.SELECT)
    @GetMapping("{page}/{limit}")
    @ApiOperation("分页查询用户列表")
    public Result selectAllUser(@PathVariable Long page,
                                @PathVariable Long limit,
                                SysUserQueryVo userQueryVo){
        Page<SysUser> pageParam = new Page<>(page,limit);
        IPage<SysUser> pageModel = sysUserService.selectPage(pageParam,userQueryVo);
        return Result.ok(pageModel);
    }
    //根据Id查询用户
    @Log(title = "用户管理",businessType = BusinessType.SELECT)
    @GetMapping("get/{id}")
    @ApiOperation("根据id获取用户")
    public Result selectUser(@PathVariable Long id){
        SysUser user = sysUserService.getById(id);
        return Result.ok(user);
    }
    //新增用户
    @Log(title = "用户管理",businessType = BusinessType.INSERT)
    @PostMapping("save")
    @ApiOperation("新增用户接口")
    public Result saveUser(@RequestBody SysUser user){
        //把输入的密码进行加密
        String md5Pwd = MD5.encrypt(user.getPassword());
        user.setPassword(md5Pwd);
        sysUserService.save(user);
        return Result.ok();
    }
    //更新用户
    @Log(title = "用户管理",businessType = BusinessType.UPDATE)
    @PostMapping("update")
    @ApiOperation("修改用户接口")
    public Result updateUser(@RequestBody SysUser user){
        sysUserService.updateById(user);
        return Result.ok();
    }
    //删除用户
    @Log(title = "用户管理",businessType = BusinessType.DELETE)
    @DeleteMapping("remove/{id}")
    @ApiOperation("删除用户接口")
    public Result removeUser(@PathVariable Long id){
        sysUserService.removeById(id);
        return Result.ok();
    }
    //修改用户状态
    @Log(title = "用户管理",businessType = BusinessType.STATUS)
    @ApiOperation("用户更新状态")
    @GetMapping("updateStatus/{id}/{status}")
    public Result updateStatus(@PathVariable Long id,@PathVariable Integer status){
        sysUserService.updateStatus(id,status);
        return Result.ok();
    }
}
