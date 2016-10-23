<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
<title>视频详情</title>
<%@include file="../meta.jsp" %>
<%@include file="../include.jsp" %>

<!--引入引导js 动态下载播放器-->
<script language="javascript" type="text/javascript" src="<%=path %>sdk/web/player/UtoVRPlayerGuide.js"></script>
<script type="text/javascript">
/*播放器参数配置   <%=basePath %>sdk/web/960p.mp4*/
var vpath = "${video.url}";
var params = {
    container: document.getElementById("pano"),
    name: "videoDetail",
    dragDirectionMode: true,
    dragMode: true,
    scenesArr: [
        //todo:注意修改视频路径，需要保证播放页面与视频属于同一域名下
        {
        	sceneId: "v1", 
        	sceneName: "赛车", 
        	sceneFilePath:vpath , 
        	sceneType: "Video",
        	isVideoAutoPlay:true
        }
    ],
    //播放器不支持全景播放回调
    errorCallBack: function (e) {
        console.log("错误状态：" + e);
    },
    //浏览器不支持全屏回调
    fsCallBack: function (status, playObj) {
        alert("浏览器不支持全屏！");
    }
};
/*初始化开始*/
$(function(){
	initLoad(params);
});
</script>

</head>
  <body>
	<%@include file="../top.jsp" %>
    <%@include file="../left.jsp" %>
        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
			<div class="show-top-grids">
				<div class="col-sm-8 single-left">
					<div class="song">
						<div class="song-info">
							<h3>${video.title}</h3>	
					</div>
						<div class="video-grid" style="width: 800px;height: 500px; margin:10px auto;" id="pano">
							
						</div>
					</div>
					<div class="song-grid-right">
						<div class="share">
							<h4>分享</h4>
							<ul>
								<li><a href="#" class="icon fb-icon">Facebook</a></li>
								<li><a href="#" class="icon dribbble-icon">Dribbble</a></li>
								<li><a href="#" class="icon twitter-icon">Twitter</a></li>
								<li><a href="#" class="icon pinterest-icon">Pinterest</a></li>
								<li><a href="#" class="icon whatsapp-icon">Whatsapp</a></li>
								<li><a href="#" class="icon like">Like</a></li>
								<li><a href="#" class="icon comment-icon">Comments</a></li>
								<li class="view">200 Views</li>
							</ul>
						</div>
					</div>
					<div class="clearfix"> </div>
					<div class="published">
							<script>
								$(document).ready(function () {
									size_li = $("#myList li").size();
									x=1;
									$('#myList li:lt('+x+')').show();
									$('#loadMore').click(function () {
										x= (x+1 <= size_li) ? x+1 : size_li;
										$('#myList li:lt('+x+')').show();
									});
									$('#showLess').click(function () {
										x=(x-1<0) ? 1 : x-1;
										$('#myList li').not(':lt('+x+')').hide();
									});
								});
							</script>
							<div class="load_more">	
								<ul id="myList">
									<li>
										<h4>Published on 15 June 2015</h4>
										<p>Nullam fringilla sagittis tortor ut rhoncus. Nam vel ultricies erat, vel sodales leo. Maecenas pellentesque, est suscipit laoreet tincidunt, ipsum tortor vestibulum leo, ac dignissim diam velit id tellus. Morbi luctus velit quis semper egestas. Nam condimentum sem eget ex iaculis bibendum. Nam tortor felis, commodo faucibus sollicitudin ac, luctus a turpis. Donec congue pretium nisl, sed fringilla tellus tempus in.</p>
									</li>
									<li>
										<p>Nullam fringilla sagittis tortor ut rhoncus. Nam vel ultricies erat, vel sodales leo. Maecenas pellentesque, est suscipit laoreet tincidunt, ipsum tortor vestibulum leo, ac dignissim diam velit id tellus. Morbi luctus velit quis semper egestas. Nam condimentum sem eget ex iaculis bibendum. Nam tortor felis, commodo faucibus sollicitudin ac, luctus a turpis. Donec congue pretium nisl, sed fringilla tellus tempus in.</p>
										<p>Nullam fringilla sagittis tortor ut rhoncus. Nam vel ultricies erat, vel sodales leo. Maecenas pellentesque, est suscipit laoreet tincidunt, ipsum tortor vestibulum leo, ac dignissim diam velit id tellus. Morbi luctus velit quis semper egestas. Nam condimentum sem eget ex iaculis bibendum. Nam tortor felis, commodo faucibus sollicitudin ac, luctus a turpis. Donec congue pretium nisl, sed fringilla tellus tempus in.</p>
										<div class="load-grids">
											<div class="load-grid">
												<p>Category</p>
											</div>
											<div class="load-grid">
												<a href="movies.html">Entertainment</a>
											</div>
											<div class="clearfix"> </div>
										</div>
									</li>
								</ul>
							</div>
					</div>
					<%--
					<%@include file="single-comment.jsp" %>
					 --%>
				</div>
				<%@include file="single-similarity.jsp" %>
				<div class="clearfix"> </div>
			</div>
			<!-- footer -->
			<%@ include file="../footer.jsp"%>
			<!-- //footer -->
		</div>
		<div class="clearfix"> </div>
		<div class="drop-menu">
			<ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu4">
			  <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Regular link</a></li>
			  <li role="presentation" class="disabled"><a role="menuitem" tabindex="-1" href="#">Disabled link</a></li>
			  <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Another link</a></li>
			</ul>
		</div>
    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <%@include file="../bottom.jsp"%>
    <!-- Just to make our placeholder images work. Don't actually copy the next line! -->
  </body>
</html>