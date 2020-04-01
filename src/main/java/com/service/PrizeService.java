package com.service;



import com.dao.PrizeDao;

import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class PrizeService {
    @Resource
    PrizeDao  prizeDao;
}
