package com.dao;

import com.mapper.NoticeMapper;
import org.springframework.stereotype.Repository;

import javax.annotation.Resource;

@Repository
public class NoticeDao {
    @Resource
    NoticeMapper noticeMapper;
}
