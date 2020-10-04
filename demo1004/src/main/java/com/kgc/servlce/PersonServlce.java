package com.kgc.servlce;

import com.kgc.pojo.Person;

import java.util.List;

public interface PersonServlce {
    List<Person> selectAll();
    int add(Person person);
    int deteteDatalist(int id);
}
