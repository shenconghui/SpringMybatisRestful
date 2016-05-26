package com.chinasoft.dao;

import com.chinasoft.annotation.MybatisRepository;
import com.chinasoft.entity.Hospital;

import java.util.List;

/**
 * Created by admin on 2016/5/25.
 * 医院信息dao组件
 */
@MybatisRepository
public interface HospitalDao {
    List<Hospital> findAll();
    Hospital findById(int id);
    Hospital findByName(String name);
    void save(Hospital hospital);
    void update(Hospital hospital);
    void delete(int id);
}
