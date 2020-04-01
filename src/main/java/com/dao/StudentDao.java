package com.dao;

import com.mapper.StudentMapper;
import org.springframework.stereotype.Repository;

import javax.annotation.Resource;

@Repository
public class StudentDao {
    @Resource
    StudentMapper studentMapper;
}
