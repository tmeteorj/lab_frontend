package com.test;

import java.io.IOException;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.portlet.ActionRequest;
import javax.portlet.ActionResponse;
import javax.portlet.PortletException;
import javax.portlet.RenderRequest;
import javax.portlet.RenderResponse;
import javax.ws.rs.client.Client;
import javax.ws.rs.client.ClientBuilder;
import javax.ws.rs.client.Entity;
import javax.ws.rs.client.WebTarget;
import javax.ws.rs.core.Form;
import javax.ws.rs.core.GenericType;
import javax.ws.rs.core.MediaType;

import org.glassfish.jersey.client.ClientConfig;
import org.glassfish.jersey.jackson.JacksonFeature;

import com.liferay.util.bridges.mvc.MVCPortlet;
import com.tju.cs.lab.front.mysql.entities.Menu;

/**
 * Portlet implementation class FunctionManage
 */
public class FunctionManage extends MVCPortlet {
	@Override
	public void render(RenderRequest renderRequest,
			RenderResponse renderResponse) throws PortletException, IOException {
		if (renderRequest.getParameter("jspPage") == null) {
			// 确保在其他actionurl跳转的时候，不执行下面的语句
			setallfuncations(renderRequest);
		}
		super.render(renderRequest, renderResponse);
	}

	// 从数据库获取所有菜单内容，并存储到数据
	private void setallfuncations(RenderRequest renderRequest) {
		ClientConfig config = new ClientConfig();
		config.register(JacksonFeature.class);
		Client client = ClientBuilder.newClient(config);
		GenericType<List<Menu>> genericType = new GenericType<List<Menu>>() {
		};
		WebTarget target1 = client
				.target(this.getInitParameter("resturl") + "/getallmenus/3");
		List<Menu> b1 = target1.request(MediaType.APPLICATION_JSON_TYPE)
				.accept(MediaType.APPLICATION_JSON).get(genericType);
		renderRequest.setAttribute("Menus", b1);
	}

	// 跳转到创建页面
	public void tonew(ActionRequest renderRequest, ActionResponse renderResponse)
			throws IOException, PortletException {
		// 获取所欲二级及以上菜单内容
		ClientConfig config = new ClientConfig();
		config.register(JacksonFeature.class);
		Client client = ClientBuilder.newClient(config);
		System.out.println("dsdfddddddd");
		WebTarget target = client
				.target(this.getInitParameter("resturl") + "/getallmenus/2");
		GenericType<List<Menu>> genericType = new GenericType<List<Menu>>() {
		};
		List<Menu> b = target.request(MediaType.APPLICATION_JSON_TYPE)
				.accept(MediaType.APPLICATION_JSON).get(genericType);
		for(Menu e:b){
			System.out.println(e.getName());
		}
		renderRequest.setAttribute("Menus", b);
	}

	// 跳转到更新页面
	public void toupdate(ActionRequest renderRequest,
			ActionResponse renderResponse) throws IOException, PortletException {
		// 获取所欲二级及以上菜单内容
		ClientConfig config = new ClientConfig();
		config.register(JacksonFeature.class);
		Client client = ClientBuilder.newClient(config);
		WebTarget target = client
				.target(this.getInitParameter("resturl") + "/getallmenus/2");
		GenericType<List<Menu>> genericType = new GenericType<List<Menu>>() {
		};
		List<Menu> b = target.request(MediaType.APPLICATION_JSON_TYPE)
				.accept(MediaType.APPLICATION_JSON).get(genericType);
		renderRequest.setAttribute("Menus", b);
		// 继续调用服务获取需要的
		String id = renderRequest.getParameter("id");
		target = client
				.target(this.getInitParameter("resturl") + "/getmenuitem/"
						+ id);
		GenericType<Menu> GT = new GenericType<Menu>() {
		};
		Menu item = target.request(MediaType.APPLICATION_JSON_TYPE)
				.accept(MediaType.APPLICATION_JSON).get(GT);
		renderRequest.setAttribute("item", item);
	}

	// 调用后台服务存储数据
	public void addfunction(ActionRequest renderRequest,
			ActionResponse renderResponse) throws IOException, PortletException {
		try {
			ClientConfig config = new ClientConfig();
			config.register(JacksonFeature.class);
			Client client = ClientBuilder.newClient(config);
			String data = getrenderdata(renderRequest);
			WebTarget target = client
					.target(this.getInitParameter("resturl") + "/addfunction");
			Form form = new Form();
			form.param("data", data);
			boolean smtealarm = target
					.request(MediaType.APPLICATION_JSON_TYPE)
					.accept(MediaType.APPLICATION_JSON)
					.post(Entity.entity(form,
							MediaType.APPLICATION_FORM_URLENCODED),
							boolean.class);
			if (smtealarm == true) {
				System.out.println("成功新建");
			} else {
				System.out.println("新建失败");
			}

		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}

	// 将前台页面的数据组合成字符串传给后台使用
	private String getrenderdata(ActionRequest renderRequest) {
		Enumeration<String> list = renderRequest.getParameterNames();
		Map<String, String> json = new HashMap<String, String>();
		while (list.hasMoreElements()) {
			String name = list.nextElement();
			String value = renderRequest.getParameter(name).trim();
			// 将value中","后的连续空格去掉
			int i = 0;
			i = value.indexOf(",", i);
			while (i > -1) {
				i++;
				String left, right;
				left = value.substring(0, i);
				right = value.substring(i + 1).trim();
				value = left + right;
				i = value.indexOf(",", i);
			}
			json.put(name, value);
		}
		return json.toString();
	}

	// 调用后台服务更新数据
	public void updatefunction(ActionRequest renderRequest,
			ActionResponse renderResponse) throws IOException, PortletException {
		try {
			ClientConfig config = new ClientConfig();
			config.register(JacksonFeature.class);
			Client client = ClientBuilder.newClient(config);
			String data = getrenderdata(renderRequest);
			WebTarget target = client
					.target(this.getInitParameter("resturl") + "/updatefunction");
			Form form = new Form();
			System.out.println(data);
			form.param("data", data);
			boolean smtealarm = target
					.request(MediaType.APPLICATION_JSON_TYPE)
					.accept(MediaType.APPLICATION_JSON)
					.post(Entity.entity(form,
							MediaType.APPLICATION_FORM_URLENCODED),
							boolean.class);
			if (smtealarm == true) {
				System.out.println("更新成功");
			} else {
				System.out.println("更新失败");
			}

		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}

	// 删除某个功能
	public void deletefunction(ActionRequest renderRequest,
			ActionResponse renderResponse) {
		try{
			ClientConfig config = new ClientConfig();
			config.register(JacksonFeature.class);
			Client client = ClientBuilder.newClient(config);
			String id = renderRequest.getParameter("id");
			WebTarget target = client
					.target(this.getInitParameter("resturl") + "/deletefunction/" + id);
			GenericType<Boolean> genericType = new GenericType<Boolean>() {};
			Boolean b = target.request(MediaType.APPLICATION_JSON_TYPE)
				.accept(MediaType.APPLICATION_JSON).get(genericType);
			if(b){
				System.out.println("删除成功");
			}else{
				System.out.println("删除失败");
			}
		}catch(Exception e){
			System.out.println(e.getMessage());
		}
	}
}
