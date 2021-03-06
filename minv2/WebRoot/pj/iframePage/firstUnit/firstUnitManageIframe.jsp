<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" 
	"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@include file="/common/taglibs.jsp" %>
<html>
  <head>
    <title>${cache['SYS_TITLE'][0].value}--配件管理-专业-专业管理</title>
	
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3"/>
    <meta http-equiv="description" content="this is my page"/>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8"/>
    
	<!-- dynaTree树形菜单组件-加载数据js                               开始 -->
    <script src="${ctx}/js/pj/firstUnitManageIframe_tree_script.js.jsp" type="text/javascript"></script>
    <!-- dynaTree树形菜单组件-加载数据js   									结束 -->
    
    <script src="${ctx}/js/pj/firstUnitManageIframe_script.js" type="text/javascript"></script>
    
    <script src="${ctx}/js/pj/closeeDitFirstUnitDialog.jsp" type="text/javascript"></script>
    
  </head>
  
  <body>
  	<!-- minv2_firstUnitManageIframe_mainDiv 主div                                           开始 -->
    <div id="minv2_firstUnitManageIframe_mainDiv" class="minv2_firstUnitManageIframe_mainDiv_class" >
    	 <!--左边菜单DIV                                                                     开始-->
            <div id="minv2_firstUnitManageIframe_leftDiv" class="minv2_firstUnitManageIframe_leftDiv_class">
            	<!-- 盒子模型上方                                                            开始 -->
				<div class="box2" panelWidth="230" panelHeight="520" panelTitle="专业管理" overflow="auto"  style="float:left">
					<input type="hidden" value="${message}"  id="message"/>
					<c:remove var="message"/>
			  	    <!-- 大部件(专业)(unit)目录数据的显示 DIV						开始-->
					<div id="scrollContent">
						<button onclick='top.Dialog.open({URL:"toAddDictPjFirstUnit.action",Title:"新增专业"});'/><span class="icon_add">新增</span></button>
						<button  id="updateFs"><span class="icon_edit">修改</span></button>
						<button  id="delProteamBtn"><span class="icon_delete" >删除</span></button>
						<div id="tree" class="ztree">
							
						</div>
				    </div>
				    <!-- 大部件(专业)(unit)目录数据的显示 DIV						结束-->
			    </div>
			    <!-- 盒子模型上方                                                            结束 -->			
            </div>
            <!--左边菜单DIV                                                                  结束-->
            
            <!--右边内容DIV                                                                  开始-->
            <div id="minv2_firstUnitManageIframe_rightDiv" class="minv2_firstUnitManageIframe_rightDiv_class">
            	<iframe src="${urlctx }pj/iframePage/firstUnit/firstUnitManageChildIframe.jsp"  id="minv2_firstUnitManageIframe_contentIframe" name="minv2_firstUnitManageIframe_rightIframe" 
            	class="minv2_firstUnitManageIframe_rightIframe_class" scrolling="no" frameborder="no" ></iframe>
            </div> 
            <!--右边内容DIV                                                                  结束-->
    </div>
    <!-- firstUnitManageIframe_mainDiv 主div                                           结束 -->
  </body>
</html>


