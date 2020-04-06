package com.yss.system.dao;

import java.util.List;

import com.yss.common.config.MyMapper;
import com.yss.system.domain.User;
import com.yss.system.domain.UserWithRole;

public interface UserMapper extends MyMapper<User> {

	List<User> findUserWithDept(User user);
	
	List<UserWithRole> findUserWithRole(Long userId);
	
	User findUserProfile(User user);
}