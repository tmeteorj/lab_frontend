<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>
<%@ page language="java"  pageEncoding="utf-8"%>
<%@ taglib uri="http://liferay.com/tld/aui" prefix="aui" %>
<%@ page import="java.sql.ResultSet, java.util.List, com.tju.cs.lab.front.mysql.entities.Menu" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page import="java.util.*" %> 
<%@ page import="com.liferay.portal.kernel.util.*" %> 
<%@ page import="java.text.SimpleDateFormat" %>  
<%@ page import="javax.portlet.PortletURL" %>  
<%@ taglib uri="http://liferay.com/tld/ui" prefix="liferay-ui"%>
<%@ taglib uri="http://liferay.com/tld/theme" prefix="liferay-theme" %>

<portlet:defineObjects />
<% 
	Menu menuitem =(Menu)renderRequest.getAttribute("item");
%>
<script type="text/javaScript" src="${pageContext.request.contextPath}/images/js/jquery.min.js"></script>
<script type="text/javaScript" src="${pageContext.request.contextPath}/images/js/css.js"></script>
<script type="text/javaScript" src="${pageContext.request.contextPath}/images/js/common.js"></script>
<script type="text/javaScript" src="${pageContext.request.contextPath}/images/js/admin.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/images/js/validator.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/images/js/form.js"></script>

<form name="myform" method="post" action="<portlet:actionURL name="updatefunction"/>">
<input type="hidden" name="menuid" value="<%=menuitem.getMenuid()%>" />
<table cellpadding="2" cellspacing="1" class="table_form">
  <caption>添加功能</caption>
  <tr>
  <th><font color="red">*</font>  <strong>上级功能</strong></th>
  <td>
<select name="parentid" id="parentid">
	<option value="0">无（作为顶层菜单）</option>
<%
	List<Menu> menus = (List<Menu>)renderRequest.getAttribute("Menus");
	int i,j,k;
	for(i=0;i<menus.size();i++){
		Menu item = menus.get(i);
		if(item.getMenuid().equals(menuitem.getParentid()) ){
			out.println("<option value=\"" + item.getMenuid() + "\" selected=selected>" + item.getName() + "</option>");
		}else{
			out.println("<option value=\"" + item.getMenuid() + "\">" + item.getName() + "</option>");
		}
		if(item.getsubmenus()!=null){
			List<Menu> sublist = item.getsubmenus();
			for(j=0;j<sublist.size();j++){
				Menu subitem = sublist.get(j);
				if(j<sublist.size()-1){
					if(subitem.getMenuid().equals(menuitem.getParentid())){
						out.println("<option value=\""+ subitem.getMenuid() +"\" selected=selected>&nbsp;├"+ subitem.getName() +"</option>");
					}else{
						out.println("<option value=\""+ subitem.getMenuid() +"\">&nbsp;├"+ subitem.getName() +"</option>");
					}
				}else{
					if(subitem.getMenuid().equals(menuitem.getParentid())){
						out.println("<option value=\""+ subitem.getMenuid() +"\" selected=selected>&nbsp;└"+ subitem.getName() +"</option>");
					}else{
						out.println("<option value=\""+ subitem.getMenuid() +"\">&nbsp;└"+ subitem.getName() +"</option>");
					}
				}
				if(subitem.getsubmenus()!=null){
					List<Menu> subblist=subitem.getsubmenus();
					for(k=0;k<subblist.size();k++){
						Menu subbitem=subblist.get(k);
						if (subbitem.getIsfolder()){
							if(k<subblist.size()-1){
								if(subbitem.getMenuid().equals(menuitem.getParentid())){
									out.println("<option value=\""+ subbitem.getMenuid() +"\" selected=selected>&nbsp;&nbsp;&nbsp;├"+ subbitem.getName() +"</option>");
								}else{
									out.println("<option value=\""+ subbitem.getMenuid() +"\">&nbsp;&nbsp;&nbsp;├"+ subbitem.getName() +"</option>");
								}
							}else{
								if(subbitem.getMenuid().equals(menuitem.getParentid()) ){
									out.println("<option value=\""+ subbitem.getMenuid() +"\" selected=selected>&nbsp;&nbsp;&nbsp;└"+ subbitem.getName() +"</option>");
								}else{
									out.println("<option value=\""+ subbitem.getMenuid() +"\">&nbsp;&nbsp;&nbsp;└"+ subbitem.getName() +"</option>");
								}
							}
						}
					}
				}
			}
		}
	}
%>
</select>  </td>
  </tr>
    <tr>
      <th><font color="red">*</font>  <strong>功能名称</strong></th>
      <td><input type="text" name="name" value="<%=menuitem.getName()%>" size="30"/>
	  </td>
    </tr>
	<tr>
      <th><strong>URL</strong></th>
      <td><input type="text" name="url" value="<%=menuitem.getUrl() %>" size="30"/>（“请按照liferay的友好链接设置进行填写”）
	  </td>
    </tr>
	<tr>
      <th><strong>描述</strong></th>
      <td><input type="text" name="description" value="<%=menuitem.getDescription() %>" size="30"/>
	  </td>
    </tr>
	<tr>
      <th><strong>target</strong></th>
      <td>
	  <select name="target">
	  <option value="<%=menuitem.getTarget() %>"><%=menuitem.getTarget() %></option>
	  <option value="right" selected="selected">right</option>
	  <option value="left">left</option>
	  <option value="_self">_self</option>
	  </select>
	  </td>
    </tr>
	<tr>
      <th><strong>isfolder</strong></th>
      <td>
	  <input type="radio" name="isfolder" value="1" <%
	  if(menuitem.getIsfolder()) out.print("checked=checked");
	  %>/>是　<input type="radio" name="isfolder" value="0" <%
			  if(!menuitem.getIsfolder()) out.print("checked=checked");
			  %>/>否
	  </td>
    </tr>
	<tr>
      <th><strong>isopen</strong></th>
      <td>
	  <input type="radio" name="isopen" value="1" <%
	  	if(menuitem.getIsopen()) out.print("checked=checked");
	  %>/>是　<input type="radio" name="isopen" value="0" <%
			  if(!menuitem.getIsopen()) out.print("checked=checked");
			  %> />否
	  </td>
    </tr>
	<tr>
      <th><strong>排序</strong></th>
      <td><input type="text" name="listorder" value="<%=menuitem.getListorder() %>" size="10"/>
	  </td>
    </tr>
	<tbody><tr>
	 <th></th>
	 <td><input type="submit" name="next" value=" 修改" class="button_style">&nbsp;&nbsp;&nbsp;&nbsp;<input type="reset" name="reset" value=" 重置 " class="button_style"></td>
	</tr>
</tbody></table>
</form>