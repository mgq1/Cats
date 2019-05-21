package com.black.pojo;

import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

/**
 * @author Dark
 * @date 2019/3/18 13:57
 */
public class Order {
    private Integer oid;
    private Integer catid;
    private String oname;
    private String ophone;
    private String oaddress;
    private int ostate;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date otime;

    private Cat cat;

    public Integer getOid() {
        return oid;
    }

    public void setOid(Integer oid) {
        this.oid = oid;
    }

    public Integer getCatid() {
        return catid;
    }

    public void setCatid(Integer catid) {
        this.catid = catid;
    }

    public String getOname() {
        return oname;
    }

    public void setOname(String oname) {
        this.oname = oname;
    }

    public String getOphone() {
        return ophone;
    }

    public void setOphone(String ophone) {
        this.ophone = ophone;
    }

    public String getOaddress() {
        return oaddress;
    }

    public void setOaddress(String oaddress) {
        this.oaddress = oaddress;
    }

    public int getOstate() {
        return ostate;
    }

    public void setOstate(int ostate) {
        this.ostate = ostate;
    }

    public Date getOtime() {
        return otime;
    }

    public void setOtime(Date otime) {
        this.otime = otime;
    }

    public Cat getCat() {
        return cat;
    }

    public void setCat(Cat cat) {
        this.cat = cat;
    }

    @Override
    public String toString() {
        return "Order{" +
                "oid=" + oid +
                ", catid=" + catid +
                ", oname='" + oname + '\'' +
                ", ophone='" + ophone + '\'' +
                ", oaddress='" + oaddress + '\'' +
                ", ostate=" + ostate +
                ", otime=" + otime +
                ", cat=" + cat.toString() +
                '}';
    }
}
