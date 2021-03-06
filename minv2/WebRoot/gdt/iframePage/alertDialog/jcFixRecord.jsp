<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" 
	"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/common/taglibs.jsp" %>
<%@page import="java.text.SimpleDateFormat"%>
<head>
	<title>机车检修历史记录</title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta http-equiv="pragma" content="no-cache" />
		<meta http-equiv="cache-control" content="no-cache" />
		<meta http-equiv="expires" content="0" />
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3" />
		<meta http-equiv="description" content="This is my page" />
		<!-- 
		<link href="${ctx}/js/My97DatePicker/skin/WdatePicker.css" rel="stylesheet" type="text/css">
		<script type="text/javascript" src="${ctx}/js/My97DatePicker/WdatePicker.js"></script>
		 -->
</head>
<body style="padding-top:20px">

<table width="764" border="0" align="center" cellspacing="0" vspace="0">
<tr>
	<td align="center" colspan="10">
		<h2>机车检修历史记录</h2>
	</td>
</tr>
<tr>
	<td align="left" colspan="10">
		机车型号:DF5  机车编号:10000
	</td>
</tr>
 <tr>
<td align="center" colspan="3" class="tbCELL3">
<table width="1000px" border="0" align="center" cellspacing="0" vspace="0" id="datatabel">
	<tr style="background-color: #328aa4;font-weight: bolder;">
		<th class="tbCELL1" style="color:#ffffff;">修程修次</th>
		<th class="tbCELL1" style="color:#ffffff;">股道</th>
		<th class="tbCELL1" style="color:#ffffff;">台位</th>
		<th class="tbCELL1" style="color:#ffffff;">扣车时间</th>
		<th class="tbCELL1" style="color:#ffffff;">计划起机时间<br>实际起机时间</th>
		<th class="tbCELL1" style="color:#ffffff;">计划交车时间<br>实际交车时间</th>
		<th class="tbCELL1" style="color:#ffffff;">交车工长</th>
		<th class="tbCELL1" style="color:#ffffff;">检修节点</th>
		<th class="tbCELL1" style="color:#ffffff;">状态</th>
		<th class="tbCELL1" style="color:#ffffff;">查看</th>
	</tr>
	<tr>
		<td class="tbCELL1">X1</td>
		<td class="tbCELL1">13</td>
		<td class="tbCELL1">1</td>
		<td class="tbCELL1">2015-12-3</td>
		<td class="tbCELL1">2015-12-3<br>2015-12-3</td>
		<td class="tbCELL1">2015-12-3<br>2015-12-3</td>
		<td class="tbCELL1">交车工长</td>
		<td class="tbCELL1">小辅修</td>
		<td class="tbCELL1">在修</td>
		<th class="tbCELL1">
			<c:if test="${dp.projectType==0}">
				<a href="<%=basePath%>query!view.do?rjhmId=${dp.rjhmId}" target="_blank">检修记录</a>
			</c:if>
			<c:if test="${dp.projectType==1}">
				<a href="<%=basePath%>query!zxView.do?rjhmId${dp.rjhmId}" target="_blank">检修记录</a>
			</c:if>
			<a href="<%=basePath%>query!getAllInfoPre.do?rjhmId=${dp.rjhmId}" target="_blank">报活记录</a>
			<a href="<%=basePath%>query!searchJCjungong.do?rjhmId=${dp.rjhmId}" target="_blank">交车竣工单</a>
			<c:if test="${dp.projectType==0}">
				<a href="<%=basePath%>query!searchJcRec.do?rjhmId=${dp.rjhmId}&jcStype=${dp.jcType }" target="_blank">交车记录</a>
			</c:if>
			<c:if test="${dp.projectType==1}">
				<a href="<%=basePath %>query!viewExperiment.do?id=${dp.rjhmId}&jceiId=5" target="_blank">试验记录</a>
			</c:if>
			<a href="<%=basePath %>oilAssay!searchOilAssayRecorderDaily.do?rjhmId=${dp.rjhmId }" target="_blank">油水化验记录</a>
		</th>
	</tr>
	
</table>
</td>
</tr>
</table>
</body>
