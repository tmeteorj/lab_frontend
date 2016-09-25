package com.test.manage;

import java.io.IOException;
import java.util.List;

import javax.portlet.ActionRequest;
import javax.portlet.ActionResponse;
import javax.portlet.PortletException;
import javax.ws.rs.client.Client;
import javax.ws.rs.client.ClientBuilder;
import javax.ws.rs.client.WebTarget;
import javax.ws.rs.core.GenericType;
import javax.ws.rs.core.MediaType;

import org.glassfish.jersey.client.ClientConfig;
import org.glassfish.jersey.jackson.JacksonFeature;

import com.liferay.util.bridges.mvc.MVCPortlet;
import com.tju.cs.lab.front.mysql.entities.Menu;

/**
 * Portlet implementation class datasetmanage
 */
public class datasetmanage extends MVCPortlet {
	public void toedit(ActionRequest renderRequest,
			ActionResponse renderResponse) throws IOException, PortletException {
	}

}
