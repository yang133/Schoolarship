package com.dao;

import com.mapper.VoteitomMapper;
import org.springframework.stereotype.Repository;

import javax.annotation.Resource;

@Repository
public class VoteitomDao {
    @Resource
    VoteitomMapper voteitomMapper;
}
