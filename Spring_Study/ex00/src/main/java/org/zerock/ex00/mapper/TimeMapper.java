package org.zerock.ex00.mapper;


import org.apache.ibatis.annotations.Select;

public interface TimeMapper {

    @Select("SELECT NOW()")
    String getTime();
}
