package org.cqie.controller;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.cqie.annotation.Log;
import org.cqie.common.result.Result;
import org.cqie.common.utils.JwtHelper;
import org.cqie.common.utils.MD5;
import org.cqie.enums.BusinessType;
import org.cqie.handler.MyException;
import org.cqie.model.system.SysUser;
import org.cqie.model.vo.LoginVo;
import org.cqie.service.SysUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.Map;

@Api(tags = "用户登录接口")
@RestController
@RequestMapping("/admin/system/index")
public class IndexController {
    @Autowired
    private SysUserService sysUserService;
    //login in
//    @Log(title = "用户登录",businessType = BusinessType.OTHER)
    @ApiOperation("登录接口")
    @PostMapping("/login")
    public Result login(@RequestBody LoginVo loginVo){
        //根据username查询数据
        SysUser sysUser = sysUserService.getByUsername(loginVo.getUsername());
        //user是否存在
        if(sysUser == null){
            throw new MyException(2001,"用户不存在！");
        }
        //密码是否一致
        String password = loginVo.getPassword();
        String md5Pwd = MD5.encrypt(password);
        if(!sysUser.getPassword().equals(md5Pwd)){
            throw new MyException(2001,"密码输入不正确！");
        }
        //判断用户是否可用
        if(sysUser.getStatus().intValue() == 0){
            throw new MyException(2001,"用户已经被禁用！");
        }
        //根据userid和username生成token字符串，通过map返回
        String token = JwtHelper.createToken(sysUser.getId(), sysUser.getUsername());

        Map<String,Object> map  = new HashMap<>();
        map.put("token",token);
        return Result.ok(map);
    }
    //info
//    @Log(title = "用户登录",businessType = BusinessType.SELECT)
    @ApiOperation("获取用户信息")
    @GetMapping("/info")
    public Result info(HttpServletRequest request){
        //获取请求头中的token字符串
        String token = request.getHeader("token");
        //从token字符串中获取用户名称
        String username = JwtHelper.getUsername(token);
        //根据用户名称获取用户信息（基本信息、菜单列表信息和按钮列表信息）
        Map<String,Object> userMap = sysUserService.getUserInfo(username);

//        Map<String,Object> map = new HashMap<>();
//        map.put("roles","[admin]");
//        map.put("introduction","I am a super administrator");
//        map.put("avatar","https://wpimg.wallstcn.com/f778738c-e4f8-4870-b634-56703b4acafe.gif");
//        map.put("name","Super Admin Jerry");
        return Result.ok(userMap);
    }
//    @Log(title = "用户登录",businessType = BusinessType.FORCE)
    @PostMapping("/logout")
    public Result logout(){
        return Result.ok();
    }
}
