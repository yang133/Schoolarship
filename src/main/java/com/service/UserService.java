package com.service;

import com.dao.UserDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Map;

@Service
public class UserService {
    @Autowired
    UserDao userDao;


    public Map login(Integer no, String password) {
        Map map = userDao.getUser(no);
        if (map != null) {
            String pass = map.get("password").toString();
            if (pass.equals(password)) {
                return map;
            }
        }
        return null;
    }

    public void updatepwd(Integer no, Integer password) {
        userDao.updatepwd(no,password);
    }
}
