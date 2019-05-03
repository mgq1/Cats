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
 * @date 2019/3/17 15:34
 */
@Controller
public class PageController {
    @Autowired
    private UserService userService;
    //跳转主页
    @RequestMapping("/")
    public String login(){
        return "login";
    }

    //登陆
    @RequestMapping("login")
    @ResponseBody
    public Result login(User user, HttpSession session) {
        Result result = userService.login(user);
        if (200 == result.getState()) {
            //登陆成功
            session.setAttribute("result",result);
        }
        return result;
    }
}
