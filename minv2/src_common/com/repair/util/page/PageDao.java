package com.repair.util.page;

import org.hibernate.Query;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import com.repair.util.page.PageModel;
import com.repair.util.page.SystemContext;

/**
 * @ClassName: PageDao
 * @Description: TODO(处理分页DAO)
 * @author tangqian
 * @version V1.0  
 * @date 2015-8-10 上午09:36:45
 */

public class PageDao extends HibernateDaoSupport {
	
	private HibernateTemplate hibernateTemplate;

	
	/**
	 * 查询语句不带参数
	 * @param hql 
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public PageModel findPageModel(String hql){
		return findPageModel(hql, null);
	}
	
	/**
	 * 查询语句带一个参数
	 * @param hql
	 * @param org
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public PageModel findPageModel(String hql,Object org){
		return findPageModel(hql, new Object[]{org});
	}
	/**
	 * 查询语句参数为object数组
	 * @param hql
	 * @param orgs
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public PageModel findPageModel(String hql,Object[] orgs){
		PageModel pm =new PageModel();
		Query countQuery =getSession().createQuery(getCountHql(hql));
		if(orgs!=null&&orgs.length>0){
			for (int i = 0; i < orgs.length; i++) {
				countQuery.setParameter(i, orgs[i]);
			}
		}
		pm.setCount(((Long)countQuery.uniqueResult()).intValue());
		
		Query datasQuery =getSession().createQuery(hql);
		if(orgs!=null&&orgs.length>0){
			for (int i = 0; i < orgs.length; i++) {
				datasQuery.setParameter(i, orgs[i]);
			}
		}
		int i = SystemContext.getOffset();
		int j = SystemContext.getPageSize();	
		pm.setDatas(datasQuery.setFirstResult(i).setMaxResults(j).list());
		return pm;
	}
	
	/**
	 * 根据查询语句得出所有的记录条数
	 * @param hql
	 * @return
	 */
	private String getCountHql(String hql){
		if(hql.contains("group by")){
			return "select count(*) "+hql.substring(hql.indexOf("from"),hql.indexOf("group by")-1);
		}
		return "select count(*) "+hql.substring(hql.indexOf("from"));
	}
	
	/**
	 * 过滤到重复的记录数
	 * @param str
	 * @param hql
	 * @param orgs
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public PageModel findPageModel(String str, String hql,Object[] orgs){
		PageModel pm =new PageModel();
		Query countQuery =getSession().createQuery(getCountHql(str, hql));
		if(orgs!=null&&orgs.length>0){
			for (int i = 0; i < orgs.length; i++) {
				countQuery.setParameter(i, orgs[i]);
			}
		}
		pm.setCount(((Long)countQuery.uniqueResult()).intValue());
		
		Query datasQuery =getSession().createQuery(getDistinctHql(str, hql));
		if(orgs!=null&&orgs.length>0){
			for (int i = 0; i < orgs.length; i++) {
				datasQuery.setParameter(i, orgs[i]);
			}
		}
		int i =SystemContext.getOffset();
		int j = SystemContext.getPageSize();		
		pm.setDatas(datasQuery.setFirstResult(i).setMaxResults(j).list());
		return pm;
	}
	
	/**
	 * 根据查询语句得出所有的记录条数
	 * @param str
	 * @param hql
	 * @return
	 */
	protected String getCountHql(String str, String hql) {
		return "select count(" + str + ")" + hql.substring(hql.indexOf("from"));
	}
	
	/**
	 * 根据查询语句得出所有的去重复的信息
	 * @param str
	 * @param hql
	 * @return
	 */
	protected String getDistinctHql(String str, String hql) {
		return "select " + str + " " + hql.substring(hql.indexOf("from"));
	}

	
}

