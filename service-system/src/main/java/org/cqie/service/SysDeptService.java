package org.cqie.service;

import com.baomidou.mybatisplus.extension.service.IService;
import org.cqie.model.system.SysDept;

import java.util.List;

/**
 * <p>
 * 组织机构 服务类
 * </p>
 *
 * @author Jerry
 * @since 2025-03-09
 */
public interface SysDeptService extends IService<SysDept> {
    //部门树形数据
    List<SysDept> findNodes();
    //更新部门状态
    void updateStatus(Long id, Integer status);
    //删除部门
    void removeDeptById(Long id);
}
