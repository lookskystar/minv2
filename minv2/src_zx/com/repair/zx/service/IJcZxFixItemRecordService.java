package com.repair.zx.service;

import java.util.List;

import com.repair.entity.JcZxFixItemRecord;
import com.repair.util.serviceSupport.BaseService;
import com.repair.util.splitPage.SplitPageModel;
import com.repair.zx.dto.JcZxFixItemRecordDto;

/**
 * 
 * @see 中修检修项目记录service层
 * @author 周云韬
 * @date 2015-12-16
 * @version 1.0
 */
public interface IJcZxFixItemRecordService extends BaseService<JcZxFixItemRecord>{

	
	
	
	/**
	 * 通过日计划ID获得中修检修记录
	 * @param planDateId	机车检修日计划ID
	 * @return	中修检修记录对象集合
	 */
	public List<JcZxFixItemRecord> listByPlanDateId(Long planDateId);
	
	/**
	 * 通过日计划ID分页查询中修检修记录
	 * @param planDateId	机车检修日计划ID
	 * @param pageNo	页数
	 * @param pageSize	每页大小
	 * @return 分页模型对象
	 */
	public SplitPageModel<JcZxFixItemRecord> listPageByPlanDateId(Long planDateId,int pageNo,int pageSize);
	
	
	/**
	 * 通过dto进行分页查询操作
	 * @param dto
	 * @return
	 */
	public SplitPageModel<JcZxFixItemRecord> listPageByDto(JcZxFixItemRecordDto dto);
	
	/**
	 * 通过 指定的日计划ID、班组ID（可为null）进行查询，并按照对应的角色类型进行记录排序
	 * @param planDateId	日计划ID
	 * @param proteamId		班组ID，可为null
	 * @param itemType		项目类型（检查、检测项目），可为null
	 * @param roleType		角色类型
	 * @return
	 */
	public List<JcZxFixItemRecord> listByConditions(long planDateId,Long proteamId,Integer itemType,int roleType);
	
}
