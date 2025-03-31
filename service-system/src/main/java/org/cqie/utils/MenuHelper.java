package org.cqie.utils;

import org.cqie.model.system.SysMenu;

import java.util.ArrayList;
import java.util.List;

public class MenuHelper {
    /**
     * 使用递归方法创建菜单
     * @param sysMenuList
     * @return
     */
    public static List<SysMenu> buildTree(List<SysMenu> sysMenuList){
        List<SysMenu> menuTrees = new ArrayList<>();
        for (SysMenu sysMenu : sysMenuList) {
            if(sysMenu.getParentId().longValue() == 0){
                menuTrees.add(findChildren(sysMenu,sysMenuList));
            }
        }
        return menuTrees;
    }

    /**
     * 递归查找子节点
     * @param sysMenu
     * @param treeNodes
     * @return
     */
    private static SysMenu findChildren(SysMenu sysMenu, List<SysMenu> treeNodes) {
        //初始化子节点
        sysMenu.setChildren(new ArrayList<SysMenu>());

        for (SysMenu node : treeNodes) {
            //查找子节点
            if(Long.parseLong(sysMenu.getId()) == node.getParentId().longValue()){
                //子节点是不是为空
                if(sysMenu.getChildren() == null){
                    sysMenu.setChildren(new ArrayList<SysMenu>());
                }
                //不为空就把找到的子节点添加到集合中
                sysMenu.getChildren().add(findChildren(node,treeNodes));
            }
        }
        return sysMenu;
    }
}
