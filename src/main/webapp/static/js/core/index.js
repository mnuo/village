$(function(){
	$.ajax({
		url: basePath+'/resource/tree',
		method: 'post',
		dataType: 'json',
		success: function(data){
			var parent = '';
			if(data != null && data != undefined){
				for(var i = 0; i < data.length; i ++){
					var li = '<ul><li class="contant-left-title-tail" onclick="javascripts: togger(this);" isShow="false"><i class="iconfont icon-icon" ></i> <span>'+data[i].name+'</span> </li>';
					for(var j = 0; j < data[i].child.length; j ++){
						li += '<li class="contant-left-li"> <a onclick="javascripts: showContent(this,\''+basePath+data[i].child[j].attributes+'\',\''+data[i].child[j].name+'\',\''+data[i].child[j].id+'\')" href="#" > <i class="iconfont icon-password '+data[i].child[j].iconSkin+'"></i> <span>'+data[i].child[j].name+'</span> </a> </li>';
					}
					parent += li + '</ul>';
				}
			}
			$('#left-menu').html(parent);
		}
	});
});
function togger(obj){
	if($(obj).attr('isShow')=='false'){
		$(obj).find('i').removeClass('icon-icon');
		$(obj).find('i').addClass('icon-control-arr');
		$(obj).parent().find('.contant-left-li').show();
		$(obj).attr('isShow','true');
	}else{
		$(obj).find('i').removeClass('icon-control-arr');
		$(obj).find('i').addClass('icon-icon');
		$(obj).parent().find('.contant-left-li').hide();
		$(obj).attr('isShow','false');
	}
}
function toggerLi(obj){
	if($(obj).parent().attr('shorcut') == 'false'){
		$(obj).parent().addClass('per-left-title-displaytext');
		$(obj).addClass('per-left-title-displaytext');
		$(obj).parent().attr('shorcut', 'true');
		$(obj).find('i').removeClass('icon-caidanmian');
		$(obj).find('i').addClass('icon-daohangcaidan-copy');
		$('.contant-left-li span,.contant-left-title-tail span').hide();
		$('#container').css('margin-left','50px');
	}else{
		$(obj).parent().removeClass('per-left-title-displaytext');
		$(obj).removeClass('per-left-title-displaytext');
		$(obj).parent().attr('shorcut', 'false');
		$(obj).find('i').addClass('icon-caidanmian');
		$(obj).find('i').removeClass('icon-daohangcaidan-copy');
		$('.contant-left-li span,.contant-left-title-tail span').show();
		$('#container').css('margin-left','180px');
	}
}
function showContent(obj, href, name, id){
	createTab(id, name, href);
}