package com.repair.plan.dao.impl;

import java.util.List;

import com.repair.entity.DictJcFixMileage;
import com.repair.plan.dao.IDictJcFixMileageDao;
import com.repair.util.daoSupport.DaoSupport;

/**
 * 
 * @see 修次修次dao层 
 * @author 周云韬
 * @date 2015-11-13
 * @version 1.0
 */
public class DictJcFixMileageDaoImpl extends DaoSupport implements IDictJcFixMileageDao{
	
	/**
	 * 通过修次值得到对象
	 * @param fixMileageValue	修次的值
	 * @return	修次对象
	 */
	public DictJcFixMileage findByFixMileageValue(String fixMileageValue){
		List<DictJcFixMileage> list=hibernateTemplate.find("from DictJcFixMileage where fixMileageValue=?",fixMileageValue);

		return list.size() == 0 ? null :list.get(0);
	}
	
}
