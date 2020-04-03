package com.controller;

import com.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.Map;

@Controller
public class UserController {
    @Autowired
    UserService userService;

    //页面类
    @RequestMapping("/tologin")
    public String tologin() {
        return "/tologin";
    }

    @RequestMapping("/stumain")
    public String main() {
        return "stumain";
    }
    @RequestMapping("/teachermain")
    public String teachermain() {
        return "teachermain";
    }

    @RequestMapping("/a")
    public String a() {
        return "a";
    }
    @RequestMapping("/test")
    public String test() {
        return "teacher/test";
    }
    @RequestMapping("/notice")
    public String notice() {
        return "notice";
    }
    @RequestMapping("/ss")
    public String ss() {
        return "ss";
    }
    @RequestMapping("/kuangjia")
    public String kuangjia() {
        return "kuangjia";
    }

    //方法类
    @RequestMapping("/login")
    public String login(Integer no, String password, HttpSession session) {

        Map map = userService.login(no, password);

        if (map != null) {
            session.setAttribute("user", map);
            String role = map.get("rolename").toString();
            System.out.println(role);
            if (role.equals("学生")) {
                return "redirect:/stumain";
            }
            else if (role.equals("教师")) {
                return "redirect:/teachermain";
            }
            else if (role.equals("教务处")) {
                return "redirect:/jiaomain";
            }

        }

        return  "tologin";
    }



}



