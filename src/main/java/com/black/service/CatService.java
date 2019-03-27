package com.black.service;

import com.black.pojo.Cat;
import com.black.pojo.Result;

import java.util.List;

/**
 * @author Dark
 * @date 2019/3/17 15:32
 */

public interface CatService {
    List<Cat> catList();
    Result update(Cat cat);
}
