<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" 
	"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@include file="/common/common.jsp" %>
<html>
	<head>
		<title>根据页面按钮-添加配件编号进行命名(后期需要更改)</title>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta http-equiv="pragma" content="no-cache" />
		<meta http-equiv="cache-control" content="no-cache" />
		<meta http-equiv="expires" content="0" />
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3" />
		<meta http-equiv="description" content="This is my page" />

		<!-- 引入滚动条js 								开始-->
		<script type="text/javascript" src="${urlctx }mainframe/js/scroll/jquery.mousewheel.js"></script>
		<script type="text/javascript" src="${urlctx }mainframe/js/scroll/jScrollPane.js"></script>
		<!-- 引入滚动条js 								结束-->
		
		<!--引入弹出窗组件 不使用mainframe/js/attention/zDialg整合组件（图标不能显示），使用js/zDialog_split独立组件（uur独立组件）， start-->
		<script type="text/javascript" src="${urlctx }js/zDialog_split/zDrag.js"></script>
		<script type="text/javascript" src="${urlctx }js/zDialog_split/zDialog.js"></script>
		<!--引入弹出窗组件end-->
		
		<script type="text/javascript">
			function btnClick()
			{
				top.Dialog.open({URL:"../pj/iframePage/pjAssembly/dynamicPj.jsp",Title:"配件静态信息 ",Width:600,Height:500});
			}
		</script>
	</head>

	<body>
		配件名称:单阀
		<div class="winXP" style="height:350px;width:430px;border:solid 1px #cccccc;">
		<div class="scroller" style="width:430px;" scrollerHeight="300">
		<div class="box1">
			<table class="treeTable">
				<tr>
					<td>配件编号：</td>
					<td>
						<button id="addPjNum">添加配件编号选择框</button>
					</td>
				</tr>
				<tr>
					<td>
						<input type="text" name="Name2" />
					</td>
					<td>
						<button id="addBtn" onclick="btnClick();">选择</button>&nbsp;&nbsp;
						<button>移除</button>
					</td>
				</tr>
				<tr>
					<td>
						<input type="text" name="Name3" />
					</td>
					<td>
						<button>选择</button>&nbsp;&nbsp;
						<button>移除</button>
					</td>
				</tr>
				<tr>
					<td>
						<input type="text" name="Name4" />
					</td>
					<td>
						<button>选择</button>&nbsp;&nbsp;
						<button>移除</button>
					</td>
				</tr>
				<tr>
					<td>
						<input type="text" name="Name4" />
					</td>
					<td>
						<button>选择</button>&nbsp;&nbsp;
						<button>移除</button>
					</td>
				</tr>
				<tr>
					<td>
						<input type="text" name="Name4" />
					</td>
					<td>
						<button>选择</button>&nbsp;&nbsp;
						<button>移除</button>
					</td>
				</tr>
				<tr>
					<td>
						<input type="text" name="Name4" />
					</td>
					<td>
						<button>选择</button>&nbsp;&nbsp;
						<button>移除</button>
					</td>
				</tr>
				<tr>
					<td>
						<input type="text" name="Name4" />
					</td>
					<td>
						<button>选择</button>&nbsp;&nbsp;
						<button>移除</button>
					</td>
				</tr>
				<tr align="center">
					<td colspan="2">
						<button>提交</button>&nbsp;
						<button>重置</button>
					</td>
				</tr>
			</table>
		</div>
		</div>
		</div>
	</body>

</html>