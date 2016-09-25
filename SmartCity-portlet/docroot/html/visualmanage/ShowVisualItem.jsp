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
<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=vYqY1p0N8melwlfnLqBwlVmy	"></script>
<body >
		<div>	
			<div id="map"> </div>	
		</div>
	</body>
</html>
<script language="JavaScript">
	// 百度地图API功能
	var map = new BMap.Map("map");
	var point = new BMap.Point(117.205, 39.138);
	map.centerAndZoom(point, 11);
	// 编写自定义函数,创建标注
	function addMarker(point,laber){
	  var marker = new BMap.Marker(point);
	  marker.setTitle(laber);
	  map.addOverlay(marker);
	}
	// 随机向地图添加25个标注
	var bounds = map.getBounds();
	var sw = bounds.getSouthWest();
	var ne = bounds.getNorthEast();
	var lngSpan = Math.abs(sw.lng - ne.lng);
	var latSpan = Math.abs(ne.lat - sw.lat);
	 
		addMarker(new BMap.Point(117.71478,38.961809 ),'中国银行天津水木天成支行');
        
		 
		addMarker(new BMap.Point(117.71478,38.961809 ),'中国银行天津本溪路支行');
        
		 
		addMarker(new BMap.Point(117.195724,39.135848 ),'中国银行天津泰达城支行');
        
		 
		addMarker(new BMap.Point(117.195724,39.135848 ),'中国银行天津中嘉支行');
        
		 
		addMarker(new BMap.Point(117.179911,39.184588 ),'中国银行天津先春园支行');
        
		 
		addMarker(new BMap.Point(117.157879,39.161373 ),'中国银行天津立交桥支行');
        
		 
		addMarker(new BMap.Point(117.167524,39.17566 ),'中国银行天津洪湖雅园支行');
        
		 
		addMarker(new BMap.Point(117.15682,39.148077 ),'中国银行天津水畔花园支行');
        
		 
		addMarker(new BMap.Point(117.708647,39.026291 ),'中国银行天津大胡同支行');
        
		 
		addMarker(new BMap.Point(117.165441,39.152183 ),'中国银行天津红桥支行');
        
		 
		addMarker(new BMap.Point(117.506999,39.048683 ),'中国银行天津无瑕支行');
        
		 
		addMarker(new BMap.Point(117.504507,39.04635 ),'中国银行天津津钢支行');
        
		 
		addMarker(new BMap.Point(116.944254,38.937769 ),'中国银行天津静海新城支行');
        
		 
		addMarker(new BMap.Point(117.314598,39.093767 ),'中国银行天津东方红路支行');
        
		 
		addMarker(new BMap.Point(116.929464,38.94503 ),'中国银行天津大邱庄支行');
        
		 
		addMarker(new BMap.Point(116.929464,38.94503 ),'中国银行天津静海支行');
        
		 
		addMarker(new BMap.Point(117.156288,39.078196 ),'中国银行天津燕山路支行');
        
		 
		addMarker(new BMap.Point(117.71478,38.961809 ),'中国银行天津兴华大街支行');
        
		 
		addMarker(new BMap.Point(117.230476,39.110587 ),'中国银行天津文昌街支行');
        
		 
		addMarker(new BMap.Point(117.419719,40.041041 ),'中国银行天津商贸街支行');
        
		 
		addMarker(new BMap.Point(117.708647,39.026291 ),'中国银行天津鼓楼支行');
        
		 
		addMarker(new BMap.Point(117.708647,39.026291 ),'中国银行天津邦均支行');
        
		 
		addMarker(new BMap.Point(117.156288,39.078196 ),'中国银行天津西关支行');
        
		 
		addMarker(new BMap.Point(117.426505,40.05654 ),'中国银行天津蓟县支行');
        
		 
		addMarker(new BMap.Point(117.790236,39.217706 ),'中国银行天津栖霞街支行');
        
		 
		addMarker(new BMap.Point(117.162969,39.116137 ),'中国银行天津新开南路支行');
        
		 
		addMarker(new BMap.Point(117.82187,39.260006 ),'中国银行天津东风路支行');
        
		 
		addMarker(new BMap.Point(117.815723,39.254404 ),'中国银行天津汉沽支行');
        
		 
		addMarker(new BMap.Point(117.318483,39.721872 ),'中国银行天津津围支行');
        
		 
		addMarker(new BMap.Point(117.311805,39.715892 ),'中国银行天津宝苑支行');
        
		 
		addMarker(new BMap.Point(117.302819,39.702626 ),'中国银行天津开元支行');
        
		 
		addMarker(new BMap.Point(117.302819,39.702626 ),'中国银行天津凯旋支行');
        
		 
		addMarker(new BMap.Point(117.30974,39.729433 ),'中国银行天津宝坻支行');
        
		 
		addMarker(new BMap.Point(117.708647,39.026291 ),'中国银行天津中信广场支行');
        
		 
		addMarker(new BMap.Point(117.066421,39.410742 ),'中国银行天津泉州路支行');
        
		 
		addMarker(new BMap.Point(117.71478,38.961809 ),'中国银行天津振华西道支行');
        
		 
		addMarker(new BMap.Point(116.915129,39.185259 ),'中国银行天津王庆坨支行');
        
		 
		addMarker(new BMap.Point(117.71478,38.961809 ),'中国银行天津武清开发区支行');
        
		 
		addMarker(new BMap.Point(117.060782,39.39214 ),'中国银行天津武清支行');
        
		 
		addMarker(new BMap.Point(117.708647,39.026291 ),'中国银行天津凌奥支行');
        
		 
		addMarker(new BMap.Point(117.229734,39.034861 ),'中国银行天津梅江康城支行');
        
		 
		addMarker(new BMap.Point(117.128555,39.102468 ),'中国银行天津高新支行');
        
		 
		addMarker(new BMap.Point(117.156288,39.078196 ),'中国银行天津阳光新城支行');
        
		 
		addMarker(new BMap.Point(117.232272,39.057719 ),'中国银行天津梅江蓝水支行');
        
		 
		addMarker(new BMap.Point(117.214166,39.215358 ),'中国银行天津华苑支行');
        
		 
		addMarker(new BMap.Point(117.403139,39.155274 ),'中国银行天津杨柳青支行');
        
		 
		addMarker(new BMap.Point(117.715151,39.035477 ),'中国银行天津西营门支行');
        
		 
		addMarker(new BMap.Point(117.403139,39.155274 ),'中国银行天津津兰支行');
        
		 
		addMarker(new BMap.Point(117.214166,39.215358 ),'中国银行天津中北支行');
        
		 
		addMarker(new BMap.Point(117.23654,39.024736 ),'中国银行天津西青支行');
        
		 
		addMarker(new BMap.Point(117.275833,39.123541 ),'中国银行天津第六大道支行');
        
		 
		addMarker(new BMap.Point(117.214166,39.215358 ),'中国银行天津华明支行');
        
		 
		addMarker(new BMap.Point(117.314598,39.093767 ),'中国银行天津福东里支行');
        
		 
		addMarker(new BMap.Point(117.314598,39.093767 ),'中国银行天津利津路支行');
        
		 
		addMarker(new BMap.Point(117.668325,39.033109 ),'中国银行天津东丽开发区支行');
        
		 
		addMarker(new BMap.Point(117.354396,39.126668 ),'中国银行天津机场支行');
        
		 
		addMarker(new BMap.Point(117.321882,39.095328 ),'中国银行天津东丽支行');
        
		 
		addMarker(new BMap.Point(117.171556,39.192586 ),'中国银行天津天辰大厦支行');
        
		 
		addMarker(new BMap.Point(117.127565,39.208865 ),'中国银行天津瑞景支行');
        
		 
		addMarker(new BMap.Point(117.214166,39.215358 ),'中国银行天津北辰科技园区支行');
        
		 
		addMarker(new BMap.Point(117.214166,39.215358 ),'中国银行天津果园东路支行');
        
		 
		addMarker(new BMap.Point(117.171556,39.192586 ),'中国银行天津安达路支行');
        
		 
		addMarker(new BMap.Point(117.214166,39.215358 ),'中国银行天津北辰开发区支行');
        
		 
		addMarker(new BMap.Point(117.227544,39.198605 ),'中国银行天津宜兴埠支行');
        
		 
		addMarker(new BMap.Point(117.13855,39.227984 ),'中国银行天津北辰支行');
        
		 
		addMarker(new BMap.Point(117.395627,38.994394 ),'中国银行天津津沽路支行');
        
		 
		addMarker(new BMap.Point(117.321534,39.054854 ),'中国银行天津双港支行');
        
		 
		addMarker(new BMap.Point(117.29884,39.06204 ),'中国银行天津海天馨苑支行');
        
		 
		addMarker(new BMap.Point(117.504763,38.996063 ),'中国银行天津葛沽支行');
        
		 
		addMarker(new BMap.Point(117.444705,38.921778 ),'中国银行天津小站支行');
        
		 
		addMarker(new BMap.Point(117.389225,38.993055 ),'中国银行天津津南支行');
        
		 
		addMarker(new BMap.Point(117.26239,39.149427 ),'中国银行天津卫国道支行');
        
		 
		addMarker(new BMap.Point(117.25748,39.135841 ),'中国银行天津成林道支行');
        
		 
		addMarker(new BMap.Point(117.224817,39.146733 ),'中国银行天津新开路支行');
        
		 
		addMarker(new BMap.Point(117.254213,39.116445 ),'中国银行天津大桥道支行');
        
		 
		addMarker(new BMap.Point(117.235198,39.147293 ),'中国银行天津华昌街支行');
        
		 
		addMarker(new BMap.Point(117.283751,39.162079 ),'中国银行天津太阳城支行');
        
		 
		addMarker(new BMap.Point(117.165441,39.152183 ),'中国银行天津唐口新村支行');
        
		 
		addMarker(new BMap.Point(117.272836,39.112603 ),'中国银行天津中心北道支行');
        
		 
		addMarker(new BMap.Point(117.229443,39.164394 ),'中国银行天津万东路支行');
        
		 
		addMarker(new BMap.Point(117.195724,39.135848 ),'中国银行天津常州道支行');
        
		 
		addMarker(new BMap.Point(117.403139,39.155274 ),'中国银行天津万达支行');
        
		 
		addMarker(new BMap.Point(117.708647,39.026291 ),'中国银行天津盘山道支行');
        
		 
		addMarker(new BMap.Point(117.258537,39.099304 ),'中国银行天津富民路支行');
        
		 
		addMarker(new BMap.Point(117.23102,39.127221 ),'中国银行天津十一经路支行');
        
		 
		addMarker(new BMap.Point(117.708647,39.026291 ),'中国银行天津中山门支行');
        
		 
		addMarker(new BMap.Point(117.235198,39.147293 ),'中国银行天津真理道支行');
        
		 
		addMarker(new BMap.Point(117.314598,39.093767 ),'中国银行天津天山路支行');
        
		 
		addMarker(new BMap.Point(117.221576,39.146747 ),'中国银行天津华兴街支行');
        
		 
		addMarker(new BMap.Point(117.234139,39.129873 ),'中国银行天津河东支行');
        
		 
		addMarker(new BMap.Point(117.214166,39.215358 ),'中国银行天津北城街支行');
        
		 
		addMarker(new BMap.Point(117.259605,39.190314 ),'中国银行天津金钟支行');
        
		 
		addMarker(new BMap.Point(117.214166,39.215358 ),'中国银行天津万科新城支行');
        
		 
		addMarker(new BMap.Point(117.171556,39.192586 ),'中国银行天津乐金电子支行');
        
		 
		addMarker(new BMap.Point(117.71478,38.961809 ),'中国银行天津胜利路支行');
        
		 
		addMarker(new BMap.Point(117.214166,39.215358 ),'中国银行天津建国道支行');
        
		 
		addMarker(new BMap.Point(117.20369,39.165045 ),'中国银行天津三马路支行');
        
		 
		addMarker(new BMap.Point(117.71478,38.961809 ),'中国银行天津黄纬路支行');
        
		 
		addMarker(new BMap.Point(117.203244,39.160037 ),'中国银行天津昆纬路支行');
        
		 
		addMarker(new BMap.Point(117.71478,38.961809 ),'中国银行天津建昌道支行');
        
		 
		addMarker(new BMap.Point(117.668325,39.033109 ),'中国银行天津北宁支行');
        
		 
		addMarker(new BMap.Point(117.229443,39.164394 ),'中国银行天津桂江道支行');
        
		 
		addMarker(new BMap.Point(117.71478,38.961809 ),'中国银行天津中山路支行');
        
		 
		addMarker(new BMap.Point(117.229443,39.164394 ),'中国银行天津王串场支行');
        
		 
		addMarker(new BMap.Point(117.203244,39.160037 ),'中国银行天津江都路支行');
        
		 
		addMarker(new BMap.Point(117.71478,38.961809 ),'中国银行天津河北支行');
        
		 
		addMarker(new BMap.Point(117.090702,39.131944 ),'中国银行天津中北大道支行');
        
		 
		addMarker(new BMap.Point(117.162969,39.116137 ),'中国银行天津迎水道支行');
        
		 
		addMarker(new BMap.Point(117.137071,39.137429 ),'中国银行天津长江道支行');
        
		 
		addMarker(new BMap.Point(117.156288,39.078196 ),'中国银行天津奥城支行');
        
		 
		addMarker(new BMap.Point(117.188086,39.144005 ),'中国银行天津西马路支行');
        
		 
		addMarker(new BMap.Point(117.195724,39.135848 ),'中国银行天津西广开支行');
        
		 
		addMarker(new BMap.Point(117.162969,39.116137 ),'中国银行天津信美道支行');
        
		 
		addMarker(new BMap.Point(117.181113,39.126598 ),'中国银行天津万德庄支行');
        
		 
		addMarker(new BMap.Point(117.156288,39.078196 ),'中国银行天津五金城支行');
        
		 
		addMarker(new BMap.Point(117.156288,39.078196 ),'中国银行天津山海天支行');
        
		 
		addMarker(new BMap.Point(117.314598,39.093767 ),'中国银行天津晋宁道支行');
        
		 
		addMarker(new BMap.Point(117.162969,39.116137 ),'中国银行天津白堤路支行');
        
		 
		addMarker(new BMap.Point(117.203701,39.078455 ),'中国银行天津立达博兰支行');
        
		 
		addMarker(new BMap.Point(117.708647,39.026291 ),'中国银行天津林苑道支行');
        
		 
		addMarker(new BMap.Point(117.162969,39.116137 ),'中国银行天津馨名园支行');
        
		 
		addMarker(new BMap.Point(117.144837,39.130181 ),'中国银行天津咸阳路支行');
        
		 
		addMarker(new BMap.Point(117.162969,39.116137 ),'中国银行天津士英路支行');
        
		 
		addMarker(new BMap.Point(117.162969,39.116137 ),'中国银行天津科贸街支行');
        
		 
		addMarker(new BMap.Point(117.162969,39.116137 ),'中国银行天津中新大厦支行');
        
		 
		addMarker(new BMap.Point(117.229443,39.164394 ),'中国银行天津黄河道支行');
        
		 
		addMarker(new BMap.Point(117.169858,39.119132 ),'中国银行天津南丰路支行');
        
		 
		addMarker(new BMap.Point(117.187142,39.137128 ),'中国银行天津南开支行');
        
		 
		addMarker(new BMap.Point(117.215373,39.122316 ),'中国银行天津津玉大厦支行');
        
		 
		addMarker(new BMap.Point(117.403139,39.155274 ),'中国银行天津海逸支行');
        
		 
		addMarker(new BMap.Point(117.708647,39.026291 ),'中国银行天津嘉茂广场支行');
        
		 
		addMarker(new BMap.Point(117.314598,39.093767 ),'中国银行天津广东路支行');
        
		 
		addMarker(new BMap.Point(117.708647,39.026291 ),'中国银行天津爱国道支行');
        
		 
		addMarker(new BMap.Point(117.708647,39.026291 ),'中国银行天津宾西路支行');
        
		 
		addMarker(new BMap.Point(117.230148,39.104316 ),'中国银行天津南楼支行');
        
		 
		addMarker(new BMap.Point(117.229443,39.164394 ),'中国银行天津滨湖路支行');
        
		 
		addMarker(new BMap.Point(117.217616,39.086675 ),'中国银行天津友谊路支行');
        
		 
		addMarker(new BMap.Point(117.192932,39.101047 ),'中国银行天津气象台路支行');
        
		 
		addMarker(new BMap.Point(117.263016,39.064604 ),'中国银行天津枫林路支行');
        
		 
		addMarker(new BMap.Point(117.220847,39.110825 ),'中国银行天津九龙路支行');
        
		 
		addMarker(new BMap.Point(117.244685,39.09334 ),'中国银行天津大沽南路支行');
        
		 
		addMarker(new BMap.Point(117.232272,39.057719 ),'中国银行天津水晶城支行');
        
		 
		addMarker(new BMap.Point(117.230476,39.110587 ),'中国银行天津琼州道支行');
        
		 
		addMarker(new BMap.Point(117.225031,39.100641 ),'中国银行天津利民道支行');
        
		 
		addMarker(new BMap.Point(117.71478,38.961809 ),'中国银行天津文化中心支行');
        
		 
		addMarker(new BMap.Point(117.195724,39.135848 ),'中国银行天津宾水道支行');
        
		 
		addMarker(new BMap.Point(117.272562,39.069737 ),'中国银行天津曲江路支行');
        
		 
		addMarker(new BMap.Point(117.195724,39.135848 ),'中国银行天津西康路支行');
        
		 
		addMarker(new BMap.Point(117.238405,39.101726 ),'中国银行天津河西支行');
        
		 
		addMarker(new BMap.Point(117.215373,39.122316 ),'中国银行天津国际大厦支行');
        
		 
		addMarker(new BMap.Point(117.187082,39.120007 ),'中国银行天津鞍山道支行');
        
		 
		addMarker(new BMap.Point(117.215373,39.122316 ),'中国银行天津诚基支行');
        
		 
		addMarker(new BMap.Point(117.192159,39.117872 ),'中国银行天津万科支行');
        
		 
		addMarker(new BMap.Point(117.71478,38.961809 ),'中国银行天津新华路支行');
        
		 
		addMarker(new BMap.Point(117.195724,39.135848 ),'中国银行天津犀地支行');
        
		 
		addMarker(new BMap.Point(117.192236,39.110566 ),'中国银行天津同安道支行');
        
		 
		addMarker(new BMap.Point(117.20513,39.119825 ),'中国银行天津岳阳道支行');
        
		 
		addMarker(new BMap.Point(117.192086,39.140794 ),'中国银行天津多伦道支行');
        
		 
		addMarker(new BMap.Point(117.195724,39.135848 ),'中国银行天津福安支行');
        
		 
		addMarker(new BMap.Point(117.224968,39.124625 ),'中国银行天津大光明支行');
        
		 
		addMarker(new BMap.Point(117.195724,39.135848 ),'中国银行天津重庆道支行');
        
		 
		addMarker(new BMap.Point(117.192086,39.140794 ),'中国银行天津保定道支行');
        
		 
		addMarker(new BMap.Point(117.215373,39.122316 ),'中国银行天津锦中大厦支行');
        
		 
		addMarker(new BMap.Point(117.192086,39.140794 ),'中国银行天津荣业大街支行');
        
		 
		addMarker(new BMap.Point(117.207117,39.138017 ),'中国银行天津远洋广场支行');
        
		 
		addMarker(new BMap.Point(117.226982,39.118992 ),'中国银行天津金皇大厦支行');
        
		 
		addMarker(new BMap.Point(117.708647,39.026291 ),'中国银行天津吉利支行');
        
		 
		addMarker(new BMap.Point(117.403139,39.155274 ),'中国银行天津和平支行');
        
		 
		addMarker(new BMap.Point(117.459664,38.845103 ),'中国银行天津西苑支行');
        
		 
		addMarker(new BMap.Point(117.195724,39.135848 ),'中国银行天津大港开发区支行');
        
		 
		addMarker(new BMap.Point(117.481853,38.722362 ),'中国银行天津南苑支行');
        
		 
		addMarker(new BMap.Point(117.481853,38.722362 ),'中国银行天津大港三号院支行');
        
		 
		addMarker(new BMap.Point(117.700839,39.011105 ),'中国银行天津石化路支行');
        
		 
		addMarker(new BMap.Point(117.195724,39.135848 ),'中国银行天津大港支行');
        
		 
		addMarker(new BMap.Point(117.214166,39.215358 ),'中国银行天津渤龙湖支行');
        
		 
		addMarker(new BMap.Point(117.403139,39.155274 ),'中国银行天津融和广场支行');
        
		 
		addMarker(new BMap.Point(117.700839,39.011105 ),'中国银行天津保税区分行');
        
		 
		addMarker(new BMap.Point(117.668325,39.033109 ),'中国银行天津河北路支行');
        
		 
		addMarker(new BMap.Point(117.705219,39.019074 ),'中国银行天津春风路支行');
        
		 
		addMarker(new BMap.Point(117.229443,39.164394 ),'中国银行天津东方名居支行');
        
		 
		addMarker(new BMap.Point(117.650505,39.029094 ),'中国银行天津福建西路支行');
        
		 
		addMarker(new BMap.Point(117.708647,39.026291 ),'中国银行天津市民广场支行');
        
		 
		addMarker(new BMap.Point(117.671928,39.060506 ),'中国银行天津宝山道支行');
        
		 
		addMarker(new BMap.Point(117.71478,38.961809 ),'中国银行天津散货交易中心支行');
        
		 
		addMarker(new BMap.Point(117.23654,39.024736 ),'中国银行天津开发西区支行');
        
		 
		addMarker(new BMap.Point(117.658052,39.046764 ),'中国银行天津广州道支行');
        
		 
		addMarker(new BMap.Point(117.707693,39.036479 ),'中国银行天津芳林园支行');
        
		 
		addMarker(new BMap.Point(117.162969,39.116137 ),'中国银行天津腾飞路支行');
        
		 
		addMarker(new BMap.Point(117.700839,39.011105 ),'中国银行天津东疆保税港区支行');
        
		 
		addMarker(new BMap.Point(117.71478,38.961809 ),'中国银行天津港务局大楼支行');
        
		 
		addMarker(new BMap.Point(117.71478,38.961809 ),'中国银行天津石油新村支行');
        
		 
		addMarker(new BMap.Point(117.66875,39.02222 ),'中国银行天津上海道支行');
        
		 
		addMarker(new BMap.Point(117.195724,39.135848 ),'中国银行天津浙江路支行');
        
		 
		addMarker(new BMap.Point(117.65544,39.025738 ),'中国银行天津永顺里支行');
        
		 
		addMarker(new BMap.Point(117.664354,39.042014 ),'中国银行天津杭州道支行');
        
		 
		addMarker(new BMap.Point(117.700968,39.011091 ),'中国银行天津新港支行');
        
		 
		addMarker(new BMap.Point(117.700839,39.011105 ),'中国银行天津海关大楼支行');
        
		 
		addMarker(new BMap.Point(117.67668,39.021204 ),'中国银行天津解放路支行');
        
		 
		addMarker(new BMap.Point(117.195724,39.135848 ),'中国银行天津海洋支行');
        
		 
		addMarker(new BMap.Point(117.700839,39.011105 ),'中国银行天津泰达大街支行');
        
		 
		addMarker(new BMap.Point(117.715151,39.035477 ),'中国银行天津滨海分行');
        
		 
		addMarker(new BMap.Point(117.090702,39.131944 ),'中国银行天津汇盈支行');
        
		 
		addMarker(new BMap.Point(117.838562,39.335865 ),'中国银行天津宁河支行');
        
		 
		addMarker(new BMap.Point(117.210753,39.112372 ),'中国银行天津市分行');
        
		</script>