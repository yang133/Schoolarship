package com.yss.system.dao;

import java.util.List;

import com.yss.common.config.MyMapper;
import com.yss.system.domain.Role;
import com.yss.system.domain.RoleWithMenu;

public interface RoleMapper extends MyMapper<Role> {
	
	List<Role> findUserRole(String userName);
	
	List<RoleWithMenu> findById(Long roleId);
}