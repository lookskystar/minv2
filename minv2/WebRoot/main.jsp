<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<%@page import="com.repair.constant.Constants"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@include file="/common/taglibs.jsp" %>
<%@include file="/common/checkLogin.jsp" %>
  <head>
    
    <title>${cache['SYS_TITLE'][0].value}-首页</title>
    
	<meta http-equiv="pragma" content="no-cache"/>
	<meta http-equiv="cache-control" content="no-cache"/>
	<meta http-equiv="expires" content="0"/>    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3"/>
	<meta http-equiv="description" content="This is my page"/>
	
	<!--进入页面右下角上升出现消息提示对话框-->
	<script type="text/javascript" src="${ctx}/js/openMessager_script.js" charset="UTF-8"></script>
	
  </head>
	
 
  <body>
  	<!--mainFrame 主DIV                                                开始  -->
	<div id="mainFrame">
		<!-- 引入头部DIV内容                                                						开始    -->
			<jsp:include page="/common/top.jsp" flush="true" />

			<!-- 引入头部DIV内容         											结束 -->

		
		<!-- 头部与导航分界线----------------------------------------------------------------------------------------------------------------------------- -->
		
		<!-- 中部  表格                                                                                           开始 -->
		<div id="minv2_main_centerDiv" class="minv2_main_centerDivClass">
			<table width="100%" cellpadding="0" cellspacing="0" class="table_border0">
				<tr>
					<!-- 中部 左侧区域                                                                                   开始 -->
					<td id="hideCon" class="ver01 ali01">
					
						<!--1box 中部 左侧区域 盒子                                                                            开始-->
						<div id="lbox">
							 <!--lbox_topcenter 中部 左侧区域 盒子 上部内容                                                     开始  -->
							 <div id="lbox_topcenter">
							 	<!--lbox_topcenter 中部 左侧区域 盒子 上部内容 左侧                                                   开始  -->
							 	<div id="lbox_topright">
							 		<!--lbox_topcenter 中部 左侧区域 盒子 上部内容 右侧                                                    开始  -->
							 		<div id="lbox_topright">
							 			<div class="lbox_title">操作菜单</div>
							 		</div>
							 		<!--lbox_topcenter 中部 左侧区域 盒子 上部内容 右侧                                                    结束  -->
							 	</div>
							 	<!--lbox_topcenter 中部 左侧区域 盒子 上部内容 左侧                                                   结束  -->
							 </div>     
							 <!--lbox_topcenter 中部 左侧区域 盒子 上部内容                                                     结束  -->                                        
						</div>
						<!--1box 中部 左侧区域 盒子                                                                            结束 -->
						
						<!--lbox_middlecenter 中部 左侧区域 盒子 中间内容                                                   开始-->
						<div id="lbox_middlecenter">
							<!-- lbox_middleleft 中部 左侧区域 盒子 中间内容 左侧                                               开始-->
							<div id="lbox_middleleft">
								<!-- lbox_middleleft 中部 左侧区域 盒子 中间内容 右侧                                               开始-->
								<div id="lbox_middleright">
									<div id="bs_left">
										<!--<IFRAME scrolling="no" width="100%"  frameBorder=0 id=frmleft name=frmleft src="#"  allowTransparency="true"></IFRAME>-->
									</div>
									<!--更改左侧栏的宽度需要修改id="bs_left"的样式-->
								</div>
								<!-- lbox_middleleft 中部 左侧区域 盒子 中间内容 右侧                                               结束-->
							</div>
							<!-- lbox_middleleft 中部 左侧区域 盒子 中间内容 左侧                                               结束-->
						</div>
						<!--lbox_middlecenter 中部 左侧区域 盒子 中间内容                                                   结束-->
						
						<!--lbox_middlecenter 中部 左侧区域 盒子 下部内容                                                   开始-->
						<div id="lbox_bottomcenter">
							<!--lbox_middlecenter 中部 左侧区域 盒子 下部内容 左侧                                              开始-->
							<div id="lbox_bottomleft">
								<!--lbox_middlecenter 中部 左侧区域 盒子 下部内容 右侧                                              开始-->
								<div id="lbox_bottomright">
									<div class="lbox_foot"></div>
								</div>
								<!--lbox_middlecenter 中部 左侧区域 盒子 下部内容 右侧                                              结束-->
							</div>
							<!--lbox_middlecenter 中部 左侧区域 盒子 下部内容 左侧                                              结束-->
						</div>
						<!--lbox_middlecenter 中部 左侧区域 盒子 下部内容                                                   结束-->
						
					</td>
					<!-- 中部 左侧区域                                                                                    结束 -->
					
					<!-- 中部 左侧区域 界线----------------------------------------------------------------------------------------------------------------------------- -->
					
					<!-- main_shutiao 中部 中间栏区域                                                                 开始-->
					<td class="main_shutiao">
						<div class="bs_leftArr" id="bs_center" title="收缩面板"></div>
					</td>
					<!-- main_shutiao 中部 中间栏区域                                                                 结束-->
					
					<!-- 中部 中间栏区域 界线----------------------------------------------------------------------------------------------------------------------------- -->
					
					<!-- 中部 右侧区域                                                                                    开始-->
					<td class="ali01 ver01"  width="100%">
						<!-- rbox 中部 右侧区域 盒子                                                                        开始 -->
						<div id="rbox">
							<!-- 中部 右侧区域 盒子 上部内容                                                                     开始-->
							<div id="rbox_topcenter">
								<!-- 中部 右侧区域 盒子 上部内容 左侧                                                               开始-->
								<div id="rbox_topleft">
									<!-- 中部 右侧区域 盒子 上部内容 右侧                                                                开始-->
									<div id="rbox_topright">
										<div class="rbox_title">
											操作内容
										</div>
									</div>
									<!-- 中部 右侧区域 盒子 上部内容 右侧                                                                结束-->
								</div>
								<!-- 中部 右侧区域 盒子 上部内容 左侧                                                               结束-->
							</div>
							<!-- 中部 右侧区域 盒子 上部内容                                                                     结束-->
							<!-- 中部 右侧区域 盒子 中部内容                                                                     开始-->
							<div id="rbox_middlecenter"> 
								<!-- 中部 右侧区域 盒子 中部内容 左侧                                                           开始 -->
								<div id="rbox_middleleft">
									<!-- 中部 右侧区域 盒子 中部内容 右侧                                                           开始 -->
									<div id="rbox_middleright">
										<div id="bs_right">
										    <!-- <IFRAME scrolling="no" width="100%" frameBorder=0 id=frmright name=frmright src="#"  allowTransparency="true"></IFRAME>-->
										</div>
									</div>
									<!-- 中部 右侧区域 盒子 中部内容 右侧                                                           结束 -->
								</div>
								<!-- 中部 右侧区域 盒子 中部内容 左侧                                                           结束 -->
							</div>
							<!-- 中部 右侧区域 盒子 中部内容                                                                     结束-->				
							
						</div>
						<!-- rbox 中部 右侧区域 盒子                                                                        结束 -->
					<td>
					<!-- 中部 右侧区域                                                                                    结束-->			
				</tr>
			</table>
		</div>
		<!-- 中部  表格                                                                                           结束 -->
		
		<!-- 中部区域  界线----------------------------------------------------------------------------------------------------------------------------- -->
				
		<!--底部区域                                                                                          开始 -->
		<div id="fbox">
			<div id="bs_footcenter">
				<div id="bs_footleft">
					<div id="bs_footright" class="white">
						骁睿公司 COPYRIGHT 2015 @ www.xiaorui123.com
					</div>
				</div>
			</div>
		</div>
		<!--底部区域                                                                                          结束 -->
		
		<!-- 底部区域 界线----------------------------------------------------------------------------------------------------------------------------- -->
		
		<!--浏览器resize事件修正  开始-->
		<div id="resizeFix"></div>
		<!--浏览器resize事件修正  结束-->

	</div>
	<!--mainFrame 主DIV                                                  结束  -->
  </body>
</html>
