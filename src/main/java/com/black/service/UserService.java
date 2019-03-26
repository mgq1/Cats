package com.black.service;

import com.black.pojo.Result;
import com.black.pojo.User;

/**
 * @author Dark
 * @date 2019/3/17 15:32
 */
public interface UserService {
    Result login(User user);
}
