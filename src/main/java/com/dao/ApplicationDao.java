package com.dao;

import com.mapper.ApplicationMapper;
import org.springframework.stereotype.Repository;

import javax.annotation.Resource;

@Repository
public class ApplicationDao {
    @Resource
    ApplicationMapper applicationMapper;
}
