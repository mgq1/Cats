package com.black.controller;

import com.black.pojo.Cat;
import com.black.pojo.Order;
import com.black.pojo.Result;
import com.black.pojo.User;
import com.black.service.CatService;
import com.black.service.OrderService;
import com.black.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * @author Dark
 * @date 2019/3/17 15:36
 */
@Controller
@RequestMapping("/admin")
public class UserController {
    @Autowired
    private UserService userService;

    @Autowired
    private CatService catService;

    @Autowired
    private OrderService orderService;

    //跳转主页
    @RequestMapping("/index")
    public String index(HttpSession session) {
        if (session.getAttribute("result") != null) {
            return "client/index";
        } else {
            return "redirect:/";
        }

    }

    //猫咪列表
    @RequestMapping("/cat_list")
    public String cat_list(HttpServletRequest request) {
        List<Cat> cats = catService.catList();
        request.getSession().setAttribute("cats", cats);
        return "client/cat_list";

    }

    //订单列表
    @RequestMapping("/order_list")
    public String order_list(HttpServletRequest request) {
        List<Order> orders = orderService.orderList();
        request.getSession().setAttribute("orders", orders);
        return "client/order_list";
    }

    @RequestMapping("/logout")
    public String logout(HttpSession session) {
        //销毁session
        session.invalidate();
        //重定向到登陆页面
        return "redirect:/";
    }

    //管理员更新猫咪
    @RequestMapping("update")
    @ResponseBody
    public Result update(Cat cat) {
        Result result = catService.update(cat);
        return result;
    }

    //管理员删除猫咪
    @RequestMapping("delete")
    @ResponseBody
    public Result delete(Cat cat) {
        Result result = catService.delete(cat);
        return result;
    }
    //添加猫咪
    @RequestMapping("addcat")
    @ResponseBody
    public Result addcat(Cat cat) {
        Result result = catService.addcat(cat);
        return result;
    }
    //更新订单
    @RequestMapping("updataorder")
    @ResponseBody
    public Result updataorder(Order order){
        Result result = orderService.updataorder(order);
        return result;
    }
    //删除订单
    @RequestMapping("deleteorder")
    @ResponseBody
    public Result deleteorder(Order order){
        Result result = orderService.deleteorder(order);
        return result;
    }

    //添加订单
    @RequestMapping("addorder")
    @ResponseBody
    public Result addorder(Order order){
        Result result = orderService.addorder(order);
        return result;
    }
}
