<html xmlns="http://www.w3.org/1999/xhtml">
<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>
<%@ page language="java"  pageEncoding="utf-8"%>
<%@ taglib uri="http://liferay.com/tld/aui" prefix="aui" %>

<%@ page import="java.util.*" %> 
<%@ page import="com.liferay.portal.kernel.util.*" %> 
<%@ page import="javax.portlet.PortletURL" %>  
<%@ taglib uri="http://liferay.com/tld/ui" prefix="liferay-ui"%>
<%@ taglib uri="http://liferay.com/tld/theme" prefix="liferay-theme" %>

<portlet:defineObjects />
<link href="${pageContext.request.contextPath}/images/js/map.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/images/js/layoutit.css" rel="stylesheet"  type="text/css">
<link href="${pageContext.request.contextPath}/images/js/bootstrap-combined.min.css" rel="stylesheet"  type="text/css">

<script type="text/javaScript" src="${pageContext.request.contextPath}/images/js/jquery.min.js"></script>
<script type="text/javaScript" src="${pageContext.request.contextPath}/images/js/css.js"></script>
<script type="text/javaScript" src="${pageContext.request.contextPath}/images/js/common.js"></script>
<script type="text/javaScript" src="${pageContext.request.contextPath}/images/js/admin.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/images/js/validator.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/images/js/form.js"></script>
<body>
		<div  align="left" style="height: 100%">
			<h1>
				配置 <small>地图点信息展示</small>
			</h1>
			<div class="hero-unit" contenteditable="true" >
			
				<form name="datasetform" method="post" action="http://127.0.0.1:8081/jxc/index.php/Visualization/mappoint_selectmatadata/">
					<legend contenteditable="true">请选择</legend>	
					<div class="control-group">
						<label class="control-label" contenteditable="true" for="inputEmail">一个数据源</label>
						<div class="controls">
							<select id="da" name="da" style="width: 100%;">
								 
										
								<option value="1">data1</option><!--改成外键id -->
									 
										
								<option value="2">data21</option><!--改成外键id -->
									 
										
								<option value="3">data22</option><!--改成外键id -->
									 
										
								<option value="4">data31</option><!--改成外键id -->
									 
										
								<option value="14">data32</option><!--改成外键id -->
																</select>
							<p>
								<blockquote><small><cite>银行</cite></small></blockquote>
							</p>
						</div>
					</div>
					<input type="submit" name="Submit1" value="选择" Style="background-color: Transparent; border-style :none;  color:#007FFF;"> 
				</form>
				<div style="display:block;">
					<form name="matadatasetform" method="post" action="http://127.0.0.1:8081/jxc/index.php/Visualization/mappoint_selectmap/">
					
					<legend contenteditable="true">请选择地图点</legend>
					<div class="control-group">
						<label class="control-label" contenteditable="true" for="inputPassword">经度所对应的数据列</label>

						<div class="controls">
							<div style="display:none;" >
								<select id="da" name="da" style="width: 100%;" style="display:none;" >
									<option value="1"/> </option><!--改成外键id -->
								</select>
							</div>
							<select id="lon" name="lon" style="width: 100%;">
								 
										
								<option value="1">name</option>
									 
										
								<option value="2">jing</option>
									 
										
								<option value="3">wei</option>
									 
										
								<option value="4">achive</option>
																</select>
						</div>
					</div>
					<div class="control-group">
						<label class="control-label" contenteditable="true" for="inputPassword">纬度所对应的数据列</label>

						<div class="controls">
							<select id="lat" name="lat" style="width: 100%;">
								 
										
								<option value="1">name</option>
									 
										
								<option value="2">jing</option>
									 
										
								<option value="3">wei</option>
									 
										
								<option value="4">achive</option>
																</select>
						</div>
					</div>
					<div class="control-group">
						<label class="control-label" contenteditable="true" for="inputPassword">标签所对应的数据列</label>

						<div class="controls">
							<select id="lab" name="lab" style="width: 100%;">
								 
										
								<option value="1">name</option>
									 
										
								<option value="2">jing</option>
									 
										
								<option value="3">wei</option>
									 
										
								<option value="4">achive</option>
																</select>
						</div>
					</div>
					<legend contenteditable="true">请描述</legend>
					<div class="control-group">
						<label class="control-label" contenteditable="true" for="inputPassword">这个可视化的配置</label>

						<div class="controls">
							<textarea rows="5" id="info" name = "info" class="w780"></textarea>
						</div>
					</div>
					
					<legend contenteditable="true">请选择</legend>	
					<div class="control-group">
						<label class="control-label" contenteditable="true" for="inputPassword">使用哪个地图作为底图</label>

						<div class="controls">
							<select id="mp" name="mp" style="width: 100%;">
								 
										
								<option value="1">高德地图</option>
									 
										
								<option value="2">ARCGIS</option>
									 
										
								<option value="3">百度地图</option>
																</select>
								
							<input type="submit" name="Submit2" value="查看" Style="background-color: Transparent; border-style :none;  color:#007FFF;"> 
							
						</div>
					</div>	
					</form>
				</div>
				
		</div>
	</body>
</html>
