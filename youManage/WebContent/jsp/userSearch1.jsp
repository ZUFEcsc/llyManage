<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link rel="stylesheet"
	href="//at.alicdn.com/t/font_2414271_kipf4bq46q8.css">
<style>
@charset "utf-8";
/* 以下实际使用若已初始化可删除 .nav height父级需逐级设置为100%*/
body, html {
	height: 100%;
	background: #E2E2E2
}

body, ul {
	margin: 0;
	padding: 0
}

body {
	font: 24px "微软雅黑", "宋体", "Arial Narrow", HELVETICA;
	-webkit-text-size-adjust: 100%;
}

li {
	list-style: none
}

a {
	text-decoration: none;
}
/* 以上实际使用若已初始化可删除 */

/* nav */
.nav {
	width: 320px;
	height: 80%;
	background: #fbfbfb;
	transition: all .3s;
}

.nav a {
	display: block;
	width: 320px;
	overflow: hidden;
	padding-left: 20px;
	line-height: 56px;
	max-height: 56px;
	color: #ABB1B7;
	transition: all .3s;
}

.nav a span {
	margin-left: 40px;
}

.nav-item {
	position: relative;
}

.nav-item.nav-show {
	border-bottom: none;
}

.nav-item ul {
	display: none;
	background: rgba(0, 0, 0, .1);
}

.nav-item.nav-show ul {
	display: block;
}

.nav-item>a:before {
	content: "";
	position: absolute;
	left: 0px;
	width: 4px;
	height: 56.5px;
	background: #34A0CE;
	opacity: 0;
	transition: all .3s;
}

.nav .nav-icon {
	font-size: 26px;
	position: absolute;
}

.nav-more {
	float: right;
	margin-right: 20px;
	font-size: 24px;
	transition: transform .3s;
}

.nav-show .nav-more {
	transform: rotate(90deg);
}

.nav-show, .nav-item>a:hover {
	color: #FFF;
	background: rgba(0, 0, 0, .1);
}

.nav-show>a:before, .nav-item>a:hover:before {
	opacity: 1;
}

.nav-item li:hover a {
	color: #FFF;
	background: rgba(0, 0, 0, .1);
}

/* nav-mini */
.nav-mini.nav {
	width: 160px;
}

.nav-mini.nav .nav-item>a span {
	display: none;
}

.nav-mini.nav .nav-more {
	margin-right: -25px;
}

.nav-mini.nav .nav-item ul {
	position: absolute;
	top: 0px;
	left: 60px;
	width: 280px;
	z-index: 99;
	background: #3C474C;
	overflow: hidden;
}

.nav-mini.nav .nav-item:hover {
	background: rgba(255, 255, 255, .1);
}

.nav-mini.nav .nav-item:hover .nav-item a {
	color: #FFF;
}

.nav-mini.nav .nav-item:hover a:before {
	opacity: 1;
}

.nav-mini.nav .nav-item:hover ul {
	display: block;
}

.userCard-img {
	display: inline-block;
}

.userCard-text {
	display: inline-block;
}

.body-card {
	padding: auto;
}
</style>

<%@ include file="bootstrap.jsp"%>

<title>用户登录_招聘查询</title>
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<a class="navbar-brand" href="#"> <img src="img/you.png"
			width="30" height="30" class="d-inline-block align-top" alt="">
			欢迎XX登录
		</a>
		<div class="collapse navbar-collapse justify-content-end"
			id="navbarNavDropdown">
			<ul class="navbar-nav">
				<li class=" active"><a class="nav-link" href="#">首页
						<span class="sr-only">(current)</span>
				</a></li>
				<li class=""><a class="nav-link" href="#">产品中心</a></li>
				<li class=""><a class="nav-link" href="#">服务支持</a></li>
				<li class=" dropdown"><a
					class="nav-link dropdown-toggle" href="#" role="button"
					data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
						个人中心 </a>
					<div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
						<a class="dropdown-item" href="#">我的通知</a> <a
							class="dropdown-item" href="#">我的消息</a>
					</div></li>

				<span class="navbar-text"> <img alt="" src="img/user.png"
					width="50%" style="border-radius: 50%;">
				</span>

			</ul>
		</div>
	</nav>

	<div class="" style="float:right;">
		<select class="custom-select col-sm-3" id="inputGroupSelect01">
			<option selected>请选择职业类别</option>
			<option value="1">One</option>
			<option value="2">Two</option>
			<option value="3">Three</option>
		</select> <select class="custom-select col-sm-3" id="inputGroupSelect02">
			<option selected>请选择行业类别</option>
			<option value="1">One</option>
			<option value="2">Two</option>
			<option value="3">Three</option>
		</select>
		<div class="col-sm">
			<form class="form-inline my-2 my-lg-0">
				<input class="form-control mr-sm-2" type="search"
					placeholder="请输入职位名、公司名等关键字" aria-label="Search">
				<button class="btn btn-outline-success my-2 my-sm-0" type="submit">找工作</button>
			</form>
		</div>
	</div>

	<div class="nav">
		<div class="nav-top">
			<div class="userCard-img"
				style="margin-left: 80px; margin-top: 40px;">
				<img src="img/user.png" class="rounded-circle" width="120%"
					style="margin-bottom: 45px;">
			</div>
			<div class="userCard-text">
				<h5 class="card-title" style="margin-top: 10px; margin-left: 20px;">陈沈清</h5>
				<span class="badge badge-pill badge-success"
					style="margin-left: 20px;">平台用户</span>
			</div>
		</div>
		<ul id="aat" style="margin-top: -350px;">
		</ul>
	</div>
	<script>
		$(function() {
			var navList = [ {
				"p" : "招聘查询",
				"c" : [ "招聘信息查询" ]
			}, {
				"p" : "我的招聘",
				"c" : [ "我的招聘进度", "惠农区", "平罗县" ]
			}, ]
			var navData = '';
			for (let i = 0; i < navList.length; i++) {
				navData += "<li class='nav-item'><a href='javascript:;'><i class='iconfont icon-suggestion my-icon nav-icon'></i><span>"
						+ navList[i].p
						+ "</span><i class='iconfont icon-angle-right my-icon nav-more'></i></a><ul>"
				for (let w = 0; w < navList[i].c.length; w++) {
					navData += "<li><a href='javascript:;'><span>"
							+ navList[i].c[w] + "</span></a></li>"
				}
				navData += "</ul></li>"
			}
			console.log(navData)
			$('#aat').html(navData)
		})
	</script>

	<script>
		$(function() {
			// nav收缩展开
			$('#aat')
					.on(
							'click',
							'.nav-item>a',
							function() {
								if (!$('.nav').hasClass('nav-mini')) {
									if ($(this).next().css('display') == "none") {
										//展开未展开
										$('.nav-item').children('ul').slideUp(
												300);
										$(this).next('ul').slideDown(300);
										$(this).parent('li').addClass(
												'nav-show').siblings('li')
												.removeClass('nav-show');
									} else {
										//收缩已展开
										$(this).next('ul').slideUp(300);
										$('.nav-item.nav-show').removeClass(
												'nav-show');
									}
								}
							});
			// 标志点击样式
			$('#aat').on('click', '.nav-item>ul>li', function() {
				$('.nav-item>ul>li').css('background', 'none')
				$(this).css('background', 'yellow')
			})
			//nav-mini切换
			$('#mini').on('click', function() {
				if (!$('.nav').hasClass('nav-mini')) {
					$('.nav-item.nav-show').removeClass('nav-show');
					$('.nav-item').children('ul').removeAttr('style');
					$('.nav').addClass('nav-mini');
				} else {
					$('.nav').removeClass('nav-mini');
				}
			});
		});
	</script>

	<p class="mt-5 mb-3 text-muted text-center">&copy; 溜溜游团队出品</p>

</body>
</html>