
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
<form name="myform" method="post" action="">
<table cellpadding="2" cellspacing="1" class="table_form">
  <caption>修改数据集信息<input type='hidden' name='datasetid' value='1'/></caption>
  <tr>
  <th><font color="red">*</font>  <strong>ID</strong></th>
  <td><input type="text" name="id" size="30" value="1" readonly="true"/></td>
  </tr>
  <tr>
  <th><font color="red">*</font>  <strong>数据集名称</strong></th>
  <td><input type="text" name="title" size="30" value="data1"/></td>
  </tr>
	<tr>
      <th><strong>数据描述</strong></th>
      <td><input type="text" name="info" size="30" value="银行"/></td>
    </tr>
	<tr>
      <th><strong>数据库连接地址</strong></th>
      <td><input type="text" name="datasetUrl" value="127.0.0.1:3306" size="10"/>
	  </td>
    </tr>
	<tr>
      <th><strong>数据库名称</strong></th>
      <td><input type="text" name="dataname" value="jxc" size="10"/>
	  </td>
    </tr>
		<tr>
      <th><strong>用户名</strong></th>
      <td><input type="text" name="username" value="root" size="10"/>
	  </td>
    </tr>
		<tr>
      <th><strong>密码</strong></th>
      <td><input type="text" name="psw" value="123" size="10"/>
	  </td>
    </tr>
	<tr>
      <th><strong>数据来源机构</strong></th>
      <td><input type="text" name="src" value="银行" size="10"/>
	  </td>
    </tr>
	<tr>
      <th><strong>当前角色</strong></th>
      <td><input type="text" name="publisher" value="" size="10"/>
	  </td>
    </tr>
	<tr>
      <th><strong>数据大小</strong></th>
      <td><input type="text" name="size" value="" size="10"/>
	  </td>
    </tr>
	<tr>
      <th><strong>发布时间</strong></th>
      <td><input type="text" name="publishTime" value="2016-06-25 07:57:40" size="10"/>
	  </td>
    </tr>
	<tbody><tr>
	 <th></th>
	 <td><input type="submit" name="next" value=" 修改 " class="button_style">&nbsp;&nbsp;&nbsp;&nbsp;<input type="reset" name="reset" value=" 重置 " class="button_style"></td>
	</tr>
</tbody></table>
</form>
</body></html>