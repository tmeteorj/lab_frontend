
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

<script type="text/javaScript" src="${pageContext.request.contextPath}/images/js/jquery.min.js"></script>
<script type="text/javaScript" src="${pageContext.request.contextPath}/images/js/css.js"></script>
<script type="text/javaScript" src="${pageContext.request.contextPath}/images/js/common.js"></script>
<script type="text/javaScript" src="${pageContext.request.contextPath}/images/js/admin.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/images/js/validator.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/images/js/form.js"></script>

<portlet:actionURL var = "toedit" name="toedit">
	<portlet:param name="jspPage" value="/html/visualmanage/ShowVisualItem.jsp" />
</portlet:actionURL>
<body >
		<div style="display:;">
			<div>
			<p> </p>
			<form action="" method="post">
								<div class="button_box">
					<input name="addinfo" type="submit" value="添加" class="button_style">
					<input type="hidden" name="lastindex" value="14" />
				</div>
			</form>
			<table align="center" cellpadding="0" cellspacing="1" class="table_list">
				<caption>配置数据集列表</caption>
				<tbody>
					<tr>
						<th width="5%">ID</th>
						<th width="12%">图形描述</th>
						<th width="15%">图形类别</th>
						<th width="7%">数据集id</th>
						<th width="30%">配置数据序列</th>
						<th width="8%">方法</th>
						<th >操作</th>
					</tr>

										<tr>
						<td class="align_c">153</td>
						<td class="align_c">test2</td>
						<td class="align_c">地图点信息展示</td>
						<td class="align_c">1</td>
						<td class="align_c">a:3:{s:3:"lon";s:1:"2";s:3:"lat";s:1:"3";s:3:"lab";s:1:"1";}</td>
						<td class="align_c">3</td>
						<td class="align_c"><a  href="<%=toedit%>">查看</a>　<a href="" onclick="return confirm('确定删除“图表柱状图展示”配置数据集？');">删除</a></td>
					</tr>
										<tr>
						<td class="align_c">155</td>
						<td class="align_c"></td>
						<td class="align_c">图表饼状图展示</td>
						<td class="align_c">3</td>
						<td class="align_c">a:1:{s:3:"lab";s:1:"7";}</td>
						<td class="align_c">4</td>
						<td class="align_c"><a  href="<%=toedit%>">查看</a>　<a href="" onclick="return confirm('确定删除“图表柱状图展示”配置数据集？');">删除</a></td>
					</tr>
										<tr>
						<td class="align_c">156</td>
						<td class="align_c">testb</td>
						<td class="align_c">图表柱状图展示</td>
						<td class="align_c">3</td>
						<td class="align_c">a:2:{s:3:"lab";s:1:"7";s:3:"dat";s:1:"8";}</td>
						<td class="align_c">6</td>
						<td class="align_c"><a  href="<%=toedit%>">查看</a>　<a href="" onclick="return confirm('确定删除“图表柱状图展示”配置数据集？');">删除</a></td>
					</tr>
										<tr>
						<td class="align_c">161</td>
						<td class="align_c">line</td>
						<td class="align_c">图表折线图展示</td>
						<td class="align_c">3</td>
						<td class="align_c">a:2:{s:3:"lab";s:1:"7";s:3:"dat";s:1:"8";}</td>
						<td class="align_c">8</td>
						<td class="align_c"><a  href="<%=toedit%>">查看</a>　<a href="" onclick="return confirm('确定删除“图表柱状图展示”配置数据集？');">删除</a></td>
					</tr>
										<tr>
						<td class="align_c">163</td>
						<td class="align_c">test1</td>
						<td class="align_c">图表柱状图展示</td>
						<td class="align_c">4</td>
						<td class="align_c">a:2:{s:3:"lab";s:1:"9";s:3:"dat";s:2:"10";}</td>
						<td class="align_c">7</td>
						<td class="align_c"><a  href="<%=toedit%>">查看</a>　<a href="" onclick="return confirm('确定删除“图表柱状图展示”配置数据集？');">删除</a></td>
					</tr>
										<tr>
						<td class="align_c">164</td>
						<td class="align_c">testttt</td>
						<td class="align_c">图表饼状图展示</td>
						<td class="align_c">2</td>
						<td class="align_c">a:1:{s:3:"lab";s:1:"6";}</td>
						<td class="align_c">5</td>
						<td class="align_c"><a  href="<%=toedit%>">查看</a>　<a href="" onclick="return confirm('确定删除“图表柱状图展示”配置数据集？');">删除</a></td>
					</tr>
										<tr>
						<td class="align_c">166</td>
						<td class="align_c">echart</td>
						<td class="align_c">图表折线图展示</td>
						<td class="align_c">2</td>
						<td class="align_c">a:2:{s:3:"lab";s:1:"5";s:3:"dat";s:1:"6";}</td>
						<td class="align_c">9</td>
						<td class="align_c"><a  href="<%=toedit%>">查看</a>　<a href="" onclick="return confirm('确定删除“图表柱状图展示”配置数据集？');">删除</a></td>
					</tr>
										<tr>
						<td class="align_c">167</td>
						<td class="align_c">qeqwewqe</td>
						<td class="align_c">图表柱状图展示</td>
						<td class="align_c">14</td>
						<td class="align_c">a:2:{s:3:"lab";s:2:"16";s:3:"dat";s:2:"17";}</td>
						<td class="align_c">6</td>
						<td class="align_c"><a  href="<%=toedit%>">查看</a>　<a href="" onclick="return confirm('确定删除“图表柱状图展示”配置数据集？');">删除</a></td>
					</tr>
										<tr>
						<td class="align_c">168</td>
						<td class="align_c">本月客户存款数据</td>
						<td class="align_c">图表柱状图展示</td>
						<td class="align_c">2</td>
						<td class="align_c">a:2:{s:3:"lab";s:1:"5";s:3:"dat";s:1:"6";}</td>
						<td class="align_c">6</td>
						<td class="align_c"><a  href="<%=toedit%>">查看</a>　<a href="" onclick="return confirm('确定删除“图表柱状图展示”配置数据集？');">删除</a></td>
					</tr>
										<tr>
						<td class="align_c">169</td>
						<td class="align_c">本月客户取款记录</td>
						<td class="align_c">图表折线图展示</td>
						<td class="align_c">4</td>
						<td class="align_c">a:2:{s:3:"lab";s:1:"9";s:3:"dat";s:1:"9";}</td>
						<td class="align_c">9</td>
						<td class="align_c"><a  href="<%=toedit%>">查看</a>　<a href="" onclick="return confirm('确定删除“图表柱状图展示”配置数据集？');">删除</a></td>
					</tr>
										<tr>
						<td class="align_c">170</td>
						<td class="align_c">我行atm分布数据</td>
						<td class="align_c">地图点信息展示</td>
						<td class="align_c">1</td>
						<td class="align_c">a:3:{s:3:"lon";s:1:"2";s:3:"lat";s:1:"3";s:3:"lab";s:1:"1";}</td>
						<td class="align_c">1</td>
						<td class="align_c"><a  href="<%=toedit%>">查看</a>　<a href="" onclick="return confirm('确定删除“图表柱状图展示”配置数据集？');">删除</a></td>
					</tr>
										<tr>
						<td class="align_c">171</td>
						<td class="align_c">这是一个地图点展示示例</td>
						<td class="align_c">地图点信息展示</td>
						<td class="align_c">1</td>
						<td class="align_c">a:3:{s:3:"lon";s:1:"2";s:3:"lat";s:1:"3";s:3:"lab";s:1:"1";}</td>
						<td class="align_c">1</td>
						<td class="align_c"><a  href="<%=toedit%>">查看</a>　<a href="" onclick="return confirm('确定删除“图表柱状图展示”配置数据集？');">删除</a></td>
					</tr>
										<tr>
						<td class="align_c">173</td>
						<td class="align_c">这是一个地图点展示</td>
						<td class="align_c">地图点信息展示</td>
						<td class="align_c">1</td>
						<td class="align_c">a:3:{s:3:"lon";s:1:"2";s:3:"lat";s:1:"3";s:3:"lab";s:1:"1";}</td>
						<td class="align_c">1</td>
						<td class="align_c"><a  href="<%=toedit%>">查看</a>　<a href="" onclick="return confirm('确定删除“图表柱状图展示”配置数据集？');">删除</a></td>
					</tr>
										<tr>
						<td class="align_c">174</td>
						<td class="align_c"></td>
						<td class="align_c">图表柱状图展示</td>
						<td class="align_c">3</td>
						<td class="align_c">a:2:{s:3:"lab";s:1:"7";s:3:"dat";s:1:"8";}</td>
						<td class="align_c">6</td>
						<td class="align_c"><a  href="<%=toedit%>">查看</a>　<a href="" onclick="return confirm('确定删除“图表柱状图展示”配置数据集？');">删除</a></td>
					</tr>
									</tbody>
			</table>
			<form action="" method="post">
				<div class="button_box">
					<input name="addinfo" type="submit" value="添加" class="button_style">
				</div>
			</form>
			<!--从这里开始修改-->
						<div id="pages">
				总数：<b>14</b>
				<a href="">首页</a><a href="">上一页</a><a href="">下一页</a><a href="">尾页</a>
				页次：<b><font color="red">1</font>/1</b>
				<input type="text" name="page" id="page" size="2" onkeydown="" class="input_blur"> 
				<input type="button" value="GO" class="gotopage button_style" onclick=""></div>
			</div>
		</div>	
	</body>
</html>
