package com.black.service.impl;

import com.black.mapper.OrderMapper;
import com.black.pojo.Order;
import com.black.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author Dark
 * @date 2019/3/18 14:01
 */
@Service
public class OrderServiceimpl implements OrderService {
    @Autowired
    private OrderMapper orderMapper;

    @Override
    public List<Order> orderList(){
        List<Order> orders = orderMapper.querryAll();
        return orders;
    }
}
