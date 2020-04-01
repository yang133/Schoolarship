package com.dao;

import com.mapper.ScoreMapper;
import org.springframework.stereotype.Repository;

import javax.annotation.Resource;

@Repository
public class ScoreDao {
    @Resource
    ScoreMapper scoreMapper;
}
