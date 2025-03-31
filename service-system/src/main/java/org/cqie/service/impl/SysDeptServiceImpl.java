package org.cqie.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import org.cqie.handler.MyException;
import org.cqie.mapper.SysDeptMapper;
import org.cqie.model.system.SysDept;
import org.cqie.service.SysDeptService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.cqie.utils.DeptHelper;
import org.cqie.utils.MenuHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * <p>
 * 组织机构 服务实现类
 * </p>
 *
 * @author Jerry
 * @since 2025-03-09
 */
@Service
public class SysDeptServiceImpl extends ServiceImpl<SysDeptMapper, SysDept> implements SysDeptService {
    @Autowired
    private SysDeptMapper sysDeptMapper;
    //菜单树形数据
    @Override
    public List<SysDept> findNodes() {
        //全部部门列表
        List<SysDept> sysDeptList = sysDeptMapper.selectList(null);
        //构建树形数据
        List<SysDept> result = DeptHelper.buildTree(sysDeptList);
        return result;
    }
    //更新部门状态
    @Override
    public void updateStatus(Long id, Integer status) {
        //查找当前部门
        SysDept sysDept = sysDeptMapper.selectById(id);
        //更新状态
        sysDept.setStatus(status);
        sysDeptMapper.updateById(sysDept);
    }
    //删除部门
    @Override
    public void removeDeptById(Long id) {
        //查询当前部门下是否有子部门
        QueryWrapper<SysDept> wrapper = new QueryWrapper<>();
        wrapper.eq("parent_id",id);
        Integer count = sysDeptMapper.selectCount(wrapper);
        if(count>0){
            //有子部门抛出异常
            throw new MyException(201,"请先删除子部门！");
        }
        //删除部门
        sysDeptMapper.deleteById(id);
    }
}
