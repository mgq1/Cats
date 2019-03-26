package com.black.controller;

import com.black.pojo.Result;
import com.black.pojo.User;
import com.black.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;

/**
 * @author Dark
 * @date 2019/3/17 15:36
 */
@Controller
@RequestMapping("/user")
public class UserController {
    @Autowired
    private UserService userService;


    @RequestMapping("login")
    @ResponseBody
    public Result login(User user, HttpSession session) {
        System.out.println(user.getUsername() + " " + user.getPassword());
        Result result = userService.login(user);
        if (200 == result.getState()) {
            //登陆成功
            session.setAttribute("result",result);
        }
        return result;
    }


}
