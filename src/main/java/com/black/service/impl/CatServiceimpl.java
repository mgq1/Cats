package com.black.service.impl;

import com.black.mapper.CatMapper;
import com.black.pojo.Cat;
import com.black.pojo.Result;
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

    @Override
    public Result update(Cat cat) {
        int i = catMapper.update(cat);
        Result result = new Result();
        if (i != 0){
            result.setState(200);
            result.setMessage("修改成功");
        }else {
            result.setState(200);
            result.setMessage("修改失败");
        }
        return result;
    }

    @Override
    public Result delete(Cat cat){
        int i = catMapper.delete(cat);
        Result result = new Result();
        if (i != 0){
            result.setState(200);
            result.setMessage("删除成功");
        }else{
            result.setState(200);
            result.setMessage("删除失败");
        }
        return result;
    }
    //添加猫咪
    @Override
    public Result addcat(Cat cat){
        int i = catMapper.add(cat);
        Result result = new Result();
        if (i != 0){
            result.setState(200);
            result.setMessage("添加成功");
        }else {
            result.setState(200);
            result.setMessage("添加失败");
        }
        return result;
    }
}
