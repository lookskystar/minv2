package com.repair.pj.service;

import java.util.List;
import com.repair.entity.JcTypePjFirstUnit;
import com.repair.util.serviceSupport.BaseService;

/***
* @ClassName: JcTypePjFirstUnitDao
* @Description: TODO  机车型号-大部件（专业）中间表  service层接口
* @author 唐鹏
* @version V1.0  
* @date 2015-9-6 上午09:08:37
 */
public interface JcTypePjFirstUnitService extends BaseService<JcTypePjFirstUnit>{
	
	/**
	 * 通过机车型号大部件（专业）中间表实体查询数据
	 */
	public List<JcTypePjFirstUnit> findJcTypePjFirstUnitByPjFirstUnitId(long firstUnitId);
	
	
	
	
	
}
