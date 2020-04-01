package com.controller;

import com.service.ScoreService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class ScoreController {
    @Autowired
    ScoreService scoreService;
}
