package org.cqie.utils;

import org.cqie.model.system.SysDept;
import org.cqie.model.system.SysMenu;

import java.util.ArrayList;
import java.util.List;

public class DeptHelper {
    /**
     * 使用递归方法创建菜单
     * @param sysDeptList
     * @return
     */
    public static List<SysDept> buildTree(List<SysDept> sysDeptList){
        List<SysDept> deptTrees = new ArrayList<>();
        for (SysDept sysDept : sysDeptList) {
            if(sysDept.getParentId().longValue() == 0){
                deptTrees.add(findChildren(sysDept,sysDeptList));
            }
        }
        return deptTrees;
    }

    /**
     * 递归查找子节点
     * @param sysMenu
     * @param treeNodes
     * @return
     */
    private static SysDept findChildren(SysDept sysDept, List<SysDept> treeNodes) {
        //初始化子节点
        sysDept.setChildren(new ArrayList<SysDept>());

        for (SysDept node : treeNodes) {
            //查找子节点
            if(Long.parseLong(sysDept.getId()) == node.getParentId().longValue()){
                //子节点是不是为空
                if(sysDept.getChildren() == null){
                    sysDept.setChildren(new ArrayList<SysDept>());
                }
                //不为空就把找到的子节点添加到集合中
                sysDept.getChildren().add(findChildren(node,treeNodes));
            }
        }
        return sysDept;
    }
}
