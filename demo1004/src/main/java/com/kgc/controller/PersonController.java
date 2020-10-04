package com.kgc.controller;

import com.kgc.pojo.Person;
import com.kgc.servlce.PersonServlce;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class PersonController {
    @Resource
    PersonServlce personServlce;
    @RequestMapping
    public String selectAll(Model model){
        List<Person> people=personServlce.selectAll();
        model.addAttribute("list",people);
        return "index";
    }
    @RequestMapping("add")
    public String add(){
        return "add";
    }
    @RequestMapping("/addAll")
    public String addAll(Integer id,String name,String sex,Integer age,int rank,String departement){
        Person p=new Person();
        p.setName(name);
        p.setSex(sex);
        p.setAge(age);
        p.setRank(rank);
        p.setDepartment(departement);
        int i=personServlce.add(p);
        return "redirect:index";
    }

    @RequestMapping("/deleteDetails/{id}")
    @ResponseBody
    public Map<String,Object> todelectCommentAndComment(@PathVariable("id") int id, Model model){
        Map<String,Object>map=new HashMap<>();
        int i =personServlce.deteteDatalist(id);
        if(i>0){
            int i1 =personServlce.deteteDatalist(id);
            map.put("result","success");

        }else{
            map.put("result","fail");
        }
        return map;
    }

}

