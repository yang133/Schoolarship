package com.yss.job.dao;

import java.util.List;

import com.yss.common.config.MyMapper;
import com.yss.job.domain.Job;

public interface JobMapper extends MyMapper<Job> {
	
	List<Job> queryList();
}