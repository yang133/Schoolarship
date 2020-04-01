package com.service;

import com.dao.ApplicationDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ApplicationService {
@Autowired
    ApplicationDao applicationDao;
}
