package com.black.service.impl;

import com.black.mapper.UserMapper;
import com.black.pojo.Result;
import com.black.pojo.User;
import com.black.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author Dark
 * @date 2019/3/17 15:33
 */
@Service
public class UserServiceimpl implements UserService {
    @Autowired
    private UserMapper userMapper;

    @Override
    public Result login(User user){
        Result result = new Result();
        List<User> users = userMapper.ByNamePwd(user);
        if (users != null && users.size() == 1){
            result.setState(200);
            result.setMessage("登陆成功");
            result.setData(users.get(0));
        }else{
            result.setMessage("登陆失败");
        }
        return result;
    }
}
