package com.controller;

import com.service.VotingService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class VotingController {
    @Autowired
    VotingService votingService;
}
