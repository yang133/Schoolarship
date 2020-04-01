package com.service;

import com.dao.VoteitomDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class VoteitomService {
    @Autowired
    VoteitomDao voteitomDao;
}
