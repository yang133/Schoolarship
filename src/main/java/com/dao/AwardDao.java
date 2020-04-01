package com.dao;

import com.mapper.AwardMapper;
import org.springframework.stereotype.Repository;

import javax.annotation.Resource;

@Repository
public class AwardDao {
    @Resource
    AwardMapper awardMapper;
}
