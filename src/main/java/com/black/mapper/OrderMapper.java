package com.black.mapper;

import com.black.pojo.Order;

import java.util.List;

/**
 * @author Dark
 * @date 2019/3/18 14:03
 */
public interface OrderMapper {
    //获取所有订单列表
    List<Order> querryAll();

    //更新猫
    int updataorder(Order order);
    //删除猫
    int deleteorder(Order order);
    //添加猫
    int addorder(Order order);
}
