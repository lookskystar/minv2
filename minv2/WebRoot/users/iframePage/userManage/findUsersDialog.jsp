<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@include file="/common/taglibs.jsp"%>

<head>
<meta http-equiv="Content-Type" content="text/html;charset=utf-8">
	<title>${cache['SYS_TITLE'][0].value}-用户详情</title>
</head>

<body>
	<div panelTitle="" showStatus="false" roller="true">
		<table class="tableStyle" transMode="true" style="font-size: 12px;">
			<tr>
				<td width="10%">用户名：</td>
				<td width="40%">${usersPrivs.userName}</td>
				<td>姓名拼音：</td>
				<td>${usersPrivs.py}</td>
			</tr>
			<tr>
				<td width="10%">地区：</td>
				<td>${usersPrivs.dictArea.areaName}</td>
				<td>机务段：</td>
				<td>${usersPrivs.dictArea.areaName}机务段</td>
			</tr>
			<tr>
				<td>班组还是部门：</td>
				<td>${usersPrivs.departProteamStatus }</td>
				<td>是否启用：</td>
				<td>${usersPrivs.status}</td>
			</tr>
			<tr>
				<td>班组：</td>
				<td>${usersPrivs.dictProteam.proteamName}</td>
				<td>部门：</td>
				<td>${usersPrivs.dictDepart.departName}</td>
			</tr>
			<tr>
				<td>角色：</td>
				<td>${usersPrivs.rolePrivs.roleName }</td>
				<td>用户工号：</td>
				<td>${usersPrivs.jobNum}</td>
			</tr>
			<tr>
				<td>用户卡号：</td>
				<td>${usersPrivs.cardNum}</td>
				<td>登录密码：</td>
				<td>${usersPrivs.password}</td>
			</tr>
			<tr>
				<td>性别：</td>
				<td>${usersPrivs.gender}</td>
			</tr>
			<tr>
				<td>备注：</td>
				<td>${usersPrivs.remark}</td>
			</tr>
		</table>
	</div>
</body>
</html>
