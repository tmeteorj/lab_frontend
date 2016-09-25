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
			setallfuncations(renderRequest);
		}
		super.render(renderRequest, renderResponse);
	}

	// ����ݿ��ȡ���в˵����ݣ����洢�����
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

	// ��ת������ҳ��
	public void tonew(ActionRequest renderRequest, ActionResponse renderResponse)
			throws IOException, PortletException {
		// ��ȡ������������ϲ˵�����
		ClientConfig config = new ClientConfig();
		config.register(JacksonFeature.class);
		Client client = ClientBuilder.newClient(config);
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

	// ��ת������ҳ��
	public void toupdate(ActionRequest renderRequest,
			ActionResponse renderResponse) throws IOException, PortletException {
		// ��ȡ������������ϲ˵�����
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
		// ������÷����ȡ��Ҫ��
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

	// ���ú�̨����洢���
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
				System.out.println("�ɹ��½�");
			} else {
				System.out.println("�½�ʧ��");
			}

		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}

	// ��ǰ̨ҳ��������ϳ��ַ����̨ʹ��
	private String getrenderdata(ActionRequest renderRequest) {
		Enumeration<String> list = renderRequest.getParameterNames();
		Map<String, String> json = new HashMap<String, String>();
		while (list.hasMoreElements()) {
			String name = list.nextElement();
			String value = renderRequest.getParameter(name).trim();
			// ��value��","�������ո�ȥ��
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

	// ���ú�̨����������
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
				System.out.println("���³ɹ�");
			} else {
				System.out.println("����ʧ��");
			}

		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}

	// ɾ��ĳ������
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
				System.out.println("ɾ��ɹ�");
			}else{
				System.out.println("ɾ��ʧ��");
			}
		}catch(Exception e){
			System.out.println(e.getMessage());
		}
	}
}
