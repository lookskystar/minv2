<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" 
	"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@include file="/common/common.jsp" %>
<html>
	<head>
		<title>点击上车按钮，弹出页面</title>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta http-equiv="pragma" content="no-cache" />
		<meta http-equiv="cache-control" content="no-cache" />
		<meta http-equiv="expires" content="0" />
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3" />
		<meta http-equiv="description" content="This is my page" />

	</head>

	<body>
		<div class="box1" panelHeight="516"  panelWidth="720">
			<table class="tableStyle">
				<tr align="center">
					<th>配件名称</th>
					<th>配件编号</th>
					<th>操作</th>
				</tr>
				<tr align="center">
					<td>单阀</td>
					<td>KJL4875486</td>
					<td>
						<button><span class="icon_delete">删除</span></button>
					</td>
				</tr>
				<tr align="center">
					<td>单阀</td>
					<td>KJL4875486</td>
					<td>
						<button><span class="icon_delete">删除</span></button>
					</td>
				</tr>
				<tr>
					<td colspan="3" align="center">
						<table border="0" style="height:200px ">
							<tr>
								<td>上车号(机车号):
									<input type="text" name="" value="11111" />
								</td>
							</tr>
							<tr>
								<td align="center">
									<button><span class="icon_remove">上车</span></button>
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									<button><span class="icon_reply">取消</span></button>
								</td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
			
		</div>
		<div style="position:relative;top:30px;padding-left:150px;">
			
		</div>
	</body>
</html>