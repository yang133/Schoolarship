package com.dao;

import com.mapper.PrizeMapper;
import org.springframework.stereotype.Repository;

import javax.annotation.Resource;

@Resource
@Repository
public class PrizeDao {
    @Resource
    PrizeMapper prizeMapper;
}
