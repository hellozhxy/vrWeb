<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div class="col-sm-3 col-md-2 sidebar">
	<div class="top-navigation">
		<div class="t-menu">视频分类</div>
		<div class="t-img">
			<img src="images/lines.png" />
		</div>
		<div class="clearfix"></div>
		<!-- script-for-menu -->
		<script>
			$(".top-navigation").click(function() {
				$(".drop-navigation").slideToggle(300, function() {
					//TODO something
				});
			});
		</script>
		<!-- script-for-menu -->
	</div>
	<div class="drop-navigation drop-navigation">
		<ul class="nav nav-sidebar">
			<li class="active"><a href="<%=path%>index.do" ><span class="glyphicon glyphicon-home" aria-hidden="true"></span>蜂窝在线</a></li>
			<li><a href="<%=path%>index.do" ><span class="glyphicon glyphicon-music" aria-hidden="true"></span>IMAX视频</a></li>
			<li><a href="#" ><span class="glyphicon glyphicon-film" aria-hidden="true"></span>3D源视频</a></li>
			<li><a href="#" ><span class="glyphicon glyphicon-home glyphicon-magnet" aria-hidden="true"></span>全景视频</a></li>
		</ul>
		<div class="side-bottom">
			<div class="side-bottom-icons">
				<ul class="nav2">
					<li><a href="http://weibo.com" class="facebook" target="_blank"></a></li>
					<li><a href="http://weibo.com" class="facebook twitter" target="_blank"></a></li>
					<li><a href="http://weibo.com" class="facebook chrome" target="_blank"></a></li>
					<li><a href="http://weibo.com" class="facebook dribbble" target="_blank"></a></li>
				</ul>
			</div>
			<div class="copyright">
				<p>Copyright &copy;蜂群在线(2016) All rights reserved</p>
			</div>
		</div>
	</div>
</div>