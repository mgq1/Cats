package com.black.pojo;

import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

/**
 * @author Dark
 * @date 2019/3/17 15:30
 */
public class Cat {
    private Integer cid;
    private String cname;
    private String cvariety;
    private String cgender;
    private String cage;
    private Integer cstate;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date cbirthday;


    public Integer getCid() {
        return cid;
    }

    public void setCid(Integer cid) {
        this.cid = cid;
    }

    public String getCname() {
        return cname;
    }

    public void setCname(String cname) {
        this.cname = cname;
    }

    public String getCvariety() {
        return cvariety;
    }

    public void setCvariety(String cvariety) {
        this.cvariety = cvariety;
    }

    public String getCgender() {
        return cgender;
    }

    public void setCgender(String cgender) {
        this.cgender = cgender;
    }

    public String getCage() {
        return cage;
    }

    public void setCage(String cage) {
        this.cage = cage;
    }

    public Integer getCstate() {
        return cstate;
    }

    public void setCstate(Integer cstate) {
        this.cstate = cstate;
    }

    public Date getCbirthday() {
        return cbirthday;
    }

    public void setCbirthday(Date cbirthday) {
        this.cbirthday = cbirthday;
    }

    @Override
    public String toString() {
        return "Cat{" +
                "cbirthday=" + cbirthday +
                '}';
    }
}
