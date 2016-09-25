package com.test;

import java.io.IOException;
import java.util.List;

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

import com.liferay.portal.kernel.util.ParamUtil;
import com.liferay.util.bridges.mvc.MVCPortlet;
import com.tju.cs.lab.front.mysql.entities.Menu;

/**
 * Portlet implementation class frame
 */
public class frame extends MVCPortlet {
 
	@Override
	public void render(RenderRequest renderRequest,
			RenderResponse renderResponse) throws PortletException, IOException {
		ClientConfig config = new ClientConfig();
		config.register(JacksonFeature.class);
		Client client = ClientBuilder.newClient(config);
		GenericType<List<Menu>> genericType = new GenericType<List<Menu>>() {};
		WebTarget target1 = client.target(this.getInitParameter("resturl") + "/gettopmenus");
		//Form form =new Form();
		List<Menu> b1 = target1
				.request(MediaType.APPLICATION_JSON_TYPE)
				.accept(MediaType.APPLICATION_JSON)
				.get(genericType);
				//.post(Entity.entity(form, MediaType.APPLICATION_FORM_URLENCODED),genericType);
		//System.out.println(b1);
		renderRequest.setAttribute("Menus", b1);
		renderRequest.setAttribute("menulisturl", this.getInitParameter("resturl") + "/getdownmenu/");
		super.render(renderRequest, renderResponse);
	}

}
