<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="main-grids">
	<div class="top-grids">
		<div class="recommended-info">
			<h3>${list1Title}</h3>
		</div>
		<c:forEach var="s" items="${list1}">
		<div class="col-md-4 resent-grid recommended-grid slider-top-grids">
			<div class="resent-grid-img recommended-grid-img">
				<a href="<%=path%>detail.do?vid=${s.sid}"><img src="images/t1.jpg" alt="" /></a>
				<div class="time">
					<p>3:04</p>
				</div>
				<div class="clck">
					<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
				</div>
			</div>
			<div class="resent-grid-info recommended-grid-info">
				<h3>
					<a href="<%=path%>detail.do?vid=${s.sid}" class="title title-info">${s.title }</a>
				</h3>
				<ul>
					<li><p class="author author-info">
							<a href="#" class="author">John Maniya</a>
						</p></li>
					<li class="right-list"><p class="views views-info">播放${s.playTimes }次</p></li>
				</ul>
			</div>
		</div>
		</c:forEach>
		<div class="clearfix"></div>
	</div>
	<div class="recommended">
		<div class="recommended-grids">
			<div class="recommended-info">
				<h3>${list2Title}</h3>
			</div>
			<script src="js/responsiveslides.min.js"></script>
			<script>
				// You can also use "$(window).load(function() {"
				$(function() {
					// Slideshow 4
					$("#slider3").responsiveSlides(
							{
								auto : true,
								pager : false,
								nav : true,
								speed : 500,
								namespace : "callbacks",
								before : function() {
									$('.events').append(
											"<li>before event fired.</li>");
								},
								after : function() {
									$('.events').append(
											"<li>after event fired.</li>");
								}
							});

				});
			</script>
			<div id="top" class="callbacks_container">
				<ul class="rslides" id="slider3">
					<li>
						<div class="animated-grids">
							<c:forEach var="s" items="${list1}">
							<div class="col-md-3 resent-grid recommended-grid slider-first">
								<div class="resent-grid-img recommended-grid-img">
									<a href="<%=path%>detail.do?vid=${s.sid}"><img src="images/c.jpg" alt="" /></a>
									<div class="time small-time slider-time">
										<p>7:34</p>
									</div>
									<div class="clck small-clck">
										<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
									</div>
								</div>
								<div class="resent-grid-info recommended-grid-info">
									<h5>
										<a href="<%=path%>detail.do?vid=${s.sid}" class="title">${s.title }</a>
									</h5>
									<div class="slid-bottom-grids">
										<div class="slid-bottom-grid">
											<p class="author author-info">
												<a href="#" class="author">John Maniya</a>
											</p>
										</div>
										<div class="slid-bottom-grid slid-bottom-right">
											<p class="views views-info">播放${s.playTimes }次</p>
										</div>
										<div class="clearfix"></div>
									</div>
								</div>
							</div>
							</c:forEach>
							<div class="clearfix"></div>
						</div>
					</li>
					<li>
						<div class="animated-grids">
							<div class="col-md-3 resent-grid recommended-grid slider-first">
								<div class="resent-grid-img recommended-grid-img">
									<a href="<%=path%>detail.do?vid=${s.sid}"><img src="images/c2.jpg"
										alt="" /></a>
									<div class="time small-time slider-time">
										<p>4:42</p>
									</div>
									<div class="clck small-clck">
										<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
									</div>
								</div>
								<div class="resent-grid-info recommended-grid-info">
									<h5>
										<a href="<%=path%>detail.do?vid=${s.sid}" class="title">Varius sit sed
											viverra viverra nullam nullam interdum metus</a>
									</h5>
									<div class="slid-bottom-grids">
										<div class="slid-bottom-grid">
											<p class="author author-info">
												<a href="#" class="author">John Maniya</a>
											</p>
										</div>
										<div class="slid-bottom-grid slid-bottom-right">
											<p class="views views-info">2,114,200 views</p>
										</div>
										<div class="clearfix"></div>
									</div>
								</div>
							</div>
							<div class="col-md-3 resent-grid recommended-grid slider-first">
								<div class="resent-grid-img recommended-grid-img">
									<a href="<%=path%>detail.do?vid=${s.sid}"><img src="images/c3.jpg"
										alt="" /></a>
									<div class="time small-time slider-time">
										<p>6:14</p>
									</div>
									<div class="clck small-clck">
										<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
									</div>
								</div>
								<div class="resent-grid-info recommended-grid-info">
									<h5>
										<a href="<%=path%>detail.do?vid=${s.sid}" class="title">Nullam interdum
											metus viverra nullam varius sit sed viverra</a>
									</h5>
									<div class="slid-bottom-grids">
										<div class="slid-bottom-grid">
											<p class="author author-info">
												<a href="#" class="author">John Maniya</a>
											</p>
										</div>
										<div class="slid-bottom-grid slid-bottom-right">
											<p class="views views-info">2,114,200 views</p>
										</div>
										<div class="clearfix"></div>
									</div>
								</div>
							</div>
							<div class="col-md-3 resent-grid recommended-grid slider-first">
								<div class="resent-grid-img recommended-grid-img">
									<a href="<%=path%>detail.do?vid=${s.sid}"><img src="images/c.jpg" alt="" /></a>
									<div class="time small-time slider-time">
										<p>2:34</p>
									</div>
									<div class="clck small-clck">
										<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
									</div>
								</div>
								<div class="resent-grid-info recommended-grid-info">
									<h5>
										<a href="<%=path%>detail.do?vid=${s.sid}" class="title">varius sit sed
											viverra viverra nullam Nullam interdum metus</a>
									</h5>
									<div class="slid-bottom-grids">
										<div class="slid-bottom-grid">
											<p class="author author-info">
												<a href="#" class="author">John Maniya</a>
											</p>
										</div>
										<div class="slid-bottom-grid slid-bottom-right">
											<p class="views views-info">2,114,200 views</p>
										</div>
										<div class="clearfix"></div>
									</div>
								</div>
							</div>
							<div class="col-md-3 resent-grid recommended-grid slider-first">
								<div class="resent-grid-img recommended-grid-img">
									<a href="<%=path%>detail.do?vid=${s.sid}"><img src="images/c3.jpg"
										alt="" /></a>
									<div class="time small-time slider-time">
										<p>5:12</p>
									</div>
									<div class="clck small-clck">
										<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
									</div>
								</div>
								<div class="resent-grid-info recommended-grid-info">
									<h5>
										<a href="<%=path%>detail.do?vid=${s.sid}" class="title">Nullam interdum
											metus viverra nullam varius sit sed viverra</a>
									</h5>
									<div class="slid-bottom-grids">
										<div class="slid-bottom-grid">
											<p class="author author-info">
												<a href="#" class="author">John Maniya</a>
											</p>
										</div>
										<div class="slid-bottom-grid slid-bottom-right">
											<p class="views views-info">1,14,200 views</p>
										</div>
										<div class="clearfix"></div>
									</div>
								</div>
							</div>
							<div class="clearfix"></div>
						</div>
					</li>
					<li>
						<div class="animated-grids">
							<div class="col-md-3 resent-grid recommended-grid slider-first">
								<div class="resent-grid-img recommended-grid-img">
									<a href="<%=path%>detail.do?vid=${s.sid}"><img src="images/c3.jpg"
										alt="" /></a>
									<div class="time small-time slider-time">
										<p>4:42</p>
									</div>
									<div class="clck small-clck">
										<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
									</div>
								</div>
								<div class="resent-grid-info recommended-grid-info">
									<h5>
										<a href="<%=path%>detail.do?vid=${s.sid}" class="title">Varius sit sed
											viverra viverra nullam nullam interdum metus</a>
									</h5>
									<div class="slid-bottom-grids">
										<div class="slid-bottom-grid">
											<p class="author author-info">
												<a href="#" class="author">John Maniya</a>
											</p>
										</div>
										<div class="slid-bottom-grid slid-bottom-right">
											<p class="views views-info">2,114,200 views</p>
										</div>
										<div class="clearfix"></div>
									</div>
								</div>
							</div>
							<div class="col-md-3 resent-grid recommended-grid slider-first">
								<div class="resent-grid-img recommended-grid-img">
									<a href="<%=path%>detail.do?vid=${s.sid}"><img src="images/c.jpg" alt="" /></a>
									<div class="time small-time slider-time">
										<p>6:14</p>
									</div>
									<div class="clck small-clck">
										<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
									</div>
								</div>
								<div class="resent-grid-info recommended-grid-info">
									<h5>
										<a href="<%=path%>detail.do?vid=${s.sid}" class="title">Nullam interdum
											metus viverra nullam varius sit sed viverra</a>
									</h5>
									<div class="slid-bottom-grids">
										<div class="slid-bottom-grid">
											<p class="author author-info">
												<a href="#" class="author">John Maniya</a>
											</p>
										</div>
										<div class="slid-bottom-grid slid-bottom-right">
											<p class="views views-info">2,114,200 views</p>
										</div>
										<div class="clearfix"></div>
									</div>
								</div>
							</div>
							<div class="col-md-3 resent-grid recommended-grid slider-first">
								<div class="resent-grid-img recommended-grid-img">
									<a href="<%=path%>detail.do?vid=${s.sid}"><img src="images/c1.jpg"
										alt="" /></a>
									<div class="time small-time slider-time">
										<p>2:34</p>
									</div>
									<div class="clck small-clck">
										<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
									</div>
								</div>
								<div class="resent-grid-info recommended-grid-info">
									<h5>
										<a href="<%=path%>detail.do?vid=${s.sid}" class="title">varius sit sed
											viverra viverra nullam Nullam interdum metus</a>
									</h5>
									<div class="slid-bottom-grids">
										<div class="slid-bottom-grid">
											<p class="author author-info">
												<a href="#" class="author">John Maniya</a>
											</p>
										</div>
										<div class="slid-bottom-grid slid-bottom-right">
											<p class="views views-info">2,114,200 views</p>
										</div>
										<div class="clearfix"></div>
									</div>
								</div>
							</div>
							<div class="col-md-3 resent-grid recommended-grid slider-first">
								<div class="resent-grid-img recommended-grid-img">
									<a href="<%=path%>detail.do?vid=${s.sid}"><img src="images/c2.jpg"
										alt="" /></a>
									<div class="time small-time slider-time">
										<p>5:12</p>
									</div>
									<div class="clck small-clck">
										<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
									</div>
								</div>
								<div class="resent-grid-info recommended-grid-info">
									<h5>
										<a href="<%=path%>detail.do?vid=${s.sid}" class="title">Nullam interdum
											metus viverra nullam varius sit sed viverra</a>
									</h5>
									<div class="slid-bottom-grids">
										<div class="slid-bottom-grid">
											<p class="author author-info">
												<a href="#" class="author">John Maniya</a>
											</p>
										</div>
										<div class="slid-bottom-grid slid-bottom-right">
											<p class="views views-info">1,14,200 views</p>
										</div>
										<div class="clearfix"></div>
									</div>
								</div>
							</div>
							<div class="clearfix"></div>
						</div>
					</li>
				</ul>
			</div>
		</div>
	</div>
	<div class="recommended">
		<div class="recommended-grids">
			<div class="recommended-info">
				<h3>${list3Title}</h3>
			</div>
			<div class="col-md-3 resent-grid recommended-grid">
				<div class="resent-grid-img recommended-grid-img">
					<a href="<%=path%>detail.do?vid=${s.sid}"><img src="images/r1.jpg" alt="" /></a>
					<div class="time small-time">
						<p>2:34</p>
					</div>
					<div class="clck small-clck">
						<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
					</div>
				</div>
				<div class="resent-grid-info recommended-grid-info video-info-grid">
					<h5>
						<a href="<%=path%>detail.do?vid=${s.sid}" class="title">Varius sit sed
							viverra viverra nullam nullam interdum metus</a>
					</h5>
					<ul>
						<li><p class="author author-info">
								<a href="#" class="author">John Maniya</a>
							</p></li>
						<li class="right-list"><p class="views views-info">2,114,200
								views</p></li>
					</ul>
				</div>
			</div>
			<div class="col-md-3 resent-grid recommended-grid">
				<div class="resent-grid-img recommended-grid-img">
					<a href="<%=path%>detail.do?vid=${s.sid}"><img src="images/r2.jpg" alt="" /></a>
					<div class="time small-time">
						<p>3:02</p>
					</div>
					<div class="clck small-clck">
						<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
					</div>
				</div>
				<div class="resent-grid-info recommended-grid-info video-info-grid">
					<h5>
						<a href="<%=path%>detail.do?vid=${s.sid}" class="title">Nullam interdum
							metus viverra nullam varius sit sed viverra</a>
					</h5>
					<ul>
						<li><p class="author author-info">
								<a href="#" class="author">John Maniya</a>
							</p></li>
						<li class="right-list"><p class="views views-info">2,114,200
								views</p></li>
					</ul>
				</div>
			</div>
			<div class="col-md-3 resent-grid recommended-grid">
				<div class="resent-grid-img recommended-grid-img">
					<a href="<%=path%>detail.do?vid=${s.sid}"><img src="images/r3.jpg" alt="" /></a>
					<div class="time small-time">
						<p>1:34</p>
					</div>
					<div class="clck small-clck">
						<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
					</div>
				</div>
				<div class="resent-grid-info recommended-grid-info video-info-grid">
					<h5>
						<a href="<%=path%>detail.do?vid=${s.sid}" class="title">Varius sit sed
							viverra nullam viverra nullam interdum metus</a>
					</h5>
					<ul>
						<li><p class="author author-info">
								<a href="#" class="author">John Maniya</a>
							</p></li>
						<li class="right-list"><p class="views views-info">2,114,200
								views</p></li>
					</ul>
				</div>
			</div>
			<div class="col-md-3 resent-grid recommended-grid">
				<div class="resent-grid-img recommended-grid-img">
					<a href="<%=path%>detail.do?vid=${s.sid}"><img src="images/r4.jpg" alt="" /></a>
					<div class="time small-time">
						<p>2:09</p>
					</div>
					<div class="clck small-clck">
						<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
					</div>
				</div>
				<div class="resent-grid-info recommended-grid-info video-info-grid">
					<h5>
						<a href="<%=path%>detail.do?vid=${s.sid}" class="title">Nullam interdum
							viverra nullam metus varius sit sed viverra</a>
					</h5>
					<ul>
						<li><p class="author author-info">
								<a href="#" class="author">John Maniya</a>
							</p></li>
						<li class="right-list"><p class="views views-info">2,114,200
								views</p></li>
					</ul>
				</div>
			</div>
			<div class="clearfix"></div>
		</div>
		<div class="recommended-grids">
			<div class="col-md-3 resent-grid recommended-grid">
				<div class="resent-grid-img recommended-grid-img">
					<a href="<%=path%>detail.do?vid=${s.sid}"><img src="images/r4.jpg" alt="" /></a>
					<div class="time small-time">
						<p>6:34</p>
					</div>
					<div class="clck small-clck">
						<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
					</div>
				</div>
				<div class="resent-grid-info recommended-grid-info video-info-grid">
					<h5>
						<a href="<%=path%>detail.do?vid=${s.sid}" class="title">Varius sit sed
							viverra nullam viverra nullam interdum metus</a>
					</h5>
					<ul>
						<li><p class="author author-info">
								<a href="#" class="author">John Maniya</a>
							</p></li>
						<li class="right-list"><p class="views views-info">2,114,200
								views</p></li>
					</ul>
				</div>
			</div>
			<div class="col-md-3 resent-grid recommended-grid">
				<div class="resent-grid-img recommended-grid-img">
					<a href="<%=path%>detail.do?vid=${s.sid}"><img src="images/r5.jpg" alt="" /></a>
					<div class="time small-time">
						<p>7:34</p>
					</div>
					<div class="clck small-clck">
						<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
					</div>
				</div>
				<div class="resent-grid-info recommended-grid-info video-info-grid">
					<h5>
						<a href="<%=path%>detail.do?vid=${s.sid}" class="title">Nullam interdum
							metus viverra nullam varius sit sed viverra</a>
					</h5>
					<ul>
						<li><p class="author author-info">
								<a href="#" class="author">John Maniya</a>
							</p></li>
						<li class="right-list"><p class="views views-info">2,114,200
								views</p></li>
					</ul>
				</div>
			</div>
			<div class="col-md-3 resent-grid recommended-grid">
				<div class="resent-grid-img recommended-grid-img">
					<a href="<%=path%>detail.do?vid=${s.sid}"><img src="images/r6.jpg" alt="" /></a>
					<div class="time small-time">
						<p>6:09</p>
					</div>
					<div class="clck small-clck">
						<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
					</div>
				</div>
				<div class="resent-grid-info recommended-grid-info video-info-grid">
					<h5>
						<a href="<%=path%>detail.do?vid=${s.sid}" class="title">Varius sit sed
							viverra nullam viverra nullam interdum metus</a>
					</h5>
					<ul>
						<li><p class="author author-info">
								<a href="#" class="author">John Maniya</a>
							</p></li>
						<li class="right-list"><p class="views views-info">2,114,200
								views</p></li>
					</ul>
				</div>
			</div>
			<div class="col-md-3 resent-grid recommended-grid">
				<div class="resent-grid-img recommended-grid-img">
					<a href="<%=path%>detail.do?vid=${s.sid}"><img src="images/r1.jpg" alt="" /></a>
					<div class="time small-time">
						<p>9:04</p>
					</div>
					<div class="clck small-clck">
						<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
					</div>
				</div>
				<div class="resent-grid-info recommended-grid-info video-info-grid">
					<h5>
						<a href="<%=path%>detail.do?vid=${s.sid}" class="title">Nullam interdum
							metus viverra nullam varius sit sed viverra</a>
					</h5>
					<ul>
						<li><p class="author author-info">
								<a href="#" class="author">John Maniya</a>
							</p></li>
						<li class="right-list"><p class="views views-info">2,114,200
								views</p></li>
					</ul>
				</div>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
	<div class="recommended">
		<div class="recommended-grids">
			<div class="recommended-info">
				<h3>${list4Title}</h3>
			</div>
			<div class="col-md-3 resent-grid recommended-grid">
				<div class="resent-grid-img recommended-grid-img">
					<a href="<%=path%>detail.do?vid=${s.sid}"><img src="images/g.jpg" alt="" /></a>
					<div class="time small-time">
						<p>7:30</p>
					</div>
					<div class="clck small-clck">
						<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
					</div>
				</div>
				<div class="resent-grid-info recommended-grid-info video-info-grid">
					<h5>
						<a href="<%=path%>detail.do?vid=${s.sid}" class="title">Varius sit sed
							viverra nullam viverra nullam interdum metus</a>
					</h5>
					<ul>
						<li><p class="author author-info">
								<a href="#" class="author">John Maniya</a>
							</p></li>
						<li class="right-list"><p class="views views-info">2,114,200
								views</p></li>
					</ul>
				</div>
			</div>
			<div class="col-md-3 resent-grid recommended-grid">
				<div class="resent-grid-img recommended-grid-img">
					<a href="<%=path%>detail.do?vid=${s.sid}"><img src="images/g1.jpg" alt="" /></a>
					<div class="time small-time">
						<p>9:34</p>
					</div>
					<div class="clck small-clck">
						<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
					</div>
				</div>
				<div class="resent-grid-info recommended-grid-info video-info-grid">
					<h5>
						<a href="<%=path%>detail.do?vid=${s.sid}" class="title">Nullam interdum
							viverra nullam metus varius sit sed viverra</a>
					</h5>
					<ul>
						<li><p class="author author-info">
								<a href="#" class="author">John Maniya</a>
							</p></li>
						<li class="right-list"><p class="views views-info">2,114,200
								views</p></li>
					</ul>
				</div>
			</div>
			<div class="col-md-3 resent-grid recommended-grid">
				<div class="resent-grid-img recommended-grid-img">
					<a href="<%=path%>detail.do?vid=${s.sid}"><img src="images/g2.jpg" alt="" /></a>
					<div class="time small-time">
						<p>5:34</p>
					</div>
					<div class="clck small-clck">
						<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
					</div>
				</div>
				<div class="resent-grid-info recommended-grid-info video-info-grid">
					<h5>
						<a href="<%=path%>detail.do?vid=${s.sid}" class="title">Varius sit sed
							viverra nullam viverra nullam interdum metus</a>
					</h5>
					<ul>
						<li><p class="author author-info">
								<a href="#" class="author">John Maniya</a>
							</p></li>
						<li class="right-list"><p class="views views-info">2,114,200
								views</p></li>
					</ul>
				</div>
			</div>
			<div class="col-md-3 resent-grid recommended-grid">
				<div class="resent-grid-img recommended-grid-img">
					<a href="<%=path%>detail.do?vid=${s.sid}"><img src="images/g3.jpg" alt="" /></a>
					<div class="time small-time">
						<p>6:55</p>
					</div>
					<div class="clck small-clck">
						<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
					</div>
				</div>
				<div class="resent-grid-info recommended-grid-info video-info-grid">
					<h5>
						<a href="<%=path%>detail.do?vid=${s.sid}" class="title">Nullam interdum
							metus viverra nullam varius sit sed viverra</a>
					</h5>
					<ul>
						<li><p class="author author-info">
								<a href="#" class="author">John Maniya</a>
							</p></li>
						<li class="right-list"><p class="views views-info">2,114,200
								views</p></li>
					</ul>
				</div>
			</div>
			<div class="clearfix"></div>
		</div>
		<div class="recommended-grids">
			<div class="col-md-3 resent-grid recommended-grid">
				<div class="resent-grid-img recommended-grid-img">
					<a href="<%=path%>detail.do?vid=${s.sid}"><img src="images/we2.jpg" alt=""></a>
					<div class="time small-time">
						<p>7:30</p>
					</div>
					<div class="clck small-clck">
						<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
					</div>
				</div>
				<div class="resent-grid-info recommended-grid-info video-info-grid">
					<h5>
						<a href="<%=path%>detail.do?vid=${s.sid}" class="title">Varius sit sed
							viverra nullam viverra nullam interdum metus</a>
					</h5>
					<ul>
						<li><p class="author author-info">
								<a href="#" class="author">John Maniya</a>
							</p></li>
						<li class="right-list"><p class="views views-info">2,114,200
								views</p></li>
					</ul>
				</div>
			</div>
			<div class="col-md-3 resent-grid recommended-grid">
				<div class="resent-grid-img recommended-grid-img">
					<a href="<%=path%>detail.do?vid=${s.sid}"><img src="images/we1.jpg" alt=""></a>
					<div class="time small-time">
						<p>9:34</p>
					</div>
					<div class="clck small-clck">
						<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
					</div>
				</div>
				<div class="resent-grid-info recommended-grid-info video-info-grid">
					<h5>
						<a href="<%=path%>detail.do?vid=${s.sid}" class="title">Nullam interdum
							viverra nullam metus varius sit sed viverra</a>
					</h5>
					<ul>
						<li><p class="author author-info">
								<a href="#" class="author">John Maniya</a>
							</p></li>
						<li class="right-list"><p class="views views-info">2,114,200
								views</p></li>
					</ul>
				</div>
			</div>
			<div class="col-md-3 resent-grid recommended-grid">
				<div class="resent-grid-img recommended-grid-img">
					<a href="<%=path%>detail.do?vid=${s.sid}"><img src="images/we4.jpg" alt=""></a>
					<div class="time small-time">
						<p>5:34</p>
					</div>
					<div class="clck small-clck">
						<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
					</div>
				</div>
				<div class="resent-grid-info recommended-grid-info video-info-grid">
					<h5>
						<a href="<%=path%>detail.do?vid=${s.sid}" class="title">Varius sit sed
							viverra nullam viverra nullam interdum metus</a>
					</h5>
					<ul>
						<li><p class="author author-info">
								<a href="#" class="author">John Maniya</a>
							</p></li>
						<li class="right-list"><p class="views views-info">2,114,200
								views</p></li>
					</ul>
				</div>
			</div>
			<div class="col-md-3 resent-grid recommended-grid">
				<div class="resent-grid-img recommended-grid-img">
					<a href="<%=path%>detail.do?vid=${s.sid}"><img src="images/we3.jpg" alt=""></a>
					<div class="time small-time">
						<p>6:55</p>
					</div>
					<div class="clck small-clck">
						<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
					</div>
				</div>
				<div class="resent-grid-info recommended-grid-info video-info-grid">
					<h5>
						<a href="<%=path%>detail.do?vid=${s.sid}" class="title">Nullam interdum
							metus viverra nullam varius sit sed viverra</a>
					</h5>
					<ul>
						<li><p class="author author-info">
								<a href="#" class="author">John Maniya</a>
							</p></li>
						<li class="right-list"><p class="views views-info">2,114,200
								views</p></li>
					</ul>
				</div>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
</div>
