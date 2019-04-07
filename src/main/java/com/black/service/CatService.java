package com.black.service;

import com.black.pojo.Cat;
import com.black.pojo.Result;

import java.util.List;

/**
 * @author Dark
 * @date 2019/3/17 15:32
 */

public interface CatService {
    //猫列表
    List<Cat> catList();
    //更新猫
    Result update(Cat cat);
    //删除猫
    Result delete(Cat cat);

    Result addcat(Cat cat);
}
