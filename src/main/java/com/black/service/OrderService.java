package com.black.service;

import com.black.pojo.Order;
import com.black.pojo.Result;

import java.util.List;

/**
 * @author Dark
 * @date 2019/3/18 14:00
 */
public interface OrderService {
    List<Order> orderList();

    //更新猫
    Result updataorder(Order order);
    //删除猫
    Result deleteorder(Order order);
    //添加猫
    Result addorder(Order order);
}
