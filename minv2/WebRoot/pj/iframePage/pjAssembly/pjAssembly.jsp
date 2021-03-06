<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" 
	"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@include file="/common/common.jsp" %>
<html>
	<head>
		<title>点击选择按钮，弹出配件静态信息记录</title>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta http-equiv="pragma" content="no-cache" />
		<meta http-equiv="cache-control" content="no-cache" />
		<meta http-equiv="expires" content="0" />
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3" />
		<meta http-equiv="description" content="This is my page" />
		
		<!--引入弹出窗组件 不使用mainframe/js/attention/zDialg整合组件（图标不能显示），使用js/zDialog_split独立组件（uur独立组件）， start-->
		<script type="text/javascript" src="${urlctx }js/zDialog_split/zDrag.js"></script>
		<script type="text/javascript" src="${urlctx }js/zDialog_split/zDialog.js"></script>
		<!--引入弹出窗组件end-->

		<script>
			function btnClick()
			{
				top.Dialog.open({URL:"../pj/iframePage/pjAssembly/pjChooseJcAssemblyManageIframe.jsp",Title:"上车配件信息 ",Width:1048,Height:530});
				//window.location.href="../pjAssembly/pjOJcAssemblyManageIframe.html";
			}
		</script>
	</head>

	<body>
		<div class="box2" panelTitle="配件上车" roller="false">
			<table>
				<tr>
					<td>配件名称：</td>
					<td>
						<input type="text"  />
					</td>
					<td>配件编号：</td>
					<td>
						<input type="text" />
					</td>
					<td>专业：</td>
					<td>
						<input type="text" />
					</td>
					<td>状态：</td>
					<td>
						<select>
							<option>fsdfs</option>
						</select>
					</td>
					<td>
						<button><span class="icon_find">查询</span></button>
					</td>
				</tr>
				<tr>
					<td colspan="7">
						<button><span class="icon_add">上车</span></button>
					</td>
				</tr>
			</table>
		</div>
		<div id="scrollContent" class="border_gray">
			<table class="tableStyle" usecheckbox="false">
				<tr>
					<th width="5%">全选
						<input type="checkbox" name="" />
					</th>
					<th width="15%">配件名称</th>
					<th width="20%">配件编号</th>
					<th width="10%">专业</th>
					<th width="5%">班组</th>
					<th width="10%">存储位置</th>
					<th width="10%">状态</th>
					<th width="30%">操作</th>
				</tr>
				<tr>
					<td>
						<input type="checkbox" />
					</td>
					<td>单阀</td>
					<td>KA5488565</td>
					<td>制动</td>
					<td>制动</td>
					<td>制动</td>
					<td>合格</td>
					<td>
						<button  id="btn" onclick="btnClick();"><span class="icon_remove">上车</span></button>
						&nbsp;
						<button><span class="icon_edit">修改</span></button>
						&nbsp;
						<button><span class="icon_delete">报废</span></button>
					</td>
				</tr>
				<tr>
					<td>
						<input type="checkbox" />
					</td>
					<td>单阀</td>
					<td>KA5488565</td>
					<td>制动</td>
					<td>制动</td>
					<td>制动</td>
					<td>合格</td>
					<td>
						<button><span class="icon_remove">上车</span></button>
						&nbsp;
						<button><span class="icon_edit">修改</span></button>
						&nbsp;
						<button><span class="icon_delete">报废</span></button>
					</td>
				</tr>
				<tr>
					<td>
						<input type="checkbox" />
					</td>
					<td>单阀</td>
					<td>KA5488565</td>
					<td>制动</td>
					<td>制动</td>
					<td>制动</td>
					<td>合格</td>
					<td>
						<button><span class="icon_remove">上车</span></button>
						&nbsp;
						<button><span class="icon_edit">修改</span></button>
						&nbsp;
						<button><span class="icon_delete">报废</span></button>
					</td>
				</tr>
			</table>
		</div>

		<div style="height:35px;">
			<div class="float_right padding5 paging">
				<div class="float_left padding_top4">
					<span class="paging_disabled"><a href="javascript:;">上一页</a></span>
					<span class="paging_current"><a href="javascript:;">1</a></span>
					<span><a href="javascript:;">2</a></span>
					<span><a href="javascript:;">3</a></span>
					<span><a href="javascript:;">4</a></span>
					<span><a href="javascript:;">5</a></span>
					<span>...</span>
					<span><a href="javascript:;">20</a></span>
					<span><a href="javascript:;">下一页</a></span> 每页
				</div>
				<div class="float_left">
					<select autoWidth="true">
						<option>50</option>
						<option>100</option>
						<option>150</option>
					</select>
				</div>
				<div class="float_left padding_top4">条记录</div>
				<div class="clear"></div>
			</div>
			<div class="clear"></div>
		</div>
	</body>
</html>