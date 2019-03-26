package com.black.pojo;

/**
 * @author Dark
 * @date 2019/3/26 23:51
 */

/**
 *
 *接口返回的result类（普通json响应实体）<p>
 *一般作为响应主体（ @ResponseBody）返回给浏览器客户端进行处理，客户端使用Ajax进行处理<p>
 *<p>客户使用方法</p>
 *通过“对象名.属性名”来获得相应数据，根据数据进行处理
 *
 */
public class Result {
    //状态码
    private int state;
    //message为接口返回的个人编辑提示信息
    private String message;
    //具体数据
    private Object data;


    public int getState() {
        return state;
    }

    public void setState(int state) {
        this.state = state;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public Object getData() {
        return data;
    }

    public void setData(Object data) {
        this.data = data;
    }
}
