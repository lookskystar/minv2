<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" 
	"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@include file="/common/common.jsp" %>
<html>

	<head>
		<title>（工人）检测项目签认</title>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta http-equiv="pragma" content="no-cache" />
		<meta http-equiv="cache-control" content="no-cache" />
		<meta http-equiv="expires" content="0" />
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3" />
		<meta http-equiv="description" content="This is my page" />

		<!-- 引用以封装的复选框js							开始 -->
		<script type="text/javascript" src="${urlctx}js/checkboxUtil/checkboxUtil.js"></script>
		<!-- 引用以封装的复选框js								结束 -->

		<!-- 引用工人table表格js											开始 -->
		<script type="text/javascript" src="${urlctx}mainframe/js/table/treeTable.js"></script>
		<!-- 引用工人table表格js												结束 -->
		<!--引入弹出窗组件 不使用mainframe/js/attention/zDialg整合组件（图标不能显示），使用js/zDialog_split独立组件（uur独立组件）， start-->
		<script type="text/javascript" src="${urlctx}js/zDialog_split/zDrag.js"></script>
		<script type="text/javascript" src="${urlctx}js/zDialog_split/zDialog.js"></script>
		<!--引入弹出窗组件end-->
		<script type="text/javascript" src="${urlctx}js/zx/itemSignPage/fixUsers/fixUsersDetectionItem_script.js"></script>
	</head>

	<body>
		<input type="hidden" value="${urlctx}" id="basePath" />
		<button id="sign" style="position: fixed; left:5px; top: 5px;"><span class="icon_ok">签认</span></button>
		<button id="print1" style="position: fixed; left:80px; top: 5px;" onclick="javascript:screenPrint();"><span class="icon_print">打印</span></button>
		<button id="newreport1" style="position: fixed; left:150px; top: 5px;"><span class="icon_print">报活</span></button>
		<button id="enableAll" style="position: fixed; left:220px; top: 5px;"><span class="icon_ok">一键启用</span></button>
		<button id="enable" style="position: fixed; left:320px; top: 5px;" onclick="enable2()"><span class="icon_ok">启用</span></button>
		<button id="disableAll" style="position: fixed; left:390px; top: 5px;"><span class="icon_delete">一键禁用</span></button>
		<button id="disable" style="position: fixed; left:490px; top: 5px;" onclick="disable2()"><span class="icon_delete">禁用</span></button>
		<input type="hidden" value="${param.planDateId}" id="planDateId" />
		<BR/>
		<span><font color="red" size="3">当前机车:${plandDate.jcTypeValue }-${plandDate.jcNumber }-${plandDate.dictJcFixMileage.fixMileageValue }</font></span>
		<input type="hidden" value="${detectionItem }" id="itemType"/>
		<table class="treeTable" style="margin-top: 3px;" id="table">
			<tr>
				<th width="5%">选择</th>
				<th class="ver01">部件/部位</th>
				<th class="ver01">检修项目</th>
				<th class="ver01">检修情况(检测值)</th>
				<th class="ver01">是否启用</th>
				<th class="ver01">检修人</th>
			</tr>
			<c:forEach var="map" items="${jcZxFixItemRecordMap }" varStatus="mStatus">
				<tr id="node-${mStatus.index }" class="parent collapsed">
					<td>
						<input type="checkbox" name="checkName" id="parent${mStatus.index}" />
					</td>
					<td colspan="12"><span class="folder">${map.key.preinstallTypeName }</span></td>
				</tr>
				<c:forEach var="jcZxFixItemRec" items="${map.value}" varStatus="nStatus">
					<tr id="node-${mStatus.index}-${nStatus.index}" class="child-of-node-${mStatus.index }">
						<td align="right">
						<c:if test="${jcZxFixItemRec.fixUsers == null}">
							<input type="checkbox" name="recId${mStatus.index}" value="${jcZxFixItemRec.id }" />
						</c:if>
						</td>
						<td>${jcZxFixItemRec.fixItem.itemUnit}/${jcZxFixItemRec.fixItem.itemPart}</td>
						<td>${jcZxFixItemRec.fixItem.itemName }</td>
						<td>
							<c:if test="${jcZxFixItemRec.fixUsers!=null}">
								${jcZxFixItemRec.fixCondition}&nbsp;${jcZxFixItemRec.unitMeasure}
							</c:if>
							<c:if test="${jcZxFixItemRec.fixUsers==null}">
								<input type="text" name="fixCondition" id="fixCondition"   onchange="return sign(${jcZxFixItemRec.id})"/>&nbsp;${jcZxFixItemRec.unitMeasure}
							</c:if>
						</td>
							
						<td>
							<c:if test="${jcZxFixItemRec.fixUsers!=null }">
								<input type="radio" name="recId${mStatus.index}" value="${jcZxFixItemRec.id }" checked="checked"/>禁用状态
							</c:if>
							<c:if test="${jcZxFixItemRec.fixUsers==null }">
								<input type="radio" name="recId${mStatus.index}" value="${jcZxFixItemRec.id }" checked="checked"/>启用状态
							</c:if>
						</td>
						<td>
						${jcZxFixItemRec.fixUsers}${fn:substring(jcZxFixItemRec.fixUsersCheckTime ,0,16) }
						 <a href="#${nStatus.index}"  onclick="cancelSign(${jcZxFixItemRec.id});">取消签认</a>
						</td>
					</tr>
				</c:forEach>
			</c:forEach>
		</table>

	</body>

</html>