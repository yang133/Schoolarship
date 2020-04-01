package com.controller;

import com.service.VoteitomService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class VoteitomController {
    @Autowired
    VoteitomService voteitomService;
}
