package com.dao;

import com.mapper.UserMapper;
import org.springframework.stereotype.Repository;

import javax.annotation.Resource;
import java.util.Map;

@Repository
public class UserDao {
    @Resource
    UserMapper userMapper;

    public Map getUser(Integer no) {
        Map map=userMapper.getUser(no);
        return map;
    }
}
