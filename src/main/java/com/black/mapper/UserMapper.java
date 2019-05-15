package com.black.mapper;

import com.black.pojo.User;

import java.util.List;

/**
 * @author Dark
 * @date 2019/3/17 15:30
 */

public interface UserMapper {
    List<User> ByNamePwd(User user);
}
