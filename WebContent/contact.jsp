<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextpath" value="${pageContext.request.contextPath}"></c:set>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Contact</title>
<!-- Custom Theme files -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //Custom Theme files -->
<link href="${contextpath }/static/css/bootstrap.css" type="text/css" rel="stylesheet" media="all">
<link href="${contextpath }/static/css/style.css" type="text/css" rel="stylesheet" media="all">
<!-- js -->
<script src="${contextpath }/static/js/jquery.min.js"></script>
<script type="text/javascript" src="${contextpath }/static/js/bootstrap-3.1.1.min.js"></script>
<!-- //js -->
<!-- cart -->
<script src="${contextpath }/static/js/simpleCart.min.js"> </script>
<!-- cart -->
</head>
<body>
	<!--header-->
	<div class="header">
		<div class="container">
			<nav class="navbar navbar-default" role="navigation">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<h1 class="navbar-brand"><a  href="${contextpath }/index.jsp">Yummy</a></h1>
				</div>
				<!--navbar-header-->
				<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav">
						<li><a href="${contextpath }/index.jsp" class="active">首页</a></li>
						<li class="dropdown">
							<a href="${contextpath }/cake/list.do?value=蛋糕" class="dropdown-toggle">蛋糕</a>
						</li>
					   <li class="dropdown grid">
							<a href="${contextpath }/cake/list.do?value=果冻" class="dropdown-toggle list1">果冻</a>
						</li>				
						<li class="dropdown grid">
							<a href="${contextpath }/cake/list.do?value=鲜花" class="dropdown-toggle list1">鲜花</a>
					<!--/.navbar-collapse-->
				</div>
				<!--//navbar-header-->
			</nav>
			<div class="header-info">
				<div class="header-right search-box">
					<a href="#"><span class="glyphicon glyphicon-search" aria-hidden="true"></span></a>				
					<div class="search">
						<form class="navbar-form" action="${contextpath }/cake/list.do">
							<input type="text" class="form-control" name="value" >
							<button type="submit" class="btn btn-default" aria-label="Left Align">
								搜索
							</button>
						</form>
					</div>	
				</div>
				<div class="header-right login">
					<a href="#"><span class="glyphicon glyphicon-user" aria-hidden="true"></span></a>
					<div id="loginBox">        
						<c:if test="${user.username != null }">
							<form id="loginForm">
							<br>
							<h3>欢迎您，<a class="sign" href="#">${user.username }</a>！<span><a href="${contextpath }/user/loginout.do">注销</a></span></h3>
							<br>
							<h4><span><a href="${contextpath }/information.jsp">修改个人信息</a></span></h4>
							</form>
						</c:if>
						<c:if test="${user.username == null }">
							<form id="loginForm" action="${contextpath }/user/login.do" method="post">
								<fieldset id="body">
								<h4>${fails }</h4>
									<fieldset>
										<label for="email">用户名</label>
										<input type="text" name="username" id="email">
									</fieldset>
									<fieldset>
										<label for="password">密码</label>
										<input type="password" name="password" id="password">
									</fieldset>
									<input type="submit" id="login" value="登录">
									<label for="checkbox"><input type="checkbox" id="checkbox"> <i>记住我</i></label>
								</fieldset>
								<p>新用户 ? <a class="sign" href="${contextpath }/account.jsp">注册</a> <span><a class="sign" href="${contextpath }/password.jsp">忘记密码?</a><a href="${contextpath }/adminlogin.jsp">店长登录</a></span></p>
							</form>
						</c:if>
					</div>
				</div>
				<div class="header-right cart">
					<a href="#"><span class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span></a>
					<div class="cart-box">
						<p><a href="${contextpath }/cartiteam/show.do?cartid=${user.cart.cartid}" >查看购物车</a></p>
						<p><a href="${contextpath }/order/show.do?userid=${user.id }" >查看订单</a></p>
						<div class="clearfix"> </div>
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
	<!--//header-->
	<!--contact-->
	<div class="contact">
		<div class="container">
			<h2>Contact Us</h2>
			<div class="map">	
				<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d205251.8961757029!2d-82.55659211602483!3d36.50439253757311!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x885a856b70074b97%3A0x6f9cc0d30bcc841f!2sKingsport%2C+TN%2C+USA!5e0!3m2!1sen!2sin!4v1433743549812"></iframe>
			</div>
			<div class="contact-infom">
				<h4>Miscellaneous information :</h4>
				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,sheets containing Lorem Ipsum passages, 
					sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.It was popularised in the 1960s with the release of Letraset
					and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>
			</div>
			<div class="address">
				<div class="col-md-4 address-grids">
					<h4>Address :</h4>
					<ul>
						<span class="glyphicon glyphicon-map-marker" aria-hidden="true"></span>
						<p>	Eiusmod Tempor inc<br>
							St Dolore Place,<br>
							Kingsport 56777
						</p>
					</ul>
				</div>
				<div class="col-md-4 address-grids">
					<h4>Contact no :</h4>
					<p><span class="glyphicon glyphicon-earphone" aria-hidden="true"></span>+2 800 544 6035</p>
					<p><span class="glyphicon glyphicon-print" aria-hidden="true"></span>+2 100 889 9466</p>
				</div>
				<div class="col-md-4 address-grids">
					<h4>Email :</h4>
					<p><span class="glyphicon glyphicon-envelope" aria-hidden="true"></span><a href="mailto:example@mail.com">mail@example.com</a></p>
				</div>
				<div class="clearfix"> </div>
			</div>		
			<div class="contact-form">
				<h4>Contact form</h4>
				<form>
					<input type="text" value="Name" onFocus="this.value = '';" onBlur="if (this.value == '') {this.value = 'Name';}" required="">
					<input type="text" value="Email" onFocus="this.value = '';" onBlur="if (this.value == '') {this.value = 'Email';}" required="">
					<input type="text" value="Telephone" onFocus="this.value = '';" onBlur="if (this.value == '') {this.value = 'Telephone';}" required="">
					<textarea type="text"  onfocus="this.value = '';" onBlur="if (this.value == '') {this.value = 'Message...';}" required="">Message...</textarea>
					<button class="btn1">Submit</button>
				</form>
			</div>	
		</div>
	</div>
	<!--//contact-->
	<!--footer-->
	<div class="footer">
		<div class="container">
			<div class="footer-grids">
				<div class="col-md-2 footer-grid">
					<h4>company</h4>
					<ul>
						<li><a href="products.jsp">products</a></li>
						<li><a href="#">Work Here</a></li>
						<li><a href="#">Team</a></li>
						<li><a href="#">Happenings</a></li>
						<li><a href="#">Dealer Locator</a></li>
					</ul>
				</div>
				<div class="col-md-2 footer-grid">
					<h4>service</h4>
					<ul>
						<li><a href="#">Support</a></li>
						<li><a href="#">FAQ</a></li>
						<li><a href="#">Warranty</a></li>
						<li><a href="contact.jsp">Contact Us</a></li>
					</ul>
				</div>
				<div class="col-md-3 footer-grid">
					<h4>order & returns</h4>
					<ul>
						<li><a href="#">Order Status</a></li>
						<li><a href="#">Shipping Policy</a></li>
						<li><a href="#">Return Policy</a></li>
						<li><a href="#">Digital Gift Card</a></li>
					</ul>
				</div>
				<div class="col-md-2 footer-grid">
					<h4>legal</h4>
					<ul>
						<li><a href="#">Privacy</a></li>
						<li><a href="#">Terms and Conditions</a></li>
						<li><a href="#">Social Responsibility</a></li>
					</ul>
				</div>
				<div class="col-md-3 footer-grid icons">
					<h4>Connect with Us</h4>
					<ul>
						<li><a href="#"><img src="${contextpath }/static/images/i1.png" alt=""/>Follow us on Facebook</a></li>
						<li><a href="#"><img src="${contextpath }/static/images/i2.png" alt=""/>Follow us on Twitter</a></li>
						<li><a href="#"><img src="${contextpath }/static/images/i3.png" alt=""/>Follow us on Google-plus</a></li>
						<li><a href="#"><img src="${contextpath }/static/images/i4.png" alt=""/>Follow us on Pinterest</a></li>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!--footer-->
	<div class="footer-bottom">
		<div class="container">
			<p>Copyright &copy; 2015.Company name All rights reserved.</p>
		</div>
	</div>
</body>
</html>