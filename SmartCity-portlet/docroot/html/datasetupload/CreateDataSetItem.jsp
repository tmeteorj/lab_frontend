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
  <caption>修改元数据信息<input type='hidden' name='datasetid' value='4'/></caption>
  <tr>
  <th><strong>ID</strong></th>
  <td><input type="text" name="id" size="30" value="4" readonly="true"/></td>
  </tr>
   <tr>
  <th><font color="red">*</font>  <strong>数据集ID</strong></th>
  <td><input type="text" name="datasetid" size="30" value="1"/></td>
  </tr>
  <tr>
  <th><font color="red">*</font>  <strong>数据集名称</strong></th>
  <td><input type="text" name="dataset" size="30" value="data1"/></td>
  </tr>
	<tr>
      <th><font color="red">*</font>  <strong>元数据</strong></th>
      <td><input type="text" name="mata" size="30" value="achive"/></td>
    </tr>
	<tr>
      <th><font color="red">*</font>  <strong>元数据类型</strong></th>
      <td><input type="text" name="type" value="" size="10"/>
	  </td>
    </tr>
    	<tr>
      <th><strong>长度</strong></th>
      <td><input type="text" name="length" value="" size="10"/>
	  </td>
    </tr>
	<tr>
      <th><strong>小数点</strong></th>
      <td><input type="text" name="double" value="" size="10"/>
	  </td>
    </tr>
	
	<tr>
      <th><strong>不是null</strong></th>
      <td><select id="null" name="null" datatype="*">
	  <option value='' selected='selected'></option>	  <option value=''>-请选择-</option>
	  <option value='是'>是</option>
	  <option value='否'>否</option>
	  </select>
	  </td>
    </tr>
	<tr>
      <th><strong>备注</strong></th>
      <td><input type="text" name="beizhu" value="" size="10"/>
	  </td>
    </tr>
	 
	<tbody><tr>
	 <th></th>
	 <td><input type="submit" name="next" value=" 修改 " class="button_style">&nbsp;&nbsp;&nbsp;&nbsp;<input type="reset" name="reset" value=" 重置 " class="button_style"></td>
	</tr>
</tbody></table>
</form>
</body></html>