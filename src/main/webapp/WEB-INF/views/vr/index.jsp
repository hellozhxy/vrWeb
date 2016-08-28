<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
<title>蜂群在线平台</title>
<%@include file="../meta.jsp"%>
<%@include file="../include.jsp"%>

<script type="application/x-javascript">
	
addEventListener("load", 
		function() { 
			setTimeout(hideURLbar, 0); 
		}, false); 
function hideURLbar(){ 
	window.scrollTo(0,1); 
} 

</script>
</head>
<body>
	<%@include file="../top.jsp"%>
	<%@include file="../left.jsp"%>

	<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
		<%@include file="index-main-data.jsp"%>
		<!-- footer -->
		<%@ include file="../footer.jsp"%>
		<!-- //footer -->
	</div>
	<div class="clearfix"></div>
	<div class="drop-menu">
		<ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu4">
			<li role="presentation"><a role="menuitem" tabindex="-1"
				href="#">Regular link</a></li>
			<li role="presentation" class="disabled"><a role="menuitem"
				tabindex="-1" href="#">Disabled link</a></li>
			<li role="presentation"><a role="menuitem" tabindex="-1"
				href="#">Another link</a></li>
		</ul>
	</div>
	<!-- Bootstrap core JavaScript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<%@include file="../bottom.jsp"%>
	<!-- Just to make our placeholder images work. Don't actually copy the next line! -->
</body>
</html>