<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf8" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link rel="stylesheet" href="css/main.css" />
<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="js/jquery.banner.revolution.min.js"></script>
<script type="text/javascript" src="js/banner.js"></script>
<script type="text/javascript" src="js/main.js"></script>
<script type="text/javascript">
	$(function(){
	$('#zzsc li').hover(function(){
		$('.text',this).stop().animate({
			height:'165px'
		});
	},function(){
		$('.text',this).stop().animate({
			height:'0'
		});
	});
});
$(function(){
	$(".section ul li .rsp").hide();
	$(".section	 ul li").hover(function(){
		$(this).find(".rsp").stop().fadeTo(500,0.5)
		$(this).find(".text").stop().animate({left:'0'}, {duration: 500})
	},function(){
		$(this).find(".rsp").stop().fadeTo(500,0)
		$(this).find(".text").stop().animate({left:'318'}, {duration: "fast"})
		$(this).find(".text").animate({left:'-318'}, {duration: 0})
	});
});
</script>
</head>
<body>

<div id="header">
	
	<div class="nav">
		<div class="logo">
			<img src="images/logo.png" />
			<a href="">早教网</a>
		</div>
		<ul class="nav-main">
        	<li class="active"><a href="#">首页</a></li>
			<li id="li-1"><a href="#">育儿信息</a><span></span></li>
			<li id="li-2"><a href="#">孕妈常识</a><span></span></li>
			<li id="li-3"><a href="toShare">用户分享</a><span></span></li>
			<li id="li-4"><a href="#">专家问答</a><span></span></li>
			<%
				Object emailAddressObj = session.getAttribute("emailAddress");
				if (emailAddressObj == null) { %>
					<li><a href="login.jsp">登录|注册</a></li>
			<%	} else { %>
					<li><a href="me.jsp">个人中心</a></li>
			<% 	}
			%>

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
	<div class="wrapper">
		<div class="fullwidthbanner-container">
			<div class="fullwidthbanner">
				<ul>
					<li data-transition="3dcurtain-horizontal" data-slotamount="15" data-masterspeed="300">
						<img src="images/slides/slide3.jpg" alt="" />									
					</li>
					<li data-transition="3dcurtain-vertical" data-slotamount="15" data-masterspeed="300" data-link="#">
						<img src="images/slides/slide5.jpg" alt="" />
					</li>
					<li data-transition="papercut" data-slotamount="15" data-masterspeed="300" data-link="#">
						<img src="images/slides/slide2.jpg" alt="" />
					</li>
					<li data-transition="turnoff" data-slotamount="15" data-masterspeed="300">
						<img src="images/slides/slide1.jpg" alt="" />
					</li>	
					<li data-transition="flyin" data-slotamount="15" data-masterspeed="300">
						<img src="images/slides/slide6.jpg" alt="" />	 
					</li>					
				</ul>
			</div>
		</div>
	</div>
<div id="mainbody">
	<div class="content1">
		<div class="content1_text">
			<p>摄影展览</p><hr/>
		</div>
		<div id="zzsc">
			<ul>
		    	<li>
		        	<a href="#"><img src="images/a.jpg"  width="360px" height="450px" /></a>
		        	<div class="text">
		            <b>嘟嘟嘴</b>
		            <p>听说下雨天和嘟嘟嘴更配哟！</p></div>    
		        </li>
		        <li>
		        	<a href="#"><img src="images/b.jpg"  width="360px" height="450px"/></a>
		        	<div class="text">
		            <b>起床气~</b>
		            <p>帅气的发型从起床开始，cheer up！</p></div>    
		        </li>
		        <li>
		        	<a href="#"><img src="images/c.jpg"  width="360px" height="450px"/></a>
		        	<div class="text">
		            <b>Bling-Bling</b>
		            <p>宝宝的眼里有小星星！</p></div>    
		        </li>
		       <!--  <li>
		        	<a href="#"><img src="images/d.jpg"  width="360px" height="450px"/></a>
		        	<div class="text">
		            <b>GE</b>
		            <p>我的世界为什么是绿色的？</p></div>    
		        </li> -->
		    </ul>
		</div>
			
	</div>
	<div class="content2">
		<div class="content2_text">
			<p>推荐专区</p><hr/>
		</div>
		<div class="content_all">
			<div class="content2_left">
				<div class="content2_left1">
					<img src="images/pic1.jpg" width="180px" height="150px" >
					<div class="somewords">
						<h2><a href="#">迎接二孩你准备好了么？</a></h2>
						<p><a href="#">如何处理两个孩子之间的关系？</a></p>
						<p><a href="#">高龄产妇如何进行护理？</a></p>
					</div>
				</div>
				<div class="content2_left1">
					<img src="images/pic2.jpg" width="180px" height="150px" >
					<div class="somewords">
						<h2><a href="#">宝宝不爱吃饭怎么办？</a></h2>
						<p><a href="#">诱发小儿厌食症的原因</a></p>
						<p><a href="#">宝宝消化不良怎么办？</a></p>
					</div>
				</div>
				<div class="content2_left1">
					<img src="images/pic3.jpg" width="180px" height="150px" >
					<div class="somewords">
						<h2><a href="#">孩子的智力开发有什么样的误区？</a></h2>
						<p><a href="#">提升孩子记忆能力的方法有哪些？</a></p>
						<p><a href="#">哪些英语动画可提高孩子阅读能力？</a></p>
					</div>
				</div>
			</div>
			<!-- <div class="content2_left">
				<div class="content2_left1">
					<img src="images/pic1.jpg" width="180px" height="150px" >
					<div class="somewords">
						<h2><a href="#">迎接二孩你准备好了么？</a></h2>
						<p><a href="#">如何处理两个孩子之间的关系？</a></p>
						<p><a href="#">高龄产妇如何进行护理？</a></p>
					</div>
				</div>
				<div class="content2_left1">
					<img src="images/pic2.jpg" width="180px" height="150px" >
					<div class="somewords">
						<h2><a href="#">宝宝不爱吃饭怎么办？</a></h2>
						<p><a href="#">诱发小儿厌食症的原因</a></p>
						<p><a href="#">宝宝消化不良怎么办？</a></p>
					</div>
				</div>
				<div class="content2_left1">
					<img src="images/pic3.jpg" width="180px" height="150px" >
					<div class="somewords">
						<h2><a href="#">孩子的智力开发有什么样的误区？</a></h2>
						<p><a href="#">提升孩子记忆能力的方法有哪些？</a></p>
						<p><a href="#">哪些英语动画可提高孩子阅读能力？</a></p>
					</div>
				</div>
			</div> -->
			<div class="content2_right">
				<div class="content2_right1">
					<img src="images/pic4.jpg" width="180px" height="150px" >
					<div class="somewords">
						<h2><a href="#">怎样为孩子挑选奶粉？</a></h2>
						<p><a href="#">不同年龄段的辅食</a></p>
						<p><a href="#">怀孕期间适合吃什么？</a></p>
					</div>
				</div>
				<div class="content2_right1">
					<img src="images/pic5.jpg" width="180px" height="150px" >
					<div class="somewords">
						<h2><a href="#">孩子咳嗽家长应该怎么做？</a></h2>
						<p><a href="#">孩子急症家长急救攻略</a></p>
						<p><a href="#">小孩高热惊厥紧急处理</a></p>
					</div>
				</div>
				<div class="content2_right1">
					<img src="images/pic6.jpg" width="180px" height="150px" >
					<div class="somewords">
						<h2><a href="#">家长应该怎样教育孩子？</a></h2>
						<p><a href="#">怎样教宝宝说话呢？</a></p>
						<p><a href="#">如何教导孩子会穿脱衣？</a></p>
					</div>
				</div>
			</div>
		</div>	
	</div>
	<!-- <div class="run">
		
		<marquee direction="left" loop="true" behavior="scroll" onmouseover="this.stop()" onmouseout="this.start()">
			<img src="images/run1.jpg" width="200px" height="100px">
			<img src="images/run2.jpg" width="200px" height="100px">
			<img src="images/run3.jpg" width="200px" height="100px">
			<img src="images/run4.jpg" width="200px" height="100px">
			<img src="images/run5.jpg" width="200px" height="100px"> -->
		<!-- 	<img src="img/5.png" width="200px">
			<img src="img/6.png" width="200px">
			<img src="img/11.png" width="200px">
			<img src="img/4.png" width="200px">
			<img src="img/1.png" width="200px">
			<img src="img/2.png" width="200px">
			<img src="img/3.png" width="200px">
			<img src="img/5.png" width="200px">
			<img src="img/6.png" width="200px">		 -->	
	<!-- 	</marquee>
	</div> -->
		
</div>
<div class="footer"></div>
</body>
</html>