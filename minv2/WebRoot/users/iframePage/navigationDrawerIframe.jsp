<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@include file="/common/common.jsp" %>
<html>
	<head>
	<!--左侧  导航栏     			开始-->
		<script type="text/javascript" src="${urlctx}mainframe/js/bsFormat.js"></script>
		<link rel="stylesheet" type="text/css" href="${urlctx}js/style.css" />
		<script type="text/javascript" src="${urlctx}mainframe/js/nav/ddaccordion.js"></script>
		<style>
			a {
				behavior:url(../js/method/focus.htc)
			}
		</style>
	</head>
	

	<body>
		<!-- 设置宽度DIV                                                开始 -->
		<div class="minv2_navigationDrawer_mainDiv_class">
			<!-- arrowlistmenu 抽屉导航DIV                                  开始 -->
			<div class="arrowlistmenu">
				<!-- 抽屉导航菜单标题 -->
				<div class="minv2_navigationDrawer_titleDiv_class" align="center">管&nbsp;&nbsp;理&nbsp;&nbsp;菜&nbsp;&nbsp;单</div>
				<!-- 菜单一                                                                  开始 -->
				<div class="menuheader expandable">用户角色</div>
				<ul class="categoryitems">
					<li><a href="${urlctx }findAllDictDepart.action" target="frmright"><span>部门管理</span></a></li>
					<li><a href="${urlctx }findAllDictProteam.action" target="frmright"><span>班组管理</span></a></li>
					<li><a href="${urlctx }findRolePrivsAll.action" target="frmright"><span>角色管理</span></a></li>
				</ul>
				<!-- 菜单一                                                                  结束 -->
				<%--
				<!-- 菜单二                                                                  开始 -->
				<div class="menuheader expandable">机车检修项目</div>
				<ul class="categoryitems">
					<li><a href="javascript:;" target="frmright"><span>小辅修项目</span></a></li>
					<li><a href="javascript:;" target="frmright"><span>中修项目</span></a></li>
					<li><a href="javascript:;" target="frmright"><span>秋整春鉴项目</span></a></li>
				</ul>
				<!-- 菜单二                                                                  结束 -->
				<!-- 菜单三                                                                  开始 -->
				<div class="menuheader expandable">车间作业</div>
				<ul class="categoryitems">
					<li><a href="javascript:;" target="frmright"><span>小辅修预设分类管理</span></a></li>
					<li><a href="javascript:;" target="frmright"><span>中修预设分类管理</span></a></li>
					<li><a href="javascript:;" target="frmright"><span>配件预设分类管理</span></a></li>
					<li><a href="javascript:;" target="frmright"><span>质检技术人员预分工</span></a></li>
					<li><a href="javascript:;" target="frmright"><span>故障管理</span></a></li>
				</ul>
				<!-- 菜单三                                                                  结束 -->
				<!-- 菜单四                                                                  开始 -->
				<div class="menuheader expandable">车间管理</div>
				<ul class="categoryitems">
					<li><a href="javascript:;" target="frmright"><span>机车管理</span></a></li>
					<li><a href="javascript:;" target="frmright"><span>在修机车管理</span></a></li>
				</ul>
				<!-- 菜单四                                                                  结束 -->
				<!-- 菜单五                                                                  开始 -->
				<div class="menuheader expandable">报表与系统</div>
				<ul class="categoryitems">
					<li><a href="javascript:;" target="frmright"><span>小辅修报表设置</span></a></li>
					<li><a href="javascript:;" target="frmright"><span>系统设置</span></a></li>
				</ul>
				<!-- 菜单五                                                                  结束 -->
				<!-- 菜单六                                                                  开始 -->
				<div class="menuheader expandable">下载与帮助</div>
				<ul class="categoryitems">
					<li><a href="javascript:;" target="frmright"><span>文档下载</span></a></li>
				</ul>
				<!-- 菜单六                                                                  结束 -->
				 --%>
			</div>
			<!-- arrowlistmenu 抽屉导航DIV                                  结束 -->
		</div>
		<!-- 设置宽度DIV                                                结束 -->

	</body>

</html>