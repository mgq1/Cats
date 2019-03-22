package com.black.service.impl;

import com.black.mapper.UserMapper;
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
    public User login(User user){
        List<User> users = userMapper.ByNamePwd(user);
        if (users != null && users.size() == 1){
            return users.get(0);
        }
        return null;
    }
}
