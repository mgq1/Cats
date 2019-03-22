package com.black.controller;

import com.black.pojo.Cat;
import com.black.pojo.User;
import com.black.service.CatService;
import com.black.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

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
    public String login(User user, HttpServletRequest request) {
        System.out.println(user.getUsername() + " " + user.getPassword());
        user = userService.login(user);
        if (user != null) {
            //登陆成功
            request.getSession().setAttribute("user", user);
            return "redirect:/index";
        } else {
            request.getSession().setAttribute("errMsg", "登陆失败");
            return "redirect:/";
        }
    }


}
