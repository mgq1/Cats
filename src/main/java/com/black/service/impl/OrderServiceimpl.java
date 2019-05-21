package com.black.service.impl;

import com.black.mapper.CatMapper;
import com.black.mapper.OrderMapper;
import com.black.pojo.Order;
import com.black.pojo.Result;
import com.black.service.OrderService;
import org.aspectj.weaver.ast.Or;
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

    @Autowired
    private CatMapper catMapper;
    //获取订单列表
    @Override
    public List<Order> orderList(){
        List<Order> orders = orderMapper.querryAll();
        return orders;
    }
    //更新订单
    @Override
    public Result updataorder(Order order) {
        if (order.getCatid() != 0){
            Order temp = orderMapper.querry(order);
            catMapper.freedcat(temp.getCatid());
            catMapper.lockingcat(order.getCatid());
        }
        int i = orderMapper.updataorder(order);
        Result result = new Result();
        if (i != 0){
            result.setState(200);
            result.setMessage("修改成功");
        }else {
            result.setState(200);
            result.setMessage("修改失败");
        }
        return result;
    }
    //删除订单
    @Override
    public Result deleteorder(Order order) {
        Order temp = orderMapper.querry(order);
        catMapper.freedcat(temp.getCatid());
        int i = orderMapper.deleteorder(order);
        Result result = new Result();
        if (i != 0){
            result.setState(200);
            result.setMessage("删除成功");
        }else{
            result.setState(200);
            result.setMessage("删除失败");
        }
        return result;
    }
    //添加订单
    @Override
    public Result addorder(Order order) {
        int i = orderMapper.addorder(order);
        catMapper.lockingcat(order.getCatid());
        Result result = new Result();
        if (i != 0){
            result.setState(200);
            result.setMessage("添加成功");
        }else {
            result.setState(200);
            result.setMessage("添加失败");
        }
        return result;
    }
}
