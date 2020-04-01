package com.controller;

import com.service.AwardService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class AwardController {
    @Autowired
    AwardService awardService;
}
