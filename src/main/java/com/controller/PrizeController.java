package com.controller;

import com.service.PrizeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class PrizeController {
    @Autowired
    PrizeService prizeService;
}
