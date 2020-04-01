package com.service;

import com.dao.VotingDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class VotingService {
    @Autowired
    VotingDao votingDao;
}
