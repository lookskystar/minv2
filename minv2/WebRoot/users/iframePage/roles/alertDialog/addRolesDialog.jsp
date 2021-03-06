<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@include file="/common/taglibs.jsp" %>

  <head>
  	<title>${cache['SYS_TITLE'][0].value}-角色增加</title>
    
	<meta http-equiv="pragma" content="no-cache"/>
	<meta http-equiv="cache-control" content="no-cache"/>
	<meta http-equiv="expires" content="0"/>    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3"/>
	<meta http-equiv="description" content="This is my page"/>
	
     <!-- 引入 addRolePrivs_script.js      开始-->
     <script type="text/javascript" src="${ctx}/js/users/addRolePrivs_script.js"></script>
	 <!-- 引入 addRolePrivs_script.js       结束-->
	 
	 <!-- 表单验证                                                                               开始 -->
	 <script type="text/javascript" src="${ctx}/js/validationEngine/validationEngine-cn.js"></script>
	 <script type="text/javascript" src="${ctx}/js/validationEngine/validationEngine.js"></script>
	 <!-- 表单验证                                                                                           结束 -->
	 
 </head>
  
	<body>
		<div align="center">
			<form action="addRolePrivs.action" method="post" target="frmright" onsubmit="return formSubmit();">
			 <s:token></s:token>
				<table transMode="true">
					<tr>
						<td>角色名称:</td>
						<td>
							<input type="text" name="roleName" id="roleName" class="validate[required,length[2,10],ajaxUser[findRolePrivsByName.action]]"></input>
						</td>
						<td><span id="roleNameId"></span></td>
					</tr>
					<tr>
						<td>角色拼音:</td>
						<td>
							<input type="text" name="py" id="py" class="validate[required,custom[onlyLetter],length[1,10]]"></input>
						</td>
						<td><span id="pyId"></span></td>
					</tr>
					<tr>
						<td>角色说明:</td>
						<td>
							<textarea name="remark" id="remark"></textarea>
						</td>
						<td><span id="remarkId"></span></td>
					</tr>
					<tr>
						<td colspan="2">
							<input type="submit" value=" 提 交 "/>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<input type="reset" value=" 重 置 " />
						</td>
					</tr>
				</table>
			</form>
		</div>
	</body>
</html>