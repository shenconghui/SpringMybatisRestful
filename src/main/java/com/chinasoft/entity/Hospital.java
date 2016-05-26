package com.chinasoft.entity;

/**
 * Created by admin on 2016/5/25.
 * 医院实体类
 */
public class Hospital {
    private long id;//编码
    private String name;//医院名称
    private String address;//医院地址
    private String phone;//医院电话
    private String level;//医院等级
    private String website;//医院网址


    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getLevel() {
        return level;
    }

    public void setLevel(String level) {
        this.level = level;
    }

    public String getWebsite() {
        return website;
    }

    public void setWebsite(String website) {
        this.website = website;
    }

    @Override
    public String toString() {
        return
                "id=" + id +
                ", name='" + name +
                ", address='" + address +
                ", phone='" + phone +
                ", level='" + level +
                ", website='" + website;
    }
}
