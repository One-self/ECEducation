<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=utf8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">

<HTML xmlns="http://www.w3.org/1999/xhtml">
<HEAD>
<META content="IE=11.0000" http-equiv="X-UA-Compatible">

<META http-equiv="Content-Type" content="text/html; charset=utf-8">
<TITLE>登录页面</TITLE>
<SCRIPT src="js/jquery-1.9.1.min.js" type="text/javascript"></SCRIPT>

<STYLE>
body {
	background: rgb(250, 219, 217);
	font-family: "Helvetica Neue", "Hiragino Sans GB", "Microsoft YaHei",
		"\9ED1\4F53", Arial, sans-serif;
	color: #222;
	font-size: 12px;
}

* {
	padding: 0px;
	margin: 0px;
}

.top_div {
	background: #C1DFDC;
	width: 100%;
	height: 400px;
}

.top_div a {
	color: #000;
	margin-left: 50px;
	margin-top: 30px;
	position: absolute;
	font-size: 20px;
}

.top_div a:hover {
	color: #fff;
}

.ipt {
	border: 1px solid #d3d3d3;
	padding: 10px 10px;
	width: 290px;
	border-radius: 4px;
	padding-left: 35px;
	-webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
	box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
	-webkit-transition: border-color ease-in-out .15s, -webkit-box-shadow
		ease-in-out .15s;
	-o-transition: border-color ease-in-out .15s, box-shadow ease-in-out
		.15s;
	transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s
}

.red {
	border: 1px solid red;
	padding: 10px 10px;
	width: 290px;
	border-radius: 4px;
	padding-left: 35px;
	-webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
	box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
	-webkit-transition: border-color ease-in-out .15s, -webkit-box-shadow
		ease-in-out .15s;
	-o-transition: border-color ease-in-out .15s, box-shadow ease-in-out
		.15s;
	transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s
}

.ipt:focus {
	border-color: #66afe9;
	outline: 0;
	-webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075), 0 0 8px
		rgba(102, 175, 233, .6);
	box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075), 0 0 8px
		rgba(102, 175, 233, .6)
}

.u_logo {
	background: url("images/username.png") no-repeat;
	padding: 10px 10px;
	position: absolute;
	top: 54px;
	left: 40px;
}

.p_logo {
	background: url("images/password.png") no-repeat;
	padding: 10px 10px;
	position: absolute;
	top: 14px;
	left: 40px;
}

a {
	text-decoration: none;
}

.tou {
	background: url("images/tou.png") no-repeat;
	width: 97px;
	height: 92px;
	position: absolute;
	top: -87px;
	left: 140px;
}

.left_hand {
	background: url("images/left_hand.png") no-repeat;
	width: 32px;
	height: 37px;
	position: absolute;
	top: -38px;
	left: 150px;
}

.right_hand {
	background: url("images/right_hand.png") no-repeat;
	width: 32px;
	height: 37px;
	position: absolute;
	top: -38px;
	right: -64px;
}

.initial_left_hand {
	background: url("images/hand.png") no-repeat;
	width: 30px;
	height: 20px;
	position: absolute;
	top: -12px;
	left: 100px;
}

.initial_right_hand {
	background: url("images/hand.png") no-repeat;
	width: 30px;
	height: 20px;
	position: absolute;
	top: -12px;
	right: -112px;
}

.left_handing {
	background: url("images/left-handing.png") no-repeat;
	width: 30px;
	height: 20px;
	position: absolute;
	top: -24px;
	left: 139px;
}

.right_handinging {
	background: url("images/right_handing.png") no-repeat;
	width: 30px;
	height: 20px;
	position: absolute;
	top: -21px;
	left: 210px;
}

.tishi {
	color: red;
	display: none;
	padding-left: 35px;
	text-align: left;
}

.show {
	color: red;
	padding-left: 35px;
	text-align: left;
}
input[type='submit']{
	margin-top: -10px;
	width: 60px;
	height:30px;
	font-size: 14px;
	background-color:rgb(172,217,195);
	border-style: none;
	color: #000;
	border-radius: 10px;


}
</STYLE>

<SCRIPT type="text/javascript">
	$(function() {
		//得到焦点
		$("#password").focus(function() {
			$("#left_hand").animate({
				left : "150",
				top : " -38"
			}, {
				step : function() {
					if (parseInt($("#left_hand").css("left")) > 140) {
						$("#left_hand").attr("class", "left_hand");
					}
				}
			}, 2000);
			$("#right_hand").animate({
				right : "-64",
				top : "-38px"
			}, {
				step : function() {
					if (parseInt($("#right_hand").css("right")) > -70) {
						$("#right_hand").attr("class", "right_hand");
					}
				}
			}, 2000);
		});
		//失去焦点
		$("#password").blur(function() {
			$("#left_hand").attr("class", "initial_left_hand");
			$("#left_hand").attr("style", "left:100px;top:-12px;");
			$("#right_hand").attr("class", "initial_right_hand");
			$("#right_hand").attr("style", "right:-112px;top:-12px");
		});
	});
</SCRIPT>

<script type="text/javascript">
	function checkEmail() {
		var p = document.getElementById('tishi');
		var email1 = document.getElementById("email");
		var email = document.getElementById("email").value;
		var pattern = /^([\.a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+(\.[a-zA-Z0-9_-])+/;
		if (!pattern.test(email)) {
			email1.className = "red";
			p.className = 'show';
		}
	}

	function checkPassw1() {
		var p = document.getElementById('tishi1');
		var passw1 = document.getElementById("password");
		var passw = document.getElementById("password").value;
		if (passw == "") {
			passw1.className = "red";
			p.className = 'show';
		}
		if (passw.length<6||passw.length>11) {
			passw1.className = "red";
			p.className = 'show';
		}
	}

	function check() {
		var check = document.getElementById('email');
		var check1 = document.getElementById('password');
		if (check.className == 'red' || ckeck1.className == 'red') {
			alert('信息有错误！无法登录！');
		}
	}
</script>

<META name="GENERATOR" content="MSHTML 11.00.9600.17496">
</HEAD>
<BODY>
	<DIV class="top_div">
		<a href="index.jsp">返回首页</a>
	</DIV>
	<DIV
		style="background: rgb(255, 255, 255); margin: -100px auto auto; border: 1px solid rgb(231, 231, 231); border-image: none; width: 400px; height: 215px; text-align: center;">
		<DIV style="width: 165px; height: 96px; position: absolute;">
			<DIV class="tou"></DIV>
			<DIV class="initial_left_hand" id="left_hand"></DIV>
			<DIV class="initial_right_hand" id="right_hand"></DIV>
		</DIV>
		<P style="padding: 30px 0px 10px; position: relative;">
			<SPAN class="u_logo"></SPAN>
		<form action='login'>
			<INPUT class="ipt" id="email" type="text" placeholder="请输入邮箱"
				value="" onblur="checkEmail()" name='emailAddress' />
			<p class="tishi" id="tishi">邮箱格式错误</p>
			</P>
			<P style="position: relative;">
				<SPAN class="p_logo"></SPAN> <INPUT class="ipt" id="password"
					type="password" placeholder="请输入密码(6~11位)" value=""
					onblur="checkPassw1()" name='password' />
			<p class="tishi" id="tishi1">密码格式错误</p>
			</P>
			<DIV
				style="height: 50px; line-height: 50px; margin-top: 30px; border-top-color: rgb(231, 231, 231); border-top-width: 1px; border-top-style: solid;">
				<P style="margin: 0px 35px 20px 45px;">
					<SPAN style="float: left;"><A
						style="color: rgb(204, 204, 204);" href="#">忘记密码?</A>
					</SPAN> <SPAN style="float: right;">
					<A style="color: rgb(204, 204, 204); margin-right: 10px;"
						href="register.jsp" target="_self">注册</A>
						<input type="submit" value="登录"/>
		</form>
		</SPAN>
		</P>
	</DIV>
	</DIV>
	<div style="text-align:center;"></div>
</BODY>
</HTML>
