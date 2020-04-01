package com.sql;

import java.util.Map;

public class CategorySql {

    public String getSql(Map  map){
        String sql="";

        if(map.get("parentId")==null){
            sql="select id,categoryName from category where parentId is null";
        }else{
            sql="select id,categoryName from category where parentId=#{parentId}";
        }
        return sql;
    }
}
