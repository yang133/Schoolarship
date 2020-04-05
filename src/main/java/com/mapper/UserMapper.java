package com.mapper;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import java.util.Map;

public interface UserMapper {
    @Select("select * from user where no=#{no}")
    Map getUser(
            @Param("no")
            Integer no);

    @Update("update user set password=#{password} where no=#{no}")
    void updatepwd(
            @Param("no")
            Integer no,
            @Param("password")
            Integer password);
}
