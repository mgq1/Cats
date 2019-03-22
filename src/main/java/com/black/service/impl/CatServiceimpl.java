package com.black.service.impl;

import com.black.mapper.CatMapper;
import com.black.pojo.Cat;
import com.black.service.CatService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author Dark
 * @date 2019/3/17 15:33
 */
@Service
public class CatServiceimpl implements CatService {
    @Autowired
    private CatMapper catMapper;

    @Override
    public List<Cat> catList(){
        List<Cat> cats = catMapper.querryAll();
        return cats;
    }

}
