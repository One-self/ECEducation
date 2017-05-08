<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf8" %>
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
  <script type="text/javascript">
//  $(document).ready(function(){
//  	var dian = document.getElementById('dianji');
//  	var foot = document.getElementById('foot');
//  	dian.onclick=function(){
//  		if(foot.className=='foot')
// 		{
//  			foot.className='showto';
//  		}
//  		else
// 	{
// 			foot.className='foot';
// 		}
// 	}
// 	}
	
//  )
  </script>
 <script type="text/javascript">
// window.onload=function(){
// 	var le=0;
// 	$('#dianji').on('click',function(){
// 		if(le%2==0){
// 			$('<img id="tihuan" src="images/message1.png" width="25px" height="25px">').replaceAll('#dianji>img:first');
// 			le++;
// 		}
// 			else
// 	{
// 			$('<img id="pinlun" src="images/message.png" width="25px" height="25px">').replaceAll('#dianji>img:first');
// 			le++;
// 	}
// }
// 	)
// }

// </script>
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
	        	<li ><a href="index.jsp">首页</a></li>
				<li id="li-1"><a href="#">育儿信息</a><span></span></li>
				<li id="li-2"><a href="#">孕妈常识</a><span></span></li>
				<li id="li-3" class="active"><a href="toShare">用户分享</a><span></span></li>
				<li id="li-4"><a href="#">专家问答</a><span></span></li>
				<li><a href="#">个人中心</a></li>
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
					<li>专家论文</li>
					<li>专家经验</li>
				</ul>
			</div>
	    	<div id="box-4" class="hidden-box hidden-loc-info box04">
				<ul>
					<li>明星宝宝</li>
					<li>经验夫妇</li>
					<li>热门评选</li>
					<li>摄影展览</li>
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
		<div class="bg_1_left">
			<div class="bg_1_left_top">
				<ul>
					<li><a href="toShare" >全部分享</a></li>
					<li><a href="toAboutMe" >与我相关</a></li>
					<li><a href="toMyAttitude" class="active">我的赞</a></li>
				</ul>
			</div>
			<div class="bg_1_left_bottom">
				<ul>
					<li><a href="#">热门分享</a></li>
					<li><a href="#">摄影展览</a></li>
					<li><a href="#">热门评选</a></li>

				</ul> 
			</div>
		</div>


		<div class="bg_1_middle">
			<!-- <div class="bg_top">
				<div><img src="images/text.png"/></div>
				<div class="top_1">
					<textarea></textarea>
				</div> 
				<div class="top_2">
					<input type="submit" value="发布" />
				</div>
			</div>
 -->

			<div class="bg_bottom">
				<%
					List msgMaps = (List)(session.getAttribute("msgMaps"));
					for (int index=0; index<msgMaps.size(); ++index) {
						Object msgMapObj = msgMaps.get(index);
						Map msgMap = (Map)msgMapObj;
					%>
						<div class="share_content">
							<div class="share_content_1">
								<img src="<% out.println(msgMap.get("userIconUrl")); %>" width="120px" height="120px" />
							</div>
							<div class="share_content_2">
								<h3><% out.println(msgMap.get("nickname")); %></h3>
								<h6><% out.println(msgMap.get("create_time")); %></h6>
								<p><% out.println(msgMap.get("text")); %></p>
							</div>
							<div class="share_content_bottom">
								<div id="dianji"><img id="pinlun" src="images/message.png" width="25px" height="25px" /></div>
								<img src="images/dianzan.png" width="25px" height="25px" />
							</div> 
						</div>
				<% 	}
				%>
		</div>
		
	</div>
	<div class="bg_1_right">
			<div class="bg_1_right_top">
				<img src="images/king.png" width="40px" height="25px" class="img1"/>
				<img src="images/starbaby.png" width="150px" class="img2"/>
			</div>
			<div class="bg_1_right_bottom">
				<div class="bg_1_right_bottom_left">
					<div class="front_pic">
					<span>1</span><img src="images/1.jpg"/>
					</div>
					<div class="front_pic">
					<span>2</span><img src="images/2.jpg"/>
					</div>
					<div class="front_pic">
					<span>3</span><img src="images/3.jpg"/>
					</div>
					<div class="front_pic">
					<span>4</span><img src="images/4.jpg"/>
					</div>
					<div class="front_pic">
					<span>5</span><img src="images/5.jpg"/>
					</div>
				</div>
				<div class="bg_1_right_bottom_right">
					<ul>
						<li><a href="#">巴啦啦小魔仙</a></li>
						<li><a href="#">皮卡皮卡</a></li>
						<li><a href="#">我要成为海贼王</a></li>
						<li><a href="#">如果我是DJ</a></li>
						<li><a href="#">木有SSR</a></li>
					</ul>
				</div>
			</div>
		</div>
</div>

</div>
<div class="footer"></div>



</body>
</html>