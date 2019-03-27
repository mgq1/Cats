package com.black.mapper;

import com.black.pojo.Cat;

import java.util.List;

/**
 * @author Dark
 * @date 2019/3/17 15:31
 */
public interface CatMapper {
    List<Cat> querryAll();
    int update(Cat cat);
}
