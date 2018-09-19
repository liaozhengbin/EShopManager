var isValidateEmail=false;
var isValidateUsername=false;
var isValidatePwd=false;
var isValidatePwd2=false;
var isValidatePhone=false;
var isValidateAnswer=false;
var isValidateAuthcode=false;

//数字验证
var IntRegex=/^[1-9]\d*$/;
//性别验证
var SexRegex=/^[男女]$/;
//数字验证
var floatRegex=/^[-\+]?\d+\.?\d+$/;
//名字验证
var NameRegex=/^[\u0391-\uFFE5\w]+[\w\d]*$/;
//时间验证
var DateTimeRegex=/^(\d{1,4})(-|\/)(\d{1,2})\2(\d{1,2}) (\d{1,2}):(\d{1,2}):(\d{1,2})$/;
//生日验证YYYY-MM-DD
var BirthdayRegex=/^((((19|20)\d{2})-(0?[13-9]|1[012])-(0?[1-9]|[12]\d|30))|(((19|20)\d{2})-(0?[13578]|1[02])-31)|(((19|20)\d{2})-0?2-(0?[1-9]|1\d|2[0-8]))|((((19|20)([13579][26]|[2468][048]|0[48]))|(2000))-0?2-29))$/;
//身份证验证
var IcnoRegex=/^\d{6}(18|19|20)?\d{2}(0[1-9]|1[012])(0[1-9]|[12]\d|3[01])\d{3}(\d|X|x)$/;
//年龄验证验证
var AgeRegex=/^[1-9]\d{0,2}$/;
//电话验证
var PhoneRegex=/^1[1-9]\d{9}$/;
//ID验证
var IDRegex=/^[1-9]\d{0,9}$/;
//中文验证
var ChineseRegex=/^[\u0391-\uFFE5]+$/;
//日期验证yyyy-mm-dd格式
var DateRegex=/^[12]\d{2}[-\\/](0[1-9]|1[0-2])[-\\/](0[1-9]|[1-2][0-9]|3[01])$/;
//邮箱验证
var EmailRegex=/^(\d|\w|_){1,}@(\d|\w|_){1,}\.\w{2,3}$/;
//QQ验证
var QQRegex=/^[1-9]\d{5,14}$/;
//密码验证
var PwdRegex=/^.{6,20}$/;
//图片验证
var ImageRegex=/^.+\.(png|jpg|jpeg|gif)$/;

$(function(){

	//加载市列表
	$("#province").change(function(){
		var data={
				provinceId:this.value
		};
		$.post(GetServerUrl("accounts/cities"),data,function(response){
			var jsonData=$.parseJSON(response);
			
			var html="<option value=''>--请选择市--</option>";
			for (i in response) {
				var obj = response[i];
				html += "<option value='" + obj.cityid + "'>"
						+ obj.city + "</option>";
			}
			$("#city").html(html);
		});
	});
	
	//加载区列表
	$("#city").change(function(){
		var data={
				cityId:this.value
		};
		$.post(GetServerUrl("accounts/areas"),data,function(response){
			var html="<option value=''>--请选择区/县--</option>";
			for (i in response) {
				var obj = response[i];
				html += "<option value='" + obj.areaid + "'>"
						+ obj.area + "</option>";
			}
			$("#area").html(html);
		});
	});
	
	
	/*
	 * 表单验证
	 */
	$("#email").blur(function(){
		var value=this.value;
		var testEmail=/^\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/;
		
		if(value==''){
			isValidateEmail=false;
			$(this).attr("data-content","邮箱不能为空");
			$(this).popover("show");
		}else if(!testEmail.test(value)){
			isValidateEmail=false;
			$(this).attr("data-content","邮箱格式不正确");
			$(this).popover("show");
		}else{
			var verifyurl="checkemail.do";
    		var verifydata={
    				email:value
    		};
    		$.post(verifyurl,verifydata,function(response){
//    			var result=$.parseJSON(response);
    			var result=response;
    			if(result.status==500){
    				isValidateEmail=false;
    				$("#email").attr("data-content","邮箱已存在");
    				$("#email").popover("show");
    			}else{
    				isValidateEmail=true;
    				$("#email").popover("destroy");
    			}
    		});
		}
	});
	
	$("#username").blur(function(){
		var value=this.value;
		if(value==''){
			isValidateUsername=false;
			$(this).attr("data-content","用户名不能为空");
			$(this).popover("show");
		}else if(value.length<6){
			isValidateUsername=false;
			$(this).attr("data-content","用户名长度最少6位");
			$(this).popover("show");
		}else{
			var verifyurl="checkname.do";
    		var verifydata={
    				username:value
    		};
    		$.post(verifyurl,verifydata,function(response){
    			var result=$.parseJSON(response);
    			if(result.status==500){
    				isValidateUsername=false;
    				$("#username").attr("data-content","用户名已存在");
    				$("#username").popover("show");
    			}else{
    				isValidateUsername=true;
    				$("#username").popover("destroy");
    			}
    		});
		}
	});
	
	$("#password").blur(function(){
		var value=this.value;
		if(value==''){
			isValidatePwd=false;
			$(this).attr("data-content","密码不能为空");
			$(this).popover("show");
		}else if(value.length<6){
			isValidatePwd=false;
			$(this).attr("data-content","密码长度最少6位");
			$(this).popover("show");
		}else{
			isValidatePwd=true;
			$(this).popover("destroy");
		}
	});
	
	$("#password2").blur(function(){
		var value=this.value;
		if(value==''){
			isValidatePwd2=false;
			$(this).attr("data-content","确认密码不能为空");
			$(this).popover("show");
		}else if(value!=$("#password").val()){
			isValidatePwd2=false;
			$(this).attr("data-content","确认密码不一致");
			$(this).popover("show");
		}else{
			isValidatePwd2=true;
			$(this).popover("destroy");
		}
	});
	
	$("#phone").blur(function(){
		var value=this.value;
		var testPhone=/^1[3|4|5|7|8]\d{9}$/;
		
		if(value==''){
			isValidatePhone=false;
			$(this).attr("data-content","手机号码不能为空");
			$(this).popover("show");
		}else if(!testPhone.test(value)){
			isValidatePhone=false;
			$(this).attr("data-content","手机格式不正确");
			$(this).popover("show");
		}else{
			isValidatePhone=true;
			$(this).popover("destroy");
		}
	});
	
	$("#answer").blur(function(){
		var value=this.value;
		if(value==''){
			isValidateAnswer=false;
			$(this).attr("data-content","答案不能为空");
			$(this).popover("show");
		}else{
			isValidateAnswer=true;
			$(this).popover("destroy");
		}
	});

});

//验证学生信息修改
$(function(){
	//提交表单
	$("#uploadForm").submit(function(){
	
	var stu_id=$("input[name=stu_id]").val();
	var stu_email=$("#email").val();
	var user_name=$("#username").val();
	var stu_phone=$("#phone").val();
	var stu_head=$("#userHead").val();

	if(stu_head&&!regVertify(stu_head, ImageRegex)){
		show_err_msg("图片格式不正确");
		return false;
	}
	if(stu_id&&!regVertify(stu_id, IntRegex)){
	show_err_msg("this system hao a error");
	return false;
	}
	if(stu_email&&!regVertify(stu_email, NameRegex)){
		show_err_msg("名字不合法");
		return false;
	}
	if($("#province").val()==''){
		show_err_msg("请选择省份");
		return false;
	}
	if($("#city").val()==''){
		show_err_msg("请选择市");
		return false;
	}
	if($("#area").val()==''){
		show_err_msg("请选择区/县");
		return false;
	}
	return true;
	});
});

/**
 * 信息验证
 * @param val 要验证的值
 * @param regex 进行验证的正则表达式
 */
function regVertify(val,regex){
	if(regex.test(val)){
		return true;
	}else{
		return false
	}
}