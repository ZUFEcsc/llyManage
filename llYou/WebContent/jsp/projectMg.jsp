<%@ page language="java" import="java.util.*,dao.*,bean.*"
	contentType="text/html; charset=utf-8" pageEncoding="utf-8"%><!DOCTYPE html>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<html>
<head>
<%@ include file="bootstrap.jsp"%>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<style>
.layui-timeline-item {
	height: 55px;
}

.layui-timeline-item i {
	font-size: 25px;
}

.layui-nav-child dd a {
	margin-left: 30px;
}

tbody tr td {
	line-height: 30px;
}

tbody tr th {
	line-height: 30px;
	color: #FF5722;
}
</style>
<title>项目经理页面</title>
<link rel="stylesheet" href="../res/layui/css/layui.css">
</head>
<body class="layui-layout-body">
	<div class="layui-layout layui-layout-admin">
		<%@ include file="enterprise-header.jsp"%>
		<div class="layui-side layui-bg-black">
			<div class="layui-side-scroll">
				<!-- 左侧导航区域（可配合layui已有的垂直导航） -->
				<div style="margin: 10px 35px;">
					<div class="userCard-img"
						style="display: inline-block; padding-right: 5px;">
						<img src="../img/girl.png"
							style="border-radius: 50% !important; width: 42px; margin-bottom: 10px;">
					</div>
					<div class="userCard-text" style="display: inline-block;">
						<h5 style="padding-bottom: 4px">张雨佳</h5>
						<span class="layui-badge layui-bg-orange">项目经理</span>
					</div>
				</div>

				<ul class="layui-nav layui-nav-tree" lay-filter="test">
					<li class="layui-nav-item layui-nav-itemed"><a class=""
						href="javascript:;">项目管理</a>
						<dl class="layui-nav-child">
							<dd>
								<a href="#" class="site-demo-active" data-url="XMXX"
									data-id="XMXX" data-type="tabXMXX">项目信息</a>
							</dd>
							<dd>
								<a href="#" class="site-demo-active" data-url="XMPJ"
									data-id="XMPJ" data-type="tabXMPJ">项目评价</a>
							</dd>
						</dl></li>
				</ul>
			</div>
		</div>

		<div class="layui-body">
			<!-- 内容主体区域 -->
			<div class="layui-tab layui-tab-brief" lay-filter="demo">
				<ul class="layui-tab-title">
					<li class="layui-this" lay-id="XMXX">项目信息 <!--lay-allowclose="true"(div) <i class="layui-icon layui-unselect layui-tab-close">ဆ</i> -->
					</li>
				</ul>
				<div class="layui-tab-content">
					<!-- 项目信息  -->
					<div class="layui-tab-item layui-show" id="item-XMXX">
						<div>
							<form style="float: left; margin-left: 5px;">
								<div class="form-row">
									<div class="form-group col-md">
										<select class="form-control">
											<option selected disabled style="display: none;" value="">所有项目信息</option>
											<option>1</option>
											<option>2</option>
											<option>3</option>
											<option>4</option>
										</select>
									</div>
									<a href="#" type="submit"><i
										class="layui-icon layui-icon-search"
										style="font-size: 30px; color: #1E9FFF;"></i></a>
								</div>

							</form>
							<form style="float: right; margin-right: 15px;">
								<div class="form-row">
									<div class="form-group col-md">
										<input type="date" name="birth" class="form-control"
											value="2020-03-01">
									</div>
									<div class="form-group">
										<i class="layui-icon layui-icon-right"
											style="font-size: 30px;"></i>
									</div>
									<div class="form-group col-md">
										<input type="date" name="birth" class="form-control"
											value="2020-04-01">
									</div>
									<a onclick="change()"><i
										class="layui-icon layui-icon-search"
										style="font-size: 30px; color: #1E9FFF;"></i></a>
								</div>
							</form>
							<span style="float: right;line-height:45px;">请选择时间段：</span>
							<hr>
						</div>

						<div class="layui-row layui-col-space15" id="d1">
							<%
								Dao dao = new Dao();
								List<CompanyProjectBean> list = dao.getListCompanyProjectInfo();
								for (CompanyProjectBean ab : list) {
									if (ab.getState().equals("1")) {
										if (ab.getProject_responser().equals("张雨佳")) {
							%>
							<div class="layui-col-md3">
								<div class="layui-card">
									<div class="layui-card-header" style="background: #9cd2f7;">
										<strong><%=ab.getProject_number()%></strong> <span
											style="float: right;"> <i
											class="iconfont icon-jiazaizhong"
											style="color: #ffffff; font-size: 18px;"></i> 进行中…
										</span>
									</div>
									<div class="layui-card-body">
										<table>
											<colgroup>
												<col width="110">
												<col width="140">
											</colgroup>
											<tbody>
												<tr class="uc-tr">
													<td><i class="iconfont icon-xiangmu"
														style="color: #5FB878;"></i> <strong
														style="color: #2b4f6c;">项目姓名：</strong></td>

													<td><span style="color: #777777;"><%=ab.getProject_name()%></span></td>
												</tr>
												<tr class="uc-tr">
													<td><i class="iconfont icon-zhaopingangwei"
												style="color: #5FB878;"></i>
											<strong style="color: #2b4f6c;">项目负责人：</strong></td>
													<td><span style="color: #777777;"><%=ab.getProject_responser()%></span></td>
												</tr>
												<tr class="uc-tr">
													<td><i class="iconfont icon-suggestion" style="color: #5FB878;"></i>
											<strong style="color: #2b4f6c;">项目内容：</strong></td>
													<td><span style="color: #777777;"><%=ab.getProject_content()%></span>
											</td>
												</tr>
												
												<tr class="uc-tr">
													<td><i class="iconfont icon-lunkuohua2_yonghu"
												style="color: #5FB878;"></i>
											<strong style="color: #2b4f6c;">项目成员：</strong></td>
													<td><span style="color: #777777;"><%=ab.getProject_member()%></span></td>
												</tr>
												
												<tr class="uc-tr">
													<td><i class="iconfont icon-shijian" style="color: #5FB878;"></i>
											<strong style="color: #2b4f6c;">起始时间：</strong></td>
													<td> <span style="color: #777777;"><%=ab.getStart_time()%></span></td>
												</tr>
												
												<tr class="uc-tr">
													<td><i class="iconfont icon-jiezhishijian"
												style="color: #5FB878;"></i>
											<strong style="color: #2b4f6c;">结束时间：</strong></td>
													<td><span style="color: #777777;">未知</span></td>
												</tr>


											</tbody>
											</table>
											
											<a href="#" style="margin-left: 80%"><span
												style="font-size: 12px; color: #838383;"> 查看详情</span></a>
											</div>
											</div>
											</div>
											<%
												}
													}
												}
											%>
											</div>
											
							<div class="layui-row layui-col-space15" id="d2" style="display:none;">
							<div class="layui-col-md3">
								<div class="layui-card">
									<div class="layui-card-header" style="background: #9cd2f7;">
										<strong>SZ001F002</strong> <span
											style="float: right;"> <i
											class="iconfont icon-jiazaizhong"
											style="color: #ffffff; font-size: 18px;"></i> 进行中…
										</span>
									</div>
									<div class="layui-card-body">
										<table>
											<colgroup>
												<col width="110">
												<col width="140">
											</colgroup>
											<tbody>
												<tr class="uc-tr">
													<td><i class="iconfont icon-xiangmu"
														style="color: #5FB878;"></i> <strong
														style="color: #2b4f6c;">项目姓名：</strong></td>

													<td><span style="color: #777777;">学习app</span></td>
												</tr>
												<tr class="uc-tr">
													<td><i class="iconfont icon-zhaopingangwei"
												style="color: #5FB878;"></i>
											<strong style="color: #2b4f6c;">项目负责人：</strong></td>
													<td><span style="color: #777777;">张雨佳</span></td>
												</tr>
												<tr class="uc-tr">
													<td><i class="iconfont icon-suggestion" style="color: #5FB878;"></i>
											<strong style="color: #2b4f6c;">项目内容：</strong></td>
													<td><span style="color: #777777;">研发一款学习app</span>
											</td>
												</tr>
												
												<tr class="uc-tr">
													<td><i class="iconfont icon-lunkuohua2_yonghu"
												style="color: #5FB878;"></i>
											<strong style="color: #2b4f6c;">项目成员：</strong></td>
													<td><span style="color: #777777;">张培，王光</span></td>
												</tr>
												
												<tr class="uc-tr">
													<td><i class="iconfont icon-shijian" style="color: #5FB878;"></i>
											<strong style="color: #2b4f6c;">起始时间：</strong></td>
													<td> <span style="color: #777777;">2020-03-03</span></td>
												</tr>
												
												<tr class="uc-tr">
													<td><i class="iconfont icon-jiezhishijian"
												style="color: #5FB878;"></i>
											<strong style="color: #2b4f6c;">结束时间：</strong></td>
													<td><span style="color: #777777;">未知</span></td>
												</tr>


											</tbody>
											</table>
											
											<a href="#" style="margin-left: 80%"><span
												style="font-size: 12px; color: #838383;"> 查看详情</span></a>
											</div>
											</div>
											</div>
											
											</div>


											</div>

											<!-- 项目评价 -->
											<div class="layui-tab-item " id="item-XMPJ"
												style="display: none;">

												<div>
													<form style="float: right;">
														<div class="form-row">
															<div class="form-group col-md">
																<select class="form-control">
																	<option selected disabled style="display: none;"
																		value="">请选择项目状态</option>
																	<option>所有已完成项目</option>
																	<option>2</option>
																	<option>3</option>
																	<option>4</option>
																	<option>5</option>
																</select>
															</div>
															<a href="#" type="submit"><i
																class="layui-icon layui-icon-search"
																style="font-size: 30px; color: #1E9FFF;"></i></a>
														</div>
													</form>
												</div>
												<div>
													<table class="table">
														<thead>
															<tr>
																<th scope="col"><i class="iconfont icon-bianhao"
																	style="color: #999999"></i>项目编号</th>
																<th scope="col"><i class="iconfont icon-suggestion"
																	style="color: #6449ff;"></i>项目名称</th>
																<th scope="col"><i
																	class="iconfont icon-zhaopingangwei"
																	style="color: #009688; font-size: 18px;"></i>项目负责人</th>
																<th scope="col"><i
																	class="iconfont icon-shangbiaorenzheng"
																	style="font-size: 18px; color: #fc5531;"></i>项目状态</th>
																<th scope="col"><i class="iconfont icon--_caozuo"
																	style="font-size: 18px; color: #5aa9e6;"></i>操作</th>
															</tr>

														</thead>
														<tbody>
<%
								for (CompanyProjectBean ab : list) {
									if (ab.getState().equals("1")) {
										
							%>
															<tr>
																<th scope="row"><i class="iconfont icon-6"
																	style="font-size: 16px; color: #e29c45;"></i> <%=ab.getProject_number() %></th>
																<td><%=ab.getProject_name() %></td>
																<td><%=ab.getProject_responser() %></td>
																<td>
																<%if(ab.getEvaluate_state().equals("待评价")){ %>
																<span class="layui-badge layui-bg-orange">待评价</span>
																<%}else{ %>
																<span class="layui-badge layui-bg-green">已评价</span>
																<%} %>
																</td>

																<td>
																<%if(ab.getEvaluate_state().equals("待评价")){ %>
																	<button type="button"
																		class="layui-btn layui-btn-sm layui-btn-normal"
																		style="margin: 0px;">
																		<i class="iconfont icon-gengduo"></i><span
																			style="font-size: 14px;"> 去评价</span>
																	</button>
																	<%} %>
																</td>
															</tr>
															<%
												}
													}
												
											%>
															
														</tbody>
													</table>
												</div>

											</div>

											</div>
											</div>

											<%@ include file="lly-footer.jsp"%>
											</div>
											</div>
											<script src="../res/layui/layui.js"></script>
											<script>
											function change(){
												$("#d1").css('display', 'none');
												$("#d2").css('display', 'block');			
											}
											
												//JavaScript代码区域
												layui
														.use(
																'element',
																function() {
																	var element = layui.element;
																});
											</script>

											<script>
												layui
														.use(
																'element',
																function() {
																	var $ = layui.jquery, element = layui.element; //Tab的切换功能，切换事件监听等，需要依赖element模块

																	var active = {
																		tabXMXX : function() {
																			element
																					.tabChange(
																							'demo',
																							'XMXX');
																		},
																		tabXMPJ : function() {
																			if ($("#item-XMPJ")[0].style.display == "") {
																			} else {
																				element
																						.tabAdd(
																								'demo',
																								{
																									title : '项目评价',
																									id : 'XMPJ'
																								});
																				$("#item-XMPJ")[0].style.display = ""
																			}
																			element
																					.tabChange(
																							'demo',
																							'XMPJ');
																		},
																	};

																	$(
																			'.site-demo-active')
																			.on(
																					'click',
																					function() {
																						var othis = $(this), type = othis
																								.data('type');
																						active[type] ? active[type]
																								.call(
																										this,
																										othis)
																								: '';
																					});

																	//Hash地址的定位
																	var layid = location.hash
																			.replace(
																					/^#demo=/,
																					'');
																	element
																			.tabChange(
																					'demo',
																					layid);

																	element
																			.on(
																					'tab(demo)',
																					function(
																							elem) {
																						location.hash = 'demo='
																								+ $(
																										this)
																										.attr(
																												'lay-id');
																					});

																});
											</script>
</body>
</html>
