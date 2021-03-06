<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextpath" value="${pageContext.request.contextPath}"></c:set>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>后台管理系统</title>
<link type="text/css" rel="stylesheet" href="${contextpath }/static/css/backgroundstyle.css" />
<script type="text/javascript" src="${contextpath }/static/js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="${contextpath }/static/js/menu.js"></script>
	<style type="text/css">
		.book{font-weight:bold;font-size:150%;}
	</style>
</head>

<body>

<div class="top"></div>
<div id="header">
	<div class="logo">鱼总后台管理系统</div>
	<div class="navigation">
		<ul>
		 	<li>欢迎您！</li>
			<li><a href="#">${admin.realName }</a></li>
			<li><a href="bgadminupdate.jsp?">修改信息</a></li>
			<li><a href="${contextpath }/admin/loginout.do">退出</a></li>
		</ul>
	</div>
</div>
<div id="content">
	<div class="left_menu">
				<ul id="nav_dot">
      <li>
          <h4 class="M1"><span></span>系统公告</h4>
          <div class="list-item none">
            <a href="${contextpath }/background.jsp">最新公告</a>
          </div>
        </li>
        <li>
          <h4 class="M7"><span></span>订单处理</h4>
          <div class="list-item none">
            <a href="${contextpath }/order/list.do">查看订单</a>
           </div>
        </li>
        <li>
          <h4 class="M9"><span></span>商品管理</h4>
          <div class="list-item none">
            <a href="${contextpath }/cake/bglist.do">商品信息</a>
            <a href="${contextpath }/bgcakesave.jsp">新增商品</a>
          </div>
        </li>
				<li>
          <h4 class="M10"><span></span>用户管理</h4>
          <div class="list-item none">
            <a href="${contextpath }/user/list.do">用户信息</a>
          </div>
        </li>
  </ul>
		</div>
		<div class="m-right">
			<div class="right-nav">
					<ul>
							<li><img src="images/home.png"></li>
								<li style="margin-left:25px;">您当前的位置：</li>
								<li><a href="#">商品管理</a></li>
								<li>></li>
								<li><a href="#">新增商品</a></li>
						</ul>
			</div>
			<div class="main">
			<center>
				<h1>新增商品</h1>
					<form action="${contextpath }/cake/save.do" method="post" enctype="multipart/form-data">
						<table align="center">
							<tr height="40px">
								<th>商品名</th>
								<td><input type="text" name="name"/></td>
							</tr>
							<tr height="40px">
								<th>商品介绍</th>
								<td><input type="text" name="description"/></td>
							</tr>
							<tr height="40px">
								<th>价格</th>
								<td><input type="text" name="price"/></td>
							</tr>
							<tr height="40px">
								<th>折后价</th>
								<td><input type="text" name="discountprice"/></td>
							</tr>
							<tr height="40px">
								<th>商品图片1</th>
								<td><input type="file" name="listimg"/></td>
							</tr>
							<tr height="40px">
								<th>商品图片2</th>
								<td><input type="file" name="img1"/></td>
							</tr>
							<tr height="40px">
								<th>商品图片3</th>
								<td><input type="file" name="img2"/></td>
							</tr>
							<tr height="40px">
								<th>商品图片4</th>
								<td><input type="file" name="img3"/></td>
							</tr>
							<tr height="40px">
								<th>商品类型</th>
								<td><input type="text" name="cakeType"/>&nbsp;&nbsp;&nbsp;&nbsp;
								1：生日蛋糕&nbsp;&nbsp;2：爱情蛋糕&nbsp;&nbsp;3：婚礼蛋糕&nbsp;&nbsp;4：果冻&nbsp;&nbsp;5：鲜花</td>
							</tr>
							<tr height="40px">
								<td colspan="2" align="center"><input type="submit" value="保存"/></td>
							</tr>
						</table>
					</form>
			</center>
		</div>
	</div>
</div>
<div class="bottom"></div>
<div id="footer"><p>Copyright©  2015 版权所有 京ICP备05019125号-10</p></div>
<script>navList(12);</script>
</body>
</html>