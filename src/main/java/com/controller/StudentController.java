package com.controller;

import com.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@Controller
public class StudentController {
    @Autowired
    StudentService studentService;

    @RequestMapping("/addinformation")
    public String addinformation()
    {
        return "student/addinformation";
    }
}
