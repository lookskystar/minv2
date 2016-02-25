<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" 
	"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@include file="/common/common.jsp" %>
<html>

	<head>
		<title>${cache['SYS_TITLE'][0].value}-顶试验检修记录</title>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta http-equiv="pragma" content="no-cache" />
		<meta http-equiv="cache-control" content="no-cache" />
		<meta http-equiv="expires" content="0" />
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3" />
		<meta http-equiv="description" content="This is my page" />

		<link href="${ctx}/js/zx/css/dingLun.css" type="text/css" rel="stylesheet" />
		<script type="text/javascript" src="${ctx}/js/zx/js/dingLun_script.js"></script>

	</head>

	<body bgcolor="#f8f7f7">
		<form id="form1" name="form1" method="post" action="">
			<!-- 浮动导航菜单start -->
			<div id="scoll_div_id" style="background:#328aa4;width:864px;height:23px;">
				<ul id="nav">
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
					<li><a href="javascript:void(0);">◇检修班组</a>
						<ul>
							<li>
								<a href=""></a>
							</li>
						</ul>
					</li>
					<li><a href="javascript:void(0);" style="background-color:#fff;color:blue;">◇试验记录</a>
						<ul>
							<li><a href="">水阻试验</a></li>
							<li><a href="" style="background-color:#fff;color:blue;">顶轮试验</a></li>
							<li><a href="">高低压试验</a></li>
							<li><a href="">试运行试验</a></li>
						</ul>
					</li>
					<li><a href="">◇配件记录</a></li>
					<li><a href="">◇探伤记录</a></li>
					<li><a href="">◇未完成记录 </a></li>
					<li><a href="">◇报活记录</a></li>
					<li><a href="">◇交车竣工 </a></li>
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
			<br />
			<!-- 浮动导航菜单end -->

			<div style="margin-left:70px;" id="content">
				<br/>
				<table border="1" cellspacing="0" cellpadding="0" width="621" class="bluetable">
					<tr>
						<th class="style10" style="text-align: center; font-family: 宋体, Arial, Helvetica, sans-serif; font-size: 24px;font-weight: bolder;" colspan="8">
							xxxx型机车中修轴检记名检修记录
						</th>
					</tr>
					<tr>
						<td colspan="2" style="text-align: center;">
							机车号
						</td>
						<td colspan="2">xxx</td>
						<td width="35">修程</td>
						<td width="66">xxx</td>
						<td width="77">试验时间</td>
						<td width="186">
							xxxxx
						</td>
					</tr>
					<tr height="40">
						<td colspan="4">工作内容 </td>
						<td colspan="2">
							<p align="center">检  次 </p>
						</td>
						<td colspan="2">
							<p align="center">工作者 </p>
						</td>
					</tr>
					<tr>
						<td colspan="4" rowspan="2">
							<p align="center">用JL—601A或JL-201型机车轴承检测仪对轴箱轴承和抱轴承进行振动检测</p>
						</td>
						<td colspan="2" rowspan="2">
							<p align="center">中修试运前</p>
						</td>
						<td width="77">
							<p align="center">轴箱轴承</p>
						</td>
						<td width="186">
							<p align="center">xxx</p>
						</td>
					</tr>
					<tr>
						<td width="77">
							<p align="center">抱轴承</p>
						</td>
						<td width="186">
							<p align="center">xxx</p>
						</td>
					</tr>
					<tr height="80">
						<td colspan="2">
							<p align="center">轮  位 </p>
						</td>
						<td width="78">
							<p align="center">轴 箱
								<br /> 轴 承 </p>
						</td>
						<td width="65">
							<p align="center">抱轴承 </p>
						</td>
						<td colspan="4">
							<p align="center">主 要 技 术 要 求 </p>
						</td>
					</tr>
					<tr>
						<td width="45" rowspan="2">
							<p align="center">1</p>
						</td>
						<td width="51">
							<p align="center">L</p>
						</td>
						<td width="78">
							<p align="center">xxx</p>
						</td>
						<td width="65">
							<p align="center">xxx</p>
						</td>
						<td colspan="4" rowspan="12">
							<ol>
								<li>轮对转速500r/min(110Km/h)</li>
								<li>故障判断标准</li>
							</ol>
							<table border="1" cellspacing="0" cellpadding="0">
								<tr>
									<td width="41" valign="top">
										<p align="center">名称</p>
									</td>
									<td width="144" valign="top">
										<p>注意域
											<br /> （任一种情况）
										</p>
									</td>
									<td width="158" valign="top">
										<p>故障域
											<br /> （任一种情况）
										</p>
									</td>
								</tr>
								<tr>
									<td width="41">
										<p align="center">轴箱轴承</p>
									</td>
									<td width="144" valign="top">
										<ol>
											<li>KV≥15</li>
											<li>20g≤Gmax＜30g</li>
											<li>3g≤Grms＜6g</li>
										</ol>
									</td>
									<td width="158" valign="top">
										<p>1、Gmax≥30g
											<br /> 2、Grms≥6g
											<br /> 3、解调谱对应故障频率纵标度≥10-1 级 </p>
									</td>
								</tr>
								<tr>
									<td width="41">
										<p align="center">抱轴承</p>
									</td>
									<td width="144" valign="top">
										<p>1、KV≥4.6
											<br /> 2、25g≤Gmax＜40g
											<br /> 3、5g≤Grms＜10g
											<br /> （1、3、4、6位）
											<br /> 4g≤Grms＜8g（2、5位）
										</p>
									</td>
									<td width="158" valign="top">
										<p>1、Gmax≥40g
											<br /> 2、Grms≥10g
											<br /> （1、3、4、6位）
											<br /> Grms≥5g（2、5位）
											<br /> 3、解调谱对应故障频率纵标度≥10-1 级 </p>
									</td>
								</tr>
							</table>
							<ol>
								<li>轴承计算故障频率（单位：HZ）</li>
							</ol>
							<table border="1" cellspacing="0" cellpadding="0">
								<tr>
									<td width="98" rowspan="2">
										<p align="center">名 称</p>
									</td>
									<td width="99" rowspan="2">
										<p align="center">轴箱轴承</p>
									</td>
									<td width="144" colspan="2" valign="top">
										<p align="center">抱轴承</p>
									</td>
								</tr>
								<tr>
									<td width="72" valign="top">
										<p align="center">齿侧</p>
									</td>
									<td width="72" valign="top">
										<p align="center">非齿侧</p>
									</td>
								</tr>
								<tr>
									<td width="98" valign="top">
										<p align="center">内圈故障</p>
									</td>
									<td width="99" valign="top">
										<p align="center">89.7</p>
									</td>
									<td width="72" valign="top">
										<p align="center">209</p>
									</td>
									<td width="72" valign="top">
										<p align="center">232</p>
									</td>
								</tr>
								<tr>
									<td width="98" valign="top">
										<p align="center">外圈故障</p>
									</td>
									<td width="99" valign="top">
										<p align="center">66.0</p>
									</td>
									<td width="72" valign="top">
										<p align="center">185</p>
									</td>
									<td width="72" valign="top">
										<p align="center">208</p>
									</td>
								</tr>
								<tr>
									<td width="98" valign="top">
										<p align="center">滚子故障</p>
									</td>
									<td width="99" valign="top">
										<p align="center">29.6</p>
									</td>
									<td width="72" valign="top">
										<p align="center">76</p>
									</td>
									<td width="72" valign="top">
										<p align="center">88</p>
									</td>
								</tr>
								<tr>
									<td width="98" valign="top">
										<p align="center">保持架故障</p>
									</td>
									<td width="99" valign="top">
										<p align="center">3.9</p>
									</td>
									<td width="72" valign="top">
										<p align="center">4.3</p>
									</td>
									<td width="72" valign="top">
										<p align="center">4.3</p>
									</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td width="51">
							<p align="center">R</p>
						</td>
						<td width="78">
							<p align="center">xxx</p>
						</td>
						<td width="65">
							<p align="center">xxx</p>
						</td>
					</tr>
					<tr>
						<td width="45" rowspan="2">
							<p align="center">2</p>
						</td>
						<td width="51">
							<p align="center">L</p>
						</td>
						<td width="78">
							<p align="center">xxx</p>
						</td>
						<td width="65">
							<p align="center">xxx</td>
					</tr>
					<tr>
						<td width="51">
							<p align="center">R</p>
						</td>
						<td width="78">
							<p align="center">xxx</p>
						</td>
						<td width="65">
							<p align="center">xxx</p>
						</td>
					</tr>
					<tr>
						<td width="45" rowspan="2">
							<p align="center">3</p>
						</td>
						<td width="51">
							<p align="center">L</p>
						</td>
						<td width="78">
							<p align="center">xxx</p>
						</td>
						<td width="65">
							<p align="center">xxx</p>
						</td>
					</tr>
					<tr>
						<td width="51">
							<p align="center">R</p>
						</td>
						<td width="78">
							<p align="center">xxx</p>
						</td>
						<td width="65">
							<p align="center">xxx</p>
						</td>
					</tr>
					<tr>
						<td width="45" rowspan="2">
							<p align="center">4</p>
						</td>
						<td width="51">
							<p align="center">L</p>
						</td>
						<td width="78">
							<p align="center">xxx</p>
						</td>
						<td width="65">
							<p align="center">xxx</p>
						</td>
					</tr>
					<tr>
						<td width="51">
							<p align="center">R</p>
						</td>
						<td width="78">
							<p align="center">xxx</p>
						</td>
						<td width="65">
							<p align="center">xxx</p>
						</td>
					</tr>
					<tr>
						<td width="45" rowspan="2">
							<p align="center">5</p>
						</td>
						<td width="51">
							<p align="center">L</p>
						</td>
						<td width="78">
							<p align="center">xxx</p>
						</td>
						<td width="65">
							<p align="center">xxx</p>
						</td>
					</tr>
					<tr>
						<td width="51">
							<p align="center">R</p>
						</td>
						<td width="78">
							<p align="center">xxx</p>
						</td>
						<td width="65">
							<p align="center">xxx</p>
						</td>
					</tr>
					<tr>
						<td width="45" rowspan="2">
							<p align="center">6</p>
						</td>
						<td width="51">
							<p align="center">L</p>
						</td>
						<td width="78">
							<p align="center">xxx</p>
						</td>
						<td width="65">
							<p align="center">xxx</p>
						</td>
					</tr>
					<tr>
						<td width="51">
							<p align="center">R</p>
						</td>
						<td width="78">
							<p align="center">xxx</p>
						</td>
						<td width="65">
							<p align="center">xxx</p>
						</td>
					</tr>
					<tr height="100">
						<td width="45">
							<p align="center">备注 </p>
						</td>
						<td colspan="7">xxx</td>
					</tr>
					<tr>
						<td width="45" rowspan="2">试验人员</td>
						<td width="45" colspan="2">工人</td>
						<td width="45">工长</td>
						<td width="50">质检员</td>
						<td width="45">技术员</td>
						<td width="45">交车工长</td>
						<td width="45">验收员</td>
					</tr>
					<tr>
						<td width="45" colspan="2">xxx</td>
						<td width="45">xxx</td>
						<td width="45">xxx</td>
						<td width="45">xxxx</td>
						<td width="45">xxx</td>
						<td width="45">xxx</td>
					</tr>
				</table>
			</div>
		</form>
	</body>

</html>