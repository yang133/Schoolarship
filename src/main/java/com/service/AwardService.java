package com.service;

import com.dao.AwardDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AwardService {
    @Autowired
    AwardDao awardDao;
}
