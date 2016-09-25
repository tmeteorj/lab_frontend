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
				生成 <small>可视化布局界面</small>
			</h1>
			<div class="hero-unit" contenteditable="true" >
			
				<form name="datasetform" method="post" action="">
					<legend contenteditable="true">请选择</legend>	
					<div class="control-group">
						<label class="control-label" contenteditable="true" for="inputEmail">您的可视化界面要服务的用户</label>
						<div class="controls">
							<select id="ro" name="ro" style="width: 100%;">
								 
										
								<option value="1">管理员</option><!--改成外键id -->
									 
										
								<option value="2">决策者</option><!--改成外键id -->
																</select>
						</div>
					</div>
					<legend contenteditable="true">请选择</legend>	
					<div class="control-group">
						<label class="control-label" contenteditable="true" for="inputEmail">您的可视化界面所使用的布局</label>
						<div class="controls">
							<select id="la" name="la" style="width: 100%;">
								 
										
								<option value="1">上下浮动型</option><!--改成外键id -->
									 
										
								<option value="2">上下一般型</option><!--改成外键id -->
																</select>
						</div>
					</div>
					<legend contenteditable="true">请命名</legend>
					<div class="control-group">
						<label class="control-label" contenteditable="true" for="inputPassword">这个可视化布局</label>

						<div class="controls">
							<input id="name" name = "name"></input>
						</div>
					</div>
					<legend contenteditable="true">请描述</legend>
					<div class="control-group">
						<label class="control-label" contenteditable="true" for="inputPassword">这个可视化布局</label>

						<div class="controls">
							<textarea rows="5" id="info" name = "info" class="w780"></textarea>
						</div>
					</div>
					
					<legend contenteditable="true">请添加</legend>	
					<div class="control-group">
						<label class="control-label" contenteditable="true" for="inputPassword">布局中的可视化内容</label>
						<input type="button" onClick="addRow();" style="font-size:16px;" value="+"/>
						
						<table id="oTable" border="0"cellpadding="0"cellspacing="0">
							
							<tbody>
								<tr>
									<label class="control-label" contenteditable="true" for="inputEmail">第1部分</label>
									<div class="controls" style="width: 100%;">
										<select id="co1" name="co1">
											 
													
											<option value="153">test2</option><!--改成外键id -->
												 
													
											<option value="155"></option><!--改成外键id -->
												 
													
											<option value="156">testb</option><!--改成外键id -->
												 
													
											<option value="161">line</option><!--改成外键id -->
												 
													
											<option value="163">test1</option><!--改成外键id -->
												 
													
											<option value="164">testttt</option><!--改成外键id -->
												 
													
											<option value="166">echart</option><!--改成外键id -->
												 
													
											<option value="167">qeqwewqe</option><!--改成外键id -->
												 
													
											<option value="168">本月客户存款数据</option><!--改成外键id -->
												 
													
											<option value="169">本月客户取款记录</option><!--改成外键id -->
												 
													
											<option value="170">我行atm分布数据</option><!--改成外键id -->
												 
													
											<option value="171">这是一个地图点展示示例</option><!--改成外键id -->
												 
													
											<option value="173">这是一个地图点展示</option><!--改成外键id -->
												 
													
											<option value="174"></option><!--改成外键id -->
																						</select>
									</div>
								</tr>
							</tbody>
						</table>
						<input type="submit" name="submit" value="生成" Style="background-color: Transparent; border-style :none;  color:#007FFF;"> 
						<input id="count" name = "count" style="display:none;"></input>
					</div>	
				</form>
				
		</div>
	</body>
</html>
<script>
var countnum=1;
function addRow(){
	var oTable = document.getElementById("oTable");
	var tBodies = oTable.tBodies;
	countnum=countnum+1;
	var tbody = tBodies[0];
	var tr = tbody.insertRow(tbody.rows.length);
	var td = tr.insertCell(0);
	td.innerHTML = "<label class='control-label' contenteditable='true' for='inputEmail'>第"+countnum+"部分</label><div class='controls'  style='width: 100%;'><select id='co"+countnum+"' name='co"+countnum+"'> <option value='153'>test2</option> <option value='155'></option> <option value='156'>testb</option> <option value='161'>line</option> <option value='163'>test1</option> <option value='164'>testttt</option> <option value='166'>echart</option> <option value='167'>qeqwewqe</option> <option value='168'>本月客户存款数据</option> <option value='169'>本月客户取款记录</option> <option value='170'>我行atm分布数据</option> <option value='171'>这是一个地图点展示示例</option> <option value='173'>这是一个地图点展示</option> <option value='174'></option></select></div>";
	var count= document.getElementById("count");
	count.value = countnum;
}
</script>