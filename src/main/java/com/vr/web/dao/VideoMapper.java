package com.vr.web.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.vr.web.model.Video;

public interface VideoMapper {

    int deleteByPrimaryKey(Long id);

    int insert(Video record);

    int insertSelective(Video record);

    Video selectByPrimaryKey(Long id);

    int updateByExample(@Param("record") Video record);

    int updateByPrimaryKeySelective(Video record);

    int updateByPrimaryKey(Video record);

	/**
	 * 根据分类查询视频
	 * @param categorys
	 * @return
	 */
	List<Video> queryByCategorys(@Param("categorys")List<Integer> categorys,@Param("limitCount")int limitCount);

	/**
	 * 查看视频详情
	 * @param vid
	 * @return
	 */
	Video detail(Long vid);

	List<Video> search(@Param("keyword") String keyword);
    
}