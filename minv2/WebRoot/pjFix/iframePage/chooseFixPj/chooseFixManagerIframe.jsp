<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" 
	"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page import="com.repair.constant.Constants"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/common/common.jsp" %>
<html>
	<head>
		<title>配件检修-选择配件</title>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta http-equiv="pragma" content="no-cache" />
		<meta http-equiv="cache-control" content="no-cache" />
		<meta http-equiv="expires" content="0" />
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3" />
		<meta http-equiv="description" content="This is my page" />
	</head>

	<body>
		<div class="box2" panelTitle="选择配件" roller="false">
			<!-- 条件查询显示区										开始 -->
			<table>
				<tr>
					<td colspan="3">
						<input type="checkbox" id="jctypeCkb" />
						<label for="jctypeCkb">车型</label>
						<input type="checkbox" id="firstUnitNameCkb" />
						<label for="firstUnitNameCkb">专业</label>
						<input type="checkbox" id="pjNameCkb" />
						<label for="pjNameCkb">配件名称</label>
						&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
						<button id="find">查询</button>
					</td>
				</tr>
				<tr>
					<td>
						<div id="jctypeDiv" style="display: none;">
							车型
							<select name="jcTypeId" id="jcTypeId">
								<option value="">请选择</option>
								<c:forEach var="jctype" items="${jcTypeList}">
									<option value="${jctype.id}" ${dto.jcTypeId == jctype.id ? 'selected' : ''}>${jctype.jcTypeValue}</option>
								</c:forEach>
							</select>
						</div>
					</td>
					<td>
						<div id="firstUnitNameDiv" style="display: none;">
							专业
							<select id="firstUnitName" name="firstUnitName" colNum="2">
								<option value="">请选择</option>
								<c:forEach var="firstUnit" items="${pjFirstUnitList}">
									<option value="${firstUnit.id}" ${dto.firstUnitId == firstUnit.id ? 'selected' : ''}>${firstUnit.firstUnitName}</option>
								</c:forEach>
							</select>
						</div>
					</td>
					<td>
						<div id="pjNameDiv" style="display: none;">
							配件名称
							<input type="text" name="pjName" id="pjName" value="${dto.pjName}" />
						</div>
					</td>
				</tr>
			</table>
			<!-- 条件查询显示区										结束 -->
		</div>

		<!--数据显示区																开始 -->
		<div id="scrollContent" class="border_gray">
			<table class="tableStyle">
				<tr>
					<th width="10%">序号</th>
					<th width="10%">配件名称</th>
					<th width="5%">机车类型</th>
					<th width="20%">待修数量</th>
					<th width="15%">检修中数量</th>
					<th width="20%">合格数量</th>
					<th width="10%">操作</th>
				</tr>
				<c:forEach var="ssInfo" items="${spm.data}" varStatus="ssInfoIndex">
					<tr>
						<td>${ssInfoIndex.index +1}</td>
						<td>${ssInfo.pjName }</td>
						<td>
							<c:forEach var="pjStaticJcTypePjFU" items="${ssInfo.pjStaticJcTypePjFUs}">
								${pjStaticJcTypePjFU.jcTypePjFirstUnit.dictJcType.jcTypeValue}
							</c:forEach>
						</td>
						<td>
							<a target="_blank" href="queryPjSDInfoByChooseFixPjForPjFix.action?pjSSInfoId=${ssInfo.id}&pjName=${ssInfo.pjName}&pjdStatus=<%=Constants.PJ_STORE_DYNAMIC_INFO_PJD_STATUS_TWO%>">-<font color="red">${stayRepairPjMap[ssInfo.id]}</font>-个待修配件</a>

						</td>
						<td><font color="orange">${fixingPjMap[ssInfo.id] }</font></td>
						<td><font color="green">${standardPjMap[ssInfo.id] }</font></td>
						<td><a style="color:blue" target="_blank" href="queryPjSDInfoByChooseFixPjForPjFix.action?pjSSInfoId=${ssInfo.id}&pjName=${ssInfo.pjName}">查看</a></td>
					</tr>
				</c:forEach>
			</table>
		</div>
		<!--数据显示区														结束 -->
		<!-- 分页数据显示区															开始 -->
		<div style="height:35px;">
			共&nbsp;&nbsp;<font color="red">${spm.totalCount}</font>&nbsp;&nbsp;条数据 ${spm.pageString}
		</div>
		<!-- 分页数据显示区															结束 -->
	</body>
	<!-- 自定义js -->
	<script type="text/javascript" src="${ctx}/js/pjFix/checkFixPj/chooseFixManagerIframe_script.js"></script>

</html>