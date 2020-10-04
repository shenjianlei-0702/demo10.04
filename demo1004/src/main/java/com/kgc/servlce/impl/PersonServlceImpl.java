package com.kgc.servlce.impl;

import com.kgc.mapper.PersonMapper;
import com.kgc.pojo.Person;
import com.kgc.servlce.PersonServlce;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service

public class PersonServlceImpl implements PersonServlce {
    @Resource
    PersonMapper personMapper;
    @Override
    public List<Person> selectAll() {
        return personMapper.selectByExample(null);
    }

    @Override
    public int add(Person person) {
        return personMapper.insert(person);
    }

    @Override
    public int deteteDatalist(int id) {
      int i=personMapper.deleteByPrimaryKey(id);
        return i;
    }
}
