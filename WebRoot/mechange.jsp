<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="js/jquery.banner.revolution.min.js"></script>
<script type="text/javascript" src="js/banner.js"></script>
<script type="text/javascript" src="js/main.js"></script>

<link rel="stylesheet" type="text/css" href="css/style.css">
<!-- <link rel="stylesheet" type="text/css" href="css/main.css"> -->
 
</head>
<body>
<!-- <div class="logo">
			<img src="images/logo.png" />
			<p>早教网</p>
</div> -->
<div id="header">
		
		<div class="nav">
			<div class="logo">
				<img src="images/logo.png" />
				<a href="">早教网</a>
			</div>
			<ul class="nav-main">
	        	<li ><a href="index.html">首页</a></li>
				<li id="li-1"><a href="#">育儿信息</a><span></span></li>
				<li id="li-2"><a href="#">孕妈常识</a><span></span></li>
				<li id="li-3"><a href="toShare">用户分享</a><span></span></li>
				<li id="li-4"><a href="#">专家问答</a><span></span></li>
				<form action='logoff'>
				<li class="active"><input type="submit" value="退出登录"/></li>
				</form>
			</ul>
		
			<div id="box-1" class="hidden-box hidden-loc-index">
				<ul>
					<li>二孩课堂</li>
					<li>智力开发</li>
					<li>艺术培养</li>
	            	<li>亲子互动</li>
				</ul>
			</div>
			<div id="box-2" class="hidden-box hidden-loc-us">
				<ul>
					<li>备孕</li>
					<li>孕期</li>
					<li>分娩</li>
					<li>月子</li>
				</ul>
			</div>
			<div id="box-3" class="hidden-box hidden-loc-info">
				<ul>
					<li>明星宝宝</li>
					<li>经验夫妇</li>
					<li>热门评选</li>
					<li>摄影展览</li>
				</ul>
			</div>
	    	<div id="box-4" class="hidden-box hidden-loc-info box04">
				<ul>
					
					<li>专家论文</li>
					<li>专家经验</li>
				</ul>
			</div>
			<div class="search">
				<input type="text" />
				<input type="submit" value="搜索"/>
			</div>
		</div>
</div>


<div id="main">
	
	<div class="bg_1">


		<div class="bg_1_middle">
			<div class="f1">
				<div class="f1_header">
					<form action="changeIcon" method="post" enctype='multipart/form-data'>
						<div class="f1_header_pic">
							<img src="<% out.println(session.getAttribute("userIconUrl").toString()); %>">
						</div>
						<div class="fileup">
						<input type="file" name="file" size="50"/>
						<p>选择照片</p>
						</div>
						<input type="submit" value="上传"/>
						
						<div class="f1_header_text">
					</form>
				</div>
			</div>
				<div class="f1_content">
					<div class="list_1">
						<ul>
							<li><a href="me.jsp" class="active1">我的资料</a></li>
							<li><a href="#" class="select">我的相册</a></li>
							<li><a href="#">我的动态</a></li>
						</ul>
					</div>
					
					
					<form action = 'change'>
					<div class="f1_content_bottom">
						<div class="left1">
							<p>用户昵称</p>
							<p>性&nbsp;&nbsp;别</p>
							<p>个性签名</p>
							<p>宝宝年龄</p>
							<p>星&nbsp;&nbsp;座</p>
					</div>
					<div class="right">
							<input name="nickname" type="text" /><br>
							<label><input name="sex" type="radio" value="男" />男</label>
							<label><input name="sex" type="radio" value="女" />女</label><br/>
							<input name="intro" type="text" /><br>
							<input name="babyAge" type="text" /><br>
							<input name="star" type="text" /><br>

					</div>
				</div>
				</div>
				<div class="btn"><input  type="submit" value="完成" /></div>
			</div>
			
			</form>

		</div>
	
</div>

</div>
<div class="footer"></div>



</body>
</html>