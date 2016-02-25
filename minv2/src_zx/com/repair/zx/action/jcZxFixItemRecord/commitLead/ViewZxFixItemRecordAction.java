package com.repair.zx.action.jcZxFixItemRecord.commitLead;

import java.util.List;
import com.opensymphony.xwork2.Action;
import com.repair.constant.Constants;
import com.repair.entity.JcPlanDate;
import com.repair.entity.JcZxFixItemRecord;
import com.repair.util.action.BaseAction;
import com.repair.zx.service.IJcPlanDateService;
import com.repair.zx.service.IJcZxFixItemRecordService;

/**
 * 
 * @see 交车工长查看检修项目
 * @author 周云韬
 * @date 2016-1-7
 * @version 1.0
 */
public class ViewZxFixItemRecordAction extends BaseAction{

	private IJcZxFixItemRecordService jcZxFixItemRecordService; 
	private IJcPlanDateService jcPlanDateService;
	private Long planDateId;
	
	@Override
	public String execute() throws Exception {
		List<JcZxFixItemRecord> zxFixItemRecList=jcZxFixItemRecordService.listByConditions(planDateId, null, null, Constants.ROLE_TYPE_COMMIT_LEAD);
		JcPlanDate plandDate=jcPlanDateService.findById(planDateId);
		request.setAttribute("planDate", plandDate);
		request.setAttribute("needCheck", Constants.CHECK_STATUS_NEED_CHECK);
		request.setAttribute("zxFixItemRecList", zxFixItemRecList);
		return Action.SUCCESS;
	}

	public void setJcZxFixItemRecordService(
			IJcZxFixItemRecordService jcZxFixItemRecordService) {
		this.jcZxFixItemRecordService = jcZxFixItemRecordService;
	}

	public void setPlanDateId(Long planDateId) {
		this.planDateId = planDateId;
	}

	public void setJcPlanDateService(IJcPlanDateService jcPlanDateService) {
		this.jcPlanDateService = jcPlanDateService;
	}
	
	
}
