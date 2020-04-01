package com.mapper;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.Map;

public interface UserMapper {
    @Select("select * from user where no=#{no}")
    Map getUser(
            @Param("no")
            Integer no);

}
