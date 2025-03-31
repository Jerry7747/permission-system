package org.cqie.controller;


import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.cqie.annotation.Log;
import org.cqie.common.result.Result;
import org.cqie.enums.BusinessType;
import org.cqie.model.system.SysPost;
import org.cqie.model.vo.SysPostQueryVo;
import org.cqie.service.SysPostService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

/**
 * <p>
 * 岗位信息表 前端控制器
 * </p>
 *
 * @author Jerry
 * @since 2025-03-09
 */
@Api(tags = "岗位管理")
@RestController
@RequestMapping("admin/system/sysPost")
@CrossOrigin
public class SysPostController {
    @Autowired SysPostService sysPostService;
    //分页查询岗位列表
    @Log(title = "岗位管理",businessType = BusinessType.SELECT)
    @ApiOperation("分页查询岗位列表")
    @GetMapping("{page}/{limit}")
    public Result selectAllPost(@PathVariable Long page,
                                @PathVariable Long limit,
                                SysPostQueryVo sysPostQueryVo){
        Page<SysPost> pageParam = new Page<>(page,limit);
        IPage<SysPost> pageModel = sysPostService.selectPage(pageParam,sysPostQueryVo);
        return Result.ok(pageModel);
    }
    //根据id查询岗位
    @Log(title = "岗位管理",businessType = BusinessType.SELECT)
    @ApiOperation("根据id查询岗位")
    @GetMapping("get/{id}")
    public Result selectPost(@PathVariable Long id){
        SysPost sysPost = sysPostService.getById(id);
        return Result.ok(sysPost);
    }
    //新增岗位
    @Log(title = "岗位管理",businessType = BusinessType.INSERT)
    @ApiOperation("新增岗位")
    @PostMapping("save")
    public Result save(@RequestBody SysPost sysPost){
        sysPostService.save(sysPost);
        return Result.ok();
    }
    //修改岗位
    @Log(title = "岗位管理",businessType = BusinessType.UPDATE)
    @ApiOperation("修改岗位")
    @PostMapping("update")
    public Result update(@RequestBody SysPost sysPost){
        sysPostService.updateById(sysPost);
        return Result.ok();
    }
    //删除岗位
    @Log(title = "岗位管理",businessType = BusinessType.DELETE)
    @ApiOperation("删除岗位")
    @DeleteMapping("remove/{id}")
    public Result remove(@PathVariable Long id){
        sysPostService.removeById(id);
        return Result.ok();
    }
    //修改岗位状态
    @Log(title = "岗位管理",businessType = BusinessType.STATUS)
    @ApiOperation("修改岗位状态")
    @GetMapping("updateStatus/{id}/{status}")
    public Result updateStatus(@PathVariable Long id,@PathVariable Integer status){
        sysPostService.updateStatus(id,status);
        return Result.ok();
    }

}

