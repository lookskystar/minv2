<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" 
	"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@include file="/common/common.jsp" %>
<html>

	<head>
		<title>${cache['SYS_TITLE'][0].value}-竣工交车</title>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta http-equiv="pragma" content="no-cache" />
		<meta http-equiv="cache-control" content="no-cache" />
		<meta http-equiv="expires" content="0" />
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3" />
		<meta http-equiv="description" content="This is my page" />

		<link href="${ctx }/js/zx/css/signFinish.css" type="text/css" rel="stylesheet" />
		<script type="text/javascript" src="${ctx }/js/zx/js/signFinish_script.js"></script>
	</head>

	<body bgcolor="#f8f7f7">
		<div id="scoll_div_id" style="background:#328aa4;width:1000px;height:23px;margin-left:150px;">
			<ul id="nav">
				<li><a href="">◇整车记录 </a></li>

				<li><a href="javascript:void(0);">◇整车记录 </a>
					<ul>
						<li><a href="">整车检修记录</a></li>
						<li><a href="">检修配件记录</a></li>
					</ul>
				</li>
				<li><a href="javascript:void(0);">◇机车部件</a>
					<ul>
						<li>
							<a href=""></a>
						</li>
					</ul>
				</li>
				<li><a href="javascript:void(0);">◇机车部件</a>
					<ul>
						<li>
							<a href=""></a>
						</li>
					</ul>
				</li>
				<li><a href="javascript:void(0);">◇检修班组</a>
					<ul>
						<li>
							<a href=""></a>
						</li>
						<li>
							<a href=""></a>
						</li>
					</ul>
				</li>
				<li><a href="">◇交车试验</a></li>
				<li><a href="javascript:void(0);">◇试验记录</a>
					<ul>
						<li><a href="">水阻试验</a></li>
						<li><a href="">顶轮试验</a></li>
						<li><a href="">高低压试验</a></li>
						<li><a href="">试运行试验</a></li>
					</ul>
				</li>
				<li><a href="">◇配件记录</a></li>
				<li><a href="">◇配件记录</a></li>
				<li><a href="">◇探伤记录</a></li>
				<li><a href="">◇未完成记录 </a></li>
				<li><a href="">◇报活记录</a></li>
				<li><a href="" style="background-color:#fff;color:blue;">◇交车竣工 </a></li>
				<li><a href="javascript:void(0);" onclick="SaveAsFile();">◇记录导出 </a></li>
				<li><a href="javascript:void(0);">◇打印 </a>
					<ul>
						<li><a href="javascript:void(0);" onclick="setup();">打印设置</a></li>
						<li><a href="javascript:void(0);" onclick="preview();">打印预览</a></li>
						<li><a href="javascript:void(0);" onclick="print();">直接打印</a></li>
					</ul>
				</li>
			</ul>
		</div>
		<br>
		<!-- 浮动导航菜单end -->
		<div style="width:870px;margin-left:-435px;left:50%;position:absolute;" id="content2">
			<table width="864" border="0" align="center" cellspacing="0" vspace="0" style="padding-top:10px;">
				<tr>
					<td colspan="6" align="center" height="40">
						<h2 align="center"><font style="font-family:'隶书'">
<b>机车竣工验收记录</b></font></h2></td>
					<td align="right"></td>
				</tr>

				<tr>
					<td colspan="6">
						<table width="864" border="0" align="center" cellspacing="0" vspace="0" id="content">
							<tr>
								<td align="center" colspan="3" class="tbCELL3">
									<table width="864px" height="500" border="0" align="center" cellspacing="0" vspace="0" id="datatabel">
										<tr>
											<td colspan="4" align="right"><font size=2>第 &nbsp;xx &nbsp;号</font></td>
										</tr>
										<tr style="line-height:40px;height: 40px;">
											<td colspan="4" align="center" style="white-space:nowrap;"><font size=4>
             	 配属广州局xxxx</>段型号xxxx机车，已于xxxx年xx月xx日xxxxx
             	 由 xxxx机务段，<br/>按照有关技术规定经xxx修次竣工，经局驻段验收员检查验收，确认技术状态合格，准予交付运用。
           </font></td>
										</tr>
										<tr>
											<td align="right"><font size=4>段长：xxxx</font></td>
											<td align="center"><font size=4></font></td>

											<td align="right"><font size=4>验收员：xxxx</font></td>
											<td align="center"><font size=4></font></td>
										</tr>
										<tr>
											<td align="right"><font size=4>机务段：xxxx</font></td>
											<td align="center"><font size=4></font></td>
											<td align="right"><font size=4>局驻段机车验收室：xxxx</font></td>
											<td align="center"><font size=4></font></td>
										</tr>
										<tr>
											<td colspan="4" align="right"><font size=4></font></td>
										</tr>
										<tr>
											<td align="right"><font size=4>机车入库时间：xxxx</font></td>
											<td align="center" colspan="3"><font size=4></font></td>
										</tr>
										<tr>
											<td align="right"><font size=4>交车工长：xxxx</font></td>
											<td align="center" colspan="3"><font size=4></font></td>
										</tr>
										<tr>
											<td align="right"><font size=4>司机：xxxx</font></td>
											<td align="center" colspan="3"><font size=4></font></td>
										</tr>
										<tr>
										</tr>
									</table>
								</td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
		</div>
	</body>

</html>