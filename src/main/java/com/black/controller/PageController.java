package com.black.controller;

import com.black.pojo.Cat;
import com.black.pojo.Order;
import com.black.service.CatService;
import com.black.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * @author Dark
 * @date 2019/3/17 15:34
 */
@Controller
public class PageController {
    @Autowired
    CatService catService;

    @Autowired
    OrderService orderService;
    //跳转主页
    @RequestMapping("/")
    public String login(){
        return "login";
    }

    @RequestMapping("/index")
    public String index(HttpSession session) {
        if (session.getAttribute("result") != null){
            return "client/index";
        }else{
            return "redirect:/";
        }

    }

    @RequestMapping("/cat_list")
    public String cat_list(HttpServletRequest request) {
        List<Cat> cats = catService.catList();
        request.getSession().setAttribute("cats", cats);
        return "client/cat_list";

    }

    @RequestMapping("/order_list")
    public String order_list(HttpServletRequest request) {
        List<Order> orders = orderService.orderList();
        request.getSession().setAttribute("orders",orders);
        return "client/order_list";
    }

    @RequestMapping("/logout")
    public String logout(HttpSession session){
        //销毁session
        session.invalidate();
        //重定向到登陆页面
        return "redirect:/";
    }
}
