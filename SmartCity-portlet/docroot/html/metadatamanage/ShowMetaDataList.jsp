
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
<body >
<p> </p>

<portlet:actionURL var = "toedit" name="toedit">
	<portlet:param name="jspPage" value="/html/metadatamanage/ChangeMetaDataItem.jsp" />
</portlet:actionURL>
<form action="" method="post">
<div class="button_box">
	 <input name="addinfo" type="submit" value="添加元数据" class="button_style">
	 <input type="hidden" name="lastindex" value="12" />
</div>
</form>
<table align="center" cellpadding="0" cellspacing="1" class="table_list">
    <caption>元数据列表</caption>
<tbody><tr>
<th width="9%">ID</th>
<th width="9%">数据集ID</th>
<th width="11%">数据集名称</th>
<th width="11%">元数据名称</th>
<th width="9%">类型</th>
<th width="9%">长度</th>
<th width="9%">小数点</th>
<th width="9%">不是null</th>
<th width="12%">备注</th>
<th >操作</th>
</tr>
	<tr>
	<td class="align_c">1</td>
	<td class="align_c">1</td>
	<td class="align_c">data1</td>
	<td class="align_c">name</td>
	<td class="align_c"></td>
	<td class="align_c"></td>
	<td class="align_c"></td>
	<td class="align_c"></td>
	<td class="align_c"></td>
	<td class="align_c"><a  href="<%=toedit%>">修改</a>　<a href="" onclick="return confirm('确定删除“name”元数据？');">删除</a></td>
	</tr>
		<tr>
	<td class="align_c">2</td>
	<td class="align_c">1</td>
	<td class="align_c">data1</td>
	<td class="align_c">jing</td>
	<td class="align_c"></td>
	<td class="align_c"></td>
	<td class="align_c"></td>
	<td class="align_c"></td>
	<td class="align_c"></td>
	<td class="align_c"><a  href="<%=toedit%>">修改</a>　<a href="" onclick="return confirm('确定删除“name”元数据？');">删除</a></td>
	</tr>
		<tr>
	<td class="align_c">3</td>
	<td class="align_c">1</td>
	<td class="align_c">data1</td>
	<td class="align_c">wei</td>
	<td class="align_c"></td>
	<td class="align_c"></td>
	<td class="align_c"></td>
	<td class="align_c"></td>
	<td class="align_c"></td>
	<td class="align_c"><a  href="<%=toedit%>">修改</a>　<a href="" onclick="return confirm('确定删除“name”元数据？');">删除</a></td>
	</tr>
		<tr>
	<td class="align_c">4</td>
	<td class="align_c">1</td>
	<td class="align_c">data1</td>
	<td class="align_c">achive</td>
	<td class="align_c"></td>
	<td class="align_c"></td>
	<td class="align_c"></td>
	<td class="align_c"></td>
	<td class="align_c"></td>
	<td class="align_c"><a  href="<%=toedit%>">修改</a>　<a href="" onclick="return confirm('确定删除“name”元数据？');">删除</a></td>
	</tr>
		<tr>
	<td class="align_c">5</td>
	<td class="align_c">2</td>
	<td class="align_c">data21</td>
	<td class="align_c">id</td>
	<td class="align_c"></td>
	<td class="align_c"></td>
	<td class="align_c"></td>
	<td class="align_c"></td>
	<td class="align_c"></td>
	<td class="align_c"><a  href="<%=toedit%>">修改</a>　<a href="" onclick="return confirm('确定删除“name”元数据？');">删除</a></td>
	</tr>
		<tr>
	<td class="align_c">6</td>
	<td class="align_c">2</td>
	<td class="align_c">data21</td>
	<td class="align_c">data</td>
	<td class="align_c"></td>
	<td class="align_c"></td>
	<td class="align_c"></td>
	<td class="align_c"></td>
	<td class="align_c"></td>
	<td class="align_c"><a  href="<%=toedit%>">修改</a>　<a href="" onclick="return confirm('确定删除“name”元数据？');">删除</a></td>
	</tr>
		<tr>
	<td class="align_c">7</td>
	<td class="align_c">3</td>
	<td class="align_c">data22</td>
	<td class="align_c">id</td>
	<td class="align_c"></td>
	<td class="align_c"></td>
	<td class="align_c"></td>
	<td class="align_c"></td>
	<td class="align_c"></td>
	<td class="align_c"><a  href="<%=toedit%>">修改</a>　<a href="" onclick="return confirm('确定删除“name”元数据？');">删除</a></td>
	</tr>
		<tr>
	<td class="align_c">8</td>
	<td class="align_c">3</td>
	<td class="align_c">data22</td>
	<td class="align_c">data</td>
	<td class="align_c"></td>
	<td class="align_c"></td>
	<td class="align_c"></td>
	<td class="align_c"></td>
	<td class="align_c"></td>
	<td class="align_c"><a  href="<%=toedit%>">修改</a>　<a href="" onclick="return confirm('确定删除“name”元数据？');">删除</a></td>
	</tr>
		<tr>
	<td class="align_c">9</td>
	<td class="align_c">4</td>
	<td class="align_c">data31</td>
	<td class="align_c">id</td>
	<td class="align_c"></td>
	<td class="align_c"></td>
	<td class="align_c"></td>
	<td class="align_c"></td>
	<td class="align_c"></td>
	<td class="align_c"><a  href="<%=toedit%>">修改</a>　<a href="" onclick="return confirm('确定删除“name”元数据？');">删除</a></td>
	</tr>
		<tr>
	<td class="align_c">10</td>
	<td class="align_c">4</td>
	<td class="align_c">data31</td>
	<td class="align_c">data</td>
	<td class="align_c"></td>
	<td class="align_c"></td>
	<td class="align_c"></td>
	<td class="align_c"></td>
	<td class="align_c"></td>
	<td class="align_c"><a  href="<%=toedit%>">修改</a>　<a href="" onclick="return confirm('确定删除“name”元数据？');">删除</a></td>
	</tr>
		<tr>
	<td class="align_c">16</td>
	<td class="align_c">14</td>
	<td class="align_c">data32</td>
	<td class="align_c">id</td>
	<td class="align_c">int(11)</td>
	<td class="align_c">0</td>
	<td class="align_c"></td>
	<td class="align_c">NO</td>
	<td class="align_c"></td>
	<td class="align_c"><a  href="<%=toedit%>">修改</a>　<a href="" onclick="return confirm('确定删除“name”元数据？');">删除</a></td>
	</tr>
		<tr>
	<td class="align_c">17</td>
	<td class="align_c">14</td>
	<td class="align_c">data32</td>
	<td class="align_c">data</td>
	<td class="align_c">varchar(255)</td>
	<td class="align_c">0</td>
	<td class="align_c"></td>
	<td class="align_c">YES</td>
	<td class="align_c"></td>
	<td class="align_c"><a  href="<%=toedit%>">修改</a>　<a href="" onclick="return confirm('确定删除“name”元数据？');">删除</a></td>
	</tr>
	</tbody></table>
<form action="" method="post">
<div class="button_box">
	 <input name="addinfo" type="submit" value="添加元数据" class="button_style">
</div>
</form>
<!--从这里开始修改-->
<div id="pages">
	总数：<b>12</b>
<a href="">首页</a><a href="">上一页</a><a href="">下一页</a><a href="0">尾页</a>
页次：<b><font color="red">1</font>/1</b>
<input type="text" name="page" id="page" size="2" onkeydown="" class="input_blur"> 
<input type="button" value="GO" class="gotopage button_style" onclick=""></div>
</body></html>