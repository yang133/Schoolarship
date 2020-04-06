package com.yss.system.service;

import java.util.List;

import com.yss.system.domain.UserOnline;

public interface SessionService {

	List<UserOnline> list();

	boolean forceLogout(String sessionId);
}
