package com.vr.web.dao;

import org.apache.ibatis.annotations.Param;

import com.vr.web.model.VrMode;

public interface VrModeMapper {

    int deleteByPrimaryKey(Long vrModeId);

    int insert(VrMode record);

    int insertSelective(VrMode record);

    VrMode selectByPrimaryKey(Long vrModeId);

    int updateByExampleSelective(@Param("record") VrMode record);

    int updateByExample(@Param("record") VrMode record);

    int updateByPrimaryKeySelective(VrMode record);

    int updateByPrimaryKey(VrMode record);
}