<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
 <div style="width:100%; height: 30px;background:#eee;position:absolute;top:50px;">
    <div style=" width: 100%; height: 30px; overflow: hidden; position: relative;" class="inner-tab">
    <ul class="ul-bar" id="navigation" style="position:absolute;">
        <li class="li-item li-tag"><div class="title-tag tab-active" onclick="tabClick(this,'#welcome')"><span class="bar-item-title">首页</span><i class="bar-item-closed"></i></div></li>
       <!--  <li class="li-item li-tag"><div class="title-tag" onclick="tabClick(this,'#bbb')"><span class="bar-item-title">aaaaaaaaaaaaaaa</span><i class="bar-item-closed" onclick="remove(this);"></i></div></li>
    --> </ul>
    <div class="tab-left" onclick="tabLeftClick();"></div>
    <div class="tab-right" onclick="tabRightClick();"></div>
</div>
</div>
<script type="text/javascript">
function remove(obj, id){
	$('#'+id).remove();
	event.stopPropagation();
	$('#tab_'+id).prev().children().click();
	$(obj).parent().parent().remove();
}
function createTab(id,name, href){
	if($('#tab_'+id).length == 0){
		$('.title-tag').removeClass('tab-active');
		$('.wrap-container>div').hide();
		$('#navigation').append('<li class="li-item li-tag" id="tab_'+id+'"><div class="title-tag tab-active" onclick="tabClick(this,\'#'+id+'\')"><span class="bar-item-title">'+name+'</span><i class="bar-item-closed" onclick="remove(this,\''+id+'\');"></i></div></li>');
		$('.wrap-container>div').hide();
		$('.wrap-container').append('<div class="child-wrap content-right" id="'+id+'"><iframe src="'+href+'" width="100%" height="100%"></iframe></div>');
	}else{
		$('.title-tag').removeClass('tab-active');
		$('#tab_'+id + ' .title-tag').addClass('tab-active');
		$('.wrap-container>div').hide();
		$('#'+id).show();
		$('#'+id +' iframe')[0].src=src;
	}
	assertTabMove($('#tab_'+id)[0]);
}

function tabClick(obj, id){
		$('.title-tag').removeClass('tab-active');
		$(obj).addClass('tab-active');
		$('.wrap-container>div').hide();
		$(id).show();
		assertTabMove($(obj).parent()[0]);
}

function tabLeftClick(){
	var left = $('#navigation').position().left;
	var licount = $('#navigation>li').length;
	var liwidth = $('#navigation>li').eq(0).width();
	var litotalwidth = licount * liwidth;
	var innertabwidth = $('.inner-tab').width();
	var activeNum = Number((innertabwidth-60)/liwidth);
	
	if(litotalwidth > innertabwidth-30){
		$('#navigation').css('left',(0-(activeNum-1)*liwidth)+'px');
	}
}
function tabRightClick(){
	$('#navigation').css('left','0px');
}

function assertTabMove(obj){
	if($('#navigation').position().left>=0){
		if($(obj).position().left + 180 > $('.inner-tab').width()){
			 tabLeftClick();
		}
	}else{
		if($(obj).position().left + $('#navigation').position().left < 0){
			tabRightClick();
		}
	}
}
</script>