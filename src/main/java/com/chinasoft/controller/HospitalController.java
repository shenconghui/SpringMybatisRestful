package com.chinasoft.controller;

import com.chinasoft.dao.HospitalDao;
import com.chinasoft.entity.Hospital;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by admin on 2016/5/25.
 */
@Controller
@RequestMapping("/hospital")
public class HospitalController {
    @Resource
    private HospitalDao hospitalDao;

    @RequestMapping(value = "/find",method = RequestMethod.GET)
    public String find(Model model){
        List<Hospital> list = hospitalDao.findAll();
        model.addAttribute("hospitals",list);
        return "hospital/hospital_list";
    }

    @RequestMapping(value ="/toAdd",method = RequestMethod.GET)
    public String toAdd(){
        return "hospital/add_hospital";
    }

    @RequestMapping(value ="/add",method = RequestMethod.POST)
    public String add(Hospital hospital){
        hospitalDao.save(hospital);
        return "redirct:find";
    }

    @RequestMapping(value = "/toUpdate/{id}",method = RequestMethod.GET)
    public String toUpdate(
            @PathVariable("id") int id,
             Model model){
       Hospital hospital = hospitalDao.findById(id);
        model.addAttribute("hospital",hospital);
        return "hospital/update_hospital";
    }

    @RequestMapping(value = "/update",method = RequestMethod.PUT)
    @ResponseBody
    public boolean update(@RequestBody  Hospital hospital){
        hospitalDao.update(hospital);
        return true;
    }

    @RequestMapping(value = "/{id}",method =RequestMethod.DELETE )
    @ResponseBody
    public boolean delete( @PathVariable("id") int id){
        hospitalDao.delete(id);
        return true;
    }
}
