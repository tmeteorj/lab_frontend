
var cut_nums = 0;
if(!$.browser.msie) cut_nums = 10;
var screen_h = parseInt(document.documentElement.clientHeight)-95-parseInt(cut_nums);
$("#tree").css("height",screen_h);

var site_url = 'SmartCity-portlet/admin/skin/';
evet();
window.onresize=function()
{
    var widths = document.body.scrollWidth-220;
    var heights = document.documentElement.clientHeight-98;
    $("#right").height(heights).width(widths);
    $("#admin_left").height((heights+28));
	$('.window_1').css('left', (widths + 380 - $('.window_1').width())+'px');
	var id = $('.selected').attr("name");
	get_menu(id,'tree',0);
}

window.onresize();

var speed = 1;
var px = 5;
$('#down').mouseover(function(){tree_down();MyMar=setInterval(tree_down,speed);});
$('#up').mouseover(function(){tree_up();MyMar=setInterval(tree_up,speed);});
$('#down').mouseout(function(){clearInterval(MyMar)});
$('#up').mouseout(function(){clearInterval(MyMar)});
function tree_up()
{
	var inner_height = $("#admin_left").height()-50;
	var height = $("#tree").height();
	var top = (height-inner_height)+inner_height*0.5;
	var nowtop = parseInt($("#tree_box").css('top').replace('px',''));
	if(-top < nowtop)
	{
		if(height > inner_height)
		{
			$("#tree_box").css('top',(parseInt($("#tree_box").css('top').replace('px',''))-px)+'px');
		}
	}
}
function tree_down()
{
	var nowtop = parseInt($("#tree_box").css('top').replace('px',''));
	if(nowtop<0)
	{
		$("#tree_box").css('top',(parseInt($("#tree_box").css('top').replace('px',''))+px)+'px');
	}
}
function resetf5(event) {
		event = event ? event : window.event;
		keycode = event.keyCode ? event.keyCode : event.charCode;
		if(keycode == 116 || (event.ctrlKey && keycode==82)) {
			parent.right.location.reload();
			if(document.all) {
				event.keyCode = 0;
				event.returnValue = false;
			} else {
					event.cancelBubble = true;
					event.preventDefault();
			}
		}
		if(keycode==113)
		{
			help_url();
			if(document.all) {
					event.keyCode = 0;
					event.returnValue = false;
			} else {
					event.cancelBubble = true;
					event.preventDefault();
			}
		}
}
var height = 200;/*��������չ���ĸ߶�*/

function show_help(url)
{
	if($('#help').height()!=height)
	{
		$('#right').height($('#right').height()-height);
		$('#help').height(height);
		$('.help_line_top').attr('class','help_line_bottom');
		if(url!=$('#help').attr('src'))
		{
			$('#help').attr('src',url);
		}
		$('#help_line').attr('src','SmartCity-portlet/admin/skin/images/bottom.gif');
	}
	else
	{
		$('#right').height($('#right').height()+height);
		$('#help').height(0);
		$('.help_line_bottom').attr('class','help_line_top');
		$('#help_line').attr('src','SmartCity-portlet/admin/skin/images/top.gif');
	}
}

function help_url()
{
	var url = $('#right').attr('src');
	var mod = url.match(/mod=([A-Za-z]+)/i);
	if(mod){
		mod = mod[1];
	}
	else
	{
		mod = '';
	}
	var file = url.match(/file=([A-Za-z0-9_]+)/i);
	if(file){
		file = file[1];
	}
	else
	{
		file = '';
	}
	var action = url.match(/action=([A-Za-z0-9_]+)/i);
	if(action)
	{
		action = action[1];
	}
	else
	{
		action = '';
	}
	var url = '?mod=phpcms&file=help&module='+mod+'&files='+file+'&actions='+action;
	if(url!=$('#help').attr('src') && $('#help').attr('src')!='')
	{
			$('#help').attr('src',url);
			if($('#help').height()!=height)
			{
				$('#right').height($('#right').height()-height);
				$('#help').height(height);
			}
	}
	else
	{
		show_help(url);
	}
}

if(document.documentElement.addEventListener) {
	document.documentElement.addEventListener('keydown', resetf5, false);
} else if(document.documentElement.attachEvent) {
	document.documentElement.attachEvent("onkeydown", resetf5);
}

function add_menu()
{
	show_div('add_menu');
	$('#my_menu_url').val($('#right').attr('src'));
	$('#my_menu_name').val(right.document.title);
}

function add_mymenu()
{
	var name = $('#my_menu_name').val();
	var url = $("#my_menu_url").val();
	if (name=='')
	{
		alert('�˵����Ʋ���Ϊ��');
		$("#my_menu_name").focus();
		return false;
	}
	if (url=='')
	{
		alert('�˵���ַ����Ϊ��');
		$("#my_menu_url").focus();
		return false;
	}
	$.get("?mod=phpcms&file=menu&action=add_mymenu", {name: name, url: url},function(data){
		if(data == 1){alert('�����ɹ�');}else {alert('����ʧ��');}
		add_menu();
	});
	return false;
}

function search_menu(){
	show_div('search_menu');
	$('#menu_key').phpcmstip('menu_key');
}


jQuery.fn.phpcmstip = function(option){
	$(this).keyup(function(){search_menu_key()})
}

function search_menu_key()
{
	var val = $('#menu_key').val();
	val = val.trim();
	if(val.length > 1)
	{
		$.getJSON('?mod=phpcms&file=menu&action=ajax_menu&time='+Math.random(), {menuname: val}, function(data){
		var divs = '';
		if(data){
		$.each(data, function(i, n){
		if(n.name!=''){
      	divs+="<div class=unselected_s onclick='show_div(\"search_menu\");click_menu(this)' onmouseout = $(this).attr('class','unselected_s') onmouseover = mouseover(this)><a href='"+n.url+"' target=\"right\">"+ n.name +"</a></div>";}
	});
		}
    $('#floor').html(divs);
    show_text()});
	}
}

String.prototype.trim = function()
{
    return this.replace(/(^\s*)|(\s*$)/g, "");
}

function show_text()
{
	$('#floor').width($("#menu_key").width() - 2);
}

function mouseover(sDiv)
{
    $("#floor").children("div").attr("class","unselected_s");
    $(sDiv).attr("class","selected_s");
}
var now_menu;
function show_div(obj)
{
	var arr = ['add_menu','search_menu','memo','msg_div'];

	$.each(arr,function(i,n){
		$("#"+n).slideUp("fast");
	});
	if(now_menu != obj)
	{
		$("#"+obj).slideDown("fast");
		now_menu = obj;
	}
	else
	{
		now_menu = '';
	}

}
function get_msg() 
{
	$.get('?mod=phpcms&file=index&action=get_msg&time='+Math.random(), function(data){
	if(data=='1') 
	{
		$('#msg_href').attr('href', 'go_right(\'message/inbox.php?userid=1\')');
		$('#msg_img').attr('src', 'SmartCity-portlet/admin/skin/images/icon_8.gif');	
		if($('#ismsgopen').val() == 0)
		{
			$('#new_msg').show();
		}
	}
	else 
	{
		$('#msg_href').attr('href', 'javascript:show_admin_lists()');
		$('#msg_img').attr('src', 'SmartCity-portlet/admin/skin/images/icon_4.gif');
		$('#new_msg').hide();
	}
	})
}

$('.btn_menu').children('a').click(function(){
	click_menu(this);
});
function click_menu(obj)
{
	if($(obj).attr('class')=='btn_menu_hover')
	{
		$(obj).attr('class','');
	}
	else
	{
		$('.btn_menu').children('a').attr('class','');
		$(obj).attr('class','btn_menu_hover');
	}
}

function click_topmenu(id)
{
	$("#tree_click").hide();
	$("#tree_bg").hide();
	$("#menu_name").html($('#menu_'+id).attr('alt'));
	$(".menu").removeClass("selected");
	$('#menu_'+id).addClass("selected");
    get_menu(id, 'tree', 0);
}

function get_memo(){
	$.get('?mod=phpcms&file=memo&action=get', function(data){$('#memo_mtime').html(data.substring(0, 19));$('#memo_data').val(data.substring(19));});
}

function set_memo(data){
	$.post("?mod=phpcms&file=memo&action=set", { data: data }, function(data){$("#memo_mtime").html(data);});
}
function parent_file_list(obj)
{
	right.parent_file_list(obj);
}

function show_admin_lists() 
{
	show_div('msg_div');
	$.getJSON("?mod=phpcms&file=index&action=show_admin_list", function (data){
		if(data) 
		{
			var str = '';
			var first = 0;
			$.each(data, function (i, n) 
			{
				var classes = 'group_1';
				if(i=="1") 
				{
					classes = 'group_2';
				}
				str += '<li class="group"><div class="'+classes+'" onclick="admin_list(\'adminlist_'+i+'\',this)" width="24" height="24"></div> <a href="?mod=message&file=sendmessage_role&roleid='+i+'" target="right" title="Ⱥ������Ϣ">'+n.name+'</a><font color="#cccccc">('+n.count+')</font></li>';
				if(n.users) 
				{
					$.each(n.users, function (s, d) 
					{
						var color = ' style="color:#cccccc"';
						var img = 'SmartCity-portlet/admin/skin/images/icon_gray.jpg';
						if(d.online==1) 
						{
							color = ' style="color:red"';
							img = 'SmartCity-portlet/admin/skin/images/icon_red.jpg';
						}
						var style = 'style="display:none;"';
						if(first == 0)
						{
							style = 'style="display:block;"';
						}
						str += '<li class="adminlist_'+i+'" '+style+'><img src="'+img+'"> <a href="message/send.php?userid='+d.userid+'" target="right"'+color+'>'+d.username+'</a></li>';
					})
				}
				first = 1;
			});
			$("#adminlist").html(str);
		}
		else 
		{
			alert('����������⣬�޷�������ù���Ա�б�');
		}
	});
}

function admin_list(d,obj) 
{
	if($("."+d).css('display')!='none') 
	{
		obj.className = 'group_1';
	}
	else 
	{
		obj.className = 'group_2';
	}
	$("."+d).toggle();
}

function get_msg() 
{
	$.get('?mod=phpcms&file=index&action=get_msg&time='+Math.random(), function(data){
	if(data=='1') 
	{
		$('#msg_href').attr('href', 'javascript:show_admin_lists();go_right(\'message/inbox.php?userid=1\')');
		$('#msg_img').attr('src', 'SmartCity-portlet/admin/skin/images/icon_8.gif');
		$('#new_msg').show();
	}
	else 
	{
		$('#msg_href').attr('href', 'javascript:show_admin_lists()');
		$('#msg_img').attr('src', 'SmartCity-portlet/admin/skin/images/icon_4.gif');
		$('#new_msg').hide();
	}
	})
}

function show_map() 
{
	$(".window_1").toggle();
}

function go_right(url) 
{
	$("#right").attr('src', url);
}
$('.window_1').jqDrag('.window_title');
