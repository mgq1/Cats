package com.black.utils;



import org.springframework.core.convert.converter.Converter;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * @author Dark
 * @date 2019/4/9 9:17
 */
class DateConverter implements Converter<String, Date> {

    @Override
    public Date convert(String source) {
        try {
            // 把字符串转换为日期类型（这里的yyy-MM-dd HH:mm:ss根据前端什么样式就改为什么样式）
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyy-MM-dd");
            Date date = simpleDateFormat.parse(source);

            return date;
        } catch (ParseException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        // 如果转换异常则返回空
        return null;
    }
}

