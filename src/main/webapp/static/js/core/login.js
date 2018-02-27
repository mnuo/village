var basePath = "/village";
function submitForm(){
	var data = {};
	data[$('#csrf').attr('name')] = $('#csrf').val();
	data.username=$('#username').val();
	data.password=$('#password').val();
	data.captcha=$('#captcha').val();
        $.ajax({
          type: 'post',
          url:  basePath + '/login',
          data: data,
        }).success(function (data) {
        	window.location.href = basePath + '/index';
          //成功提交
        }).fail(function (jqXHR, textStatus, errorThrown) {
          //错误信息
        	alert('错误信息...');
        });
}
function clearForm(){
    $('#loginform').form('clear');
}
//回车登录
function enterlogin(){
    if (event.keyCode == 13){
        event.returnValue=false;
        event.cancel = true;
        submitForm();
    }
}
$(function(){
	 // 验证码
    $("#captchaImg").click(function() {
        var $this = $(this);
        var url = $this.data("src") + new Date().getTime();
        $this.attr("src", url);
    });
});