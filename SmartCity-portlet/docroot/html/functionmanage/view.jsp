<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet"%>
<%@ page language="java" pageEncoding="utf-8"%>
<%@ taglib uri="http://liferay.com/tld/aui" prefix="aui"%>
<%@ page import="java.sql.ResultSet, java.util.List, com.tju.cs.lab.front.mysql.entities.Menu"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page import="java.util.*"%>
<%@ page import="com.liferay.portal.kernel.util.*"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="javax.portlet.PortletURL"%>
<%@ taglib uri="http://liferay.com/tld/ui" prefix="liferay-ui"%>
<%@ taglib uri="http://liferay.com/tld/theme" prefix="liferay-theme"%>

<portlet:defineObjects />
<script type="text/javaScript"
	src="${pageContext.request.contextPath}/images/js/jquery.min.js"></script>
<script type="text/javaScript"
	src="${pageContext.request.contextPath}/images/js/css.js"></script>
<script type="text/javaScript"
	src="${pageContext.request.contextPath}/images/js/common.js"></script>
<script type="text/javaScript"
	src="${pageContext.request.contextPath}/images/js/admin.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/images/js/validator.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/images/js/form.js"></script>


<portlet:actionURL var="tonew" name="tonew">
        <portlet:param name="jspPage" value="/html/functionmanage/new.jsp"/>
</portlet:actionURL>

<form action="<%=tonew%>" method="post">
<div class="button_box">
	 <input name="addinfo" type="submit" value="添加功能" class="button_style">
</div>
</form>
<table  id="table_new1" align="center" cellpadding="0" cellspacing="1" class="table_list"　>
    <caption>功能列表</caption>
<tbody>
<tr>
<th width="5%">排序</th>
<th width="15%">功能名称</th>
<th width="15%">上级菜单</th>
<th width="13%">url</th>
<th width="10%">描述</th>
<th width="8%">target</th>
<th width="8%">isfolder</th>
<th width="8%">默认打开</th>
<th >操作</th>
</tr>
<% 
	List<Menu> menus = (List<Menu>)renderRequest.getAttribute("Menus");
	int i,j,k;
	for(i=0;i<menus.size();i++){
		out.println("<tr>");
		out.println("<td class=\"align_c\">"+menus.get(i).getListorder()+"</td>");
		out.println("<td >|-"+menus.get(i).getName()+"</td>");
		out.println("<td></td>");
		out.println("<td class=\"align_c\">"+menus.get(i).getUrl()+"</td>");
		out.println("<td class=\"align_c\">"+menus.get(i).getDescription()+"</td>");
		out.println("<td class=\"align_c\">"+menus.get(i).getTarget()+"</td>");
		if(menus.get(i).getIsfolder()){
			out.println("<td class=\"align_c\"><font color='green'>是</font></td>");
		}else{
			out.println("<td class=\"align_c\"><font color='red'>否</font></td>");
		}
		if(menus.get(i).getIsopen()){
			out.println("<td class=\"align_c\"><font color='green'>是</font></td>");
		}else{
			out.println("<td class=\"align_c\"><font color='red'>否</font></td>");
		}
	%>
		<portlet:actionURL var="deletefunction" name="deletefunction">
			<portlet:param name="id" value="<%=menus.get(i).getMenuid().toString()%>"/>		
		</portlet:actionURL>
		
		<portlet:actionURL var="toedit" name="toupdate">
       		<portlet:param name="jspPage" value="/html/functionmanage/update.jsp"/>
			<portlet:param name="id" value="<%=menus.get(i).getMenuid().toString()%>"/>	
		</portlet:actionURL>
		
		<td class="align_c"><a href="<%=toedit%>">修改</a>　　<a href="<%=deletefunction %>" onclick="return confirm('确定删除“<%=menus.get(i).getName()%>”功能项？');">删除</a></td>
	<%
		out.println("</tr>");
		List<Menu> submenu = menus.get(i).getsubmenus();
		if(submenu == null) continue;
		for(j=0;j<submenu.size();j++){
			%>
		<tr>
		<td class="align_c"><%=submenu.get(j).getListorder()%></td>
		<td >　|-<%=submenu.get(j).getName() %></td>
		<td >|-<a href="#"><%=menus.get(i).getName() %></a></td>
		<td ><%=submenu.get(j).getUrl() %></td>
		<td class="align_c"><%=submenu.get(j).getDescription() %></td>
		<td class="align_c"><%=submenu.get(j).getTarget() %></td>
		<td class="align_c"><%
			if(submenu.get(j).getIsfolder()){
				out.println("<font color='green'>是</font>");
			}else{
				out.println("<font color='red'>否</font>");
			}
		%></td>
		<td class="align_c"><%
			if(submenu.get(j).getIsopen()){
				out.println("<font color='green'>是</font>");
			}else{
				out.println("<font color='red'>否</font>");
			}
		%></td>
		<portlet:actionURL var="deletefunctionsub" name="deletefunction">
			<portlet:param name="id" value="<%=submenu.get(j).getMenuid().toString()%>"/>		
		</portlet:actionURL>
		<portlet:actionURL var="toeditsub" name="toupdate">
       		<portlet:param name="jspPage" value="/html/functionmanage/update.jsp"/>
			<portlet:param name="id" value="<%=submenu.get(j).getMenuid().toString()%>"/>	
		</portlet:actionURL>
		<td class="align_c"><a href="<%=toeditsub%>">修改</a>　　<a href="<%=deletefunctionsub %>" onclick="return confirm('确定删除“<%=submenu.get(j).getName()%>”功能项？');">删除</a></td>
		</tr>
			<%
			List<Menu> ssubmenu = submenu.get(j).getsubmenus();
			if(ssubmenu == null) continue;
			for(k=0;k<ssubmenu.size();k++){
				%>
				<tr>
				<td class="align_c"><%=ssubmenu.get(k).getListorder() %></td>
				<td >　　|-<%=ssubmenu.get(k).getName() %></td>
				<td >　|-<a href="#"><%=submenu.get(j).getName() %></a></td>
				<td ><%=ssubmenu.get(k).getUrl() %></td>
				<td class="align_c"><%=ssubmenu.get(k).getDescription() %></td>
				<td class="align_c"><%=ssubmenu.get(k).getTarget() %></td>
				<td class="align_c"><%
					if(ssubmenu.get(k).getIsfolder()){
						out.println("<font color='green'>是</font>");
					}else{
						out.println("<font color='red'>否</font>");
					}
				%></td>
				<td class="align_c"><%
					if(ssubmenu.get(k).getIsopen()){
							out.println("<font color='green'>是</font>");
					}else{
						out.println("<font color='red'>否</font>");
					}
				%></td>
				<portlet:actionURL var="deletefunctionssub" name="deletefunction">
					<portlet:param name="id" value="<%=ssubmenu.get(k).getMenuid().toString()%>"/>		
				</portlet:actionURL>
				<portlet:actionURL var="toeditssub" name="toupdate">
       				<portlet:param name="jspPage" value="/html/functionmanage/update.jsp"/>
					<portlet:param name="id" value="<%=ssubmenu.get(k).getMenuid().toString()%>"/>	
				</portlet:actionURL>
				<td class="align_c"><a href="<%=toeditssub%>">修改</a>　　<a href="<%=deletefunctionssub %>" onclick="return confirm('确定删除“<%=ssubmenu.get(k).getName()%>”功能项？');">删除</a></td>
				</tr>
				<%
			}
		}
	}
	%>
</tbody></table>

<script>
function setRowsColor(tableId){
 var table = document.getElementById(tableId);
 var rows = table.getElementsByTagName("tr");
 for(var i = 0;i<rows.length;i++){
	 if(i==1);
	 else{
  		if(i%2==0)
   		rows[i].style.backgroundColor='#e3f4fe';
	 }
 }
}

setRowsColor('table_new1');
</script>
