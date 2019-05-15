package com.black.mapper;

import com.black.pojo.Cat;

import java.util.List;

/**
 * @author Dark
 * @date 2019/3/17 15:31
 */
public interface CatMapper {
    //猫列表
    List<Cat> querryAll();
    //更新猫
    int update(Cat cat);
    //删除猫
    int delete(Cat cat);
    //添加猫
    int add(Cat cat);

    int querryByCname(String cname);
}
