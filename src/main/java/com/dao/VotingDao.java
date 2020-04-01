package com.dao;

import com.mapper.VotingMapper;
import org.springframework.stereotype.Repository;

import javax.annotation.Resource;

@Repository
public class VotingDao {
    @Resource
    VotingMapper votingMapper;
}
