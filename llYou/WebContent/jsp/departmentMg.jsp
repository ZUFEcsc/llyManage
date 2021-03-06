<%@ page language="java" import="java.util.*,dao.*,bean.*,java.text.*"
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
.star {
	width: 120px !important;
}

.layui-timeline-item {
	height: 55px;
}

.layui-timeline-item i {
	font-size: 25px;
}

tbody tr td {
	line-height: 30px;
}

tbody tr th {
	line-height: 30px;
	color: #FF5722;
}
</style>
<title>部门主管页面</title>
<script src="https://libs.baidu.com/jquery/1.9.1/jquery.min.js"></script>
<link rel="stylesheet" href="../res/layui/css/layui.css">
<script type="text/javascript"
	src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
	integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
	crossorigin="anonymous"></script>
<style>
#
{
margin


:


0;
padding


:


0;
}
.masking {
	width: 100%;
	height: 100%;
	position: fixed;
	background: rgba(150, 150, 150, 0.8);
	display: none;
	top: 0;
	left: 0;
}

.layer {
	position: relative;
	width: 200px;
	height: 100px;
	background: #FFFFFF;
	
	left: 60%;
	margin-left: -250px;
	top: 60%;
	margin-top: -150px;
}

.close {
	position: absolute;
	right: 15px;
	top: 15px;
}
</style>
</head>
<body class="layui-layout-body">
	<%
		String msg = (String) request.getAttribute("msg");
		Date date = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy年MM月dd日  HH时mm分ss秒 E");
		String datestring = sdf.format(date).toString();
	%>
	<div class="layui-layout layui-layout-admin">
		<%@ include file="enterprise-header.jsp"%>
		<div class="layui-side layui-bg-black">
			<div class="layui-side-scroll">
				<!-- 用户卡片 -->
				<div style="margin: 10px 35px;">
					<div class="userCard-img"
						style="display: inline-block; padding-right: 5px;">
						<img src="../img/boy.png"
							style="border-radius: 50% !important; width: 42px; margin-bottom: 10px;">
					</div>
					<div class="userCard-text" style="display: inline-block;">
						<h5 style="padding-bottom: 4px">王畅畅</h5>
						<span class="layui-badge layui-bg-orange">部门主管</span>
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
								<a href="#" class="site-demo-active" data-url="TJXM"
									data-id="TJXM" data-type="tabTJXM">添加项目</a>
							</dd>
						</dl></li>
					<li class="layui-nav-item layui-nav-itemed"><a
						href="javascript:;">项目评价</a>
						<dl class="layui-nav-child">
							<dd>
								<a href="#" class="site-demo-active" data-url="NMPJ"
									data-id="NMPJ" data-type="tabNMPJ">年末评价</a>
							</dd>
							<dd>
								<a href="#" class="site-demo-active" data-url="ZDSJ"
									data-id="ZDSJ" data-type="tabZDSJ">重大事件评价</a>
							</dd>
						</dl></li>
				</ul>
			</div>
		</div>

		<div class="layui-body">
			<!-- 内容主体区域 -->
			<div class="layui-tab layui-tab-brief" lay-filter="demo">
				<ul class="layui-tab-title">
					<li class="layui-this" lay-id="XMXX">项目信息</li>
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
							<sapn style="float: right;line-height:45px;">请选择时间段：</sapn>
							<hr>
						</div>

						<div class="layui-row layui-col-space15" id="d1">
							<%
								Dao dao = new Dao();
								List<CompanyProjectBean> list = dao.getListCompanyProjectInfo();
								for (CompanyProjectBean ab : list) {
									if (ab.getState().equals("1"))
										ab.setState("进行中");
									else if (ab.getState().equals("2"))
										ab.setState("已结束");
							%>
							<div class="layui-col-md3">
								<div class="layui-card">
									<%
										if (ab.getState().equals("进行中")) {
									%>
									<div class="layui-card-header" style="background: #9cd2f7;">
										<strong><%=ab.getProject_number()%></strong> <span
											style="float: right;"> <i
											class="iconfont icon-jiazaizhong"
											style="color: #ffffff; font-size: 18px;"></i> <%=ab.getState()%>…
										</span>
									</div>
									<%
										}
									%>
									<%
										if (ab.getState().equals("已结束")) {
									%>
									<div class="layui-card-header" style="background: #dce9fc;">
										<strong><%=ab.getProject_number()%></strong> <span
											style="float: right;"> <i
											class="iconfont icon-jiazaizhong"
											style="color: #ffffff; font-size: 18px;"></i> <%=ab.getState()%>…
										</span>
									</div>
									<%
										}
									%>
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
														style="color: #5FB878;"></i> <strong
														style="color: #2b4f6c;">负责人：</strong></td>
													<td><span style="color: #777777;"><%=ab.getProject_responser()%></span></td>
												</tr>
												<tr class="uc-tr">
													<td><i class="iconfont icon-suggestion"
														style="color: #5FB878;"></i> <strong
														style="color: #2b4f6c;">项目内容：</strong></td>
													<td><span style="color: #777777;"><%=ab.getProject_content()%></span></td>
												</tr>
												<tr class="uc-tr">
													<td><i class="iconfont icon-lunkuohua2_yonghu"
														style="color: #5FB878;"></i> <strong
														style="color: #2b4f6c;">项目成员：</strong></td>
													<td><span style="color: #777777;"><%=ab.getProject_member()%></span></td>
												</tr>
												<tr class="uc-tr">
													<td><i class="iconfont icon-shijian"
														style="color: #5FB878;"></i> <strong
														style="color: #2b4f6c;">起始时间：</strong></td>
													<td><span style="color: #777777;"><%=ab.getStart_time()%></span></td>
												</tr>
												<tr class="uc-tr">
													<td><i class="iconfont icon-jiezhishijian"
														style="color: #5FB878;"></i> <strong
														style="color: #2b4f6c;">结束时间：</strong></td>
													<td>
														<%
															if (ab.getEnd_time() == null) {
														%><span style="color: #777777;">未知</span> <%
 	}
 %> <%
 	if (ab.getEnd_time() != null) {
 %><span style="color: #777777;"><%=ab.getEnd_time()%></span> <%
 	}
 %>
													</td>
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
							%>

						</div>
						
						<div class="layui-row layui-col-space15" id="d2" style="display:none;">
							<div class="layui-col-md3">
								<div class="layui-card">
									
									<div class="layui-card-header" style="background: #9cd2f7;">
										<strong>SZ001F003</strong> <span
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
														style="color: #5FB878;"></i> <strong
														style="color: #2b4f6c;">负责人：</strong></td>
													<td><span style="color: #777777;">张雨佳</span></td>
												</tr>
												<tr class="uc-tr">
													<td><i class="iconfont icon-suggestion"
														style="color: #5FB878;"></i> <strong
														style="color: #2b4f6c;">项目内容：</strong></td>
													<td><span style="color: #777777;">研发一款学习app</span></td>
												</tr>
												<tr class="uc-tr">
													<td><i class="iconfont icon-lunkuohua2_yonghu"
														style="color: #5FB878;"></i> <strong
														style="color: #2b4f6c;">项目成员：</strong></td>
													<td><span style="color: #777777;">张培，王光</span></td>
												</tr>
												<tr class="uc-tr">
													<td><i class="iconfont icon-shijian"
														style="color: #5FB878;"></i> <strong
														style="color: #2b4f6c;">起始时间：</strong></td>
													<td><span style="color: #777777;">2020-03-03</span></td>
												</tr>
												<tr class="uc-tr">
													<td><i class="iconfont icon-jiezhishijian"
														style="color: #5FB878;"></i> <strong
														style="color: #2b4f6c;">结束时间：</strong></td>
													<td>
														<span style="color: #777777;">未知</span> 
													</td>
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


					<!-- 添加项目 -->
					<div class="layui-tab-item " id="item-TJXM" style="display: none;">
						<div class="layui-col-md5"
							style="margin-top: 20px; margin-left: 20px;">
							<div class="layui-card" style="font-size: 1.0rem;">
								<div class="layui-card-header"
									style="background-color: #00a5cf;">
									<i class="iconfont icon-jia" style="color: #fff;"></i> <strong
										style="color: #fff; font-size: 1.1rem;">添加项目</strong>
								</div>
								<div class="layui-card-body"
									style="margin-top: 20px; margin-left: 20px;">
									<form method="post" id="form1">
										<div style="margin-bottom: 5px;">
											<i class="iconfont icon-xiugai"
												style="color: #1296db; font-size: 1.25rem;"></i> <strong
												style="color: #2b4f6c;">项目编号：</strong><span
												style="color: #777777;">SZ001F004</span>
										</div>
										<div style="margin-bottom: 5px;">
											<i class="iconfont icon-suggestion"
												style="color: #1296db; font-size: 1.25rem;"></i> <strong
												style="color: #2b4f6c;">项目名称：</strong> <input
												class="form-control form-control-sm"
												style="display: inline-block; width: 55%;" type="text"
												placeholder="请输入项目名称" name="projectname">
										</div>
										<div style="margin-bottom: 5px;">
											<i class="iconfont icon-zhaopingangwei"
												style="color: #1296db; font-size: 1.25rem;"></i> <strong
												style="color: #2b4f6c;">项目负责人：</strong> <label
												style="font-size: 15px;"><input type="checkbox"
												style="margin-left: 10px;" /><span style="color: #777777">张雨佳
											</span></label> <label style="font-size: 15px;"><input
												type="checkbox" style="margin-left: 10px;" /> <span
												style="color: #777777">万山</span> </label> <a href="#"
												style="font-size: 10px; color: grey;">其他</a>
										</div>

										<div style="margin-bottom: 5px;">
											<i class="iconfont icon-lunkuohua2_yonghu"
												style="color: #1296db; font-size: 1.25rem;"></i> <strong
												style="color: #2b4f6c;">项目成员：</strong>
											<div id="textadd" style="display: none;">
												<span style="color: black;">张琪，张培</span> <a href="#"
													style="font-size: 10px; color: grey;">重选</a>
											</div>
											<div class="layui-panel" id="imgadd">
												<!-- <div id="textadd" style="display: none;"><label>张培</label></div> -->
												<div
													style="padding: 0px 0px 10px 100px; display: inline-block;">
													<div style="display: inline-block; padding: 0px 5px;">
														<img src="../icon/add.png" width="39"
															style="border-radius: 50% !important;">
														<button type="button" class="layui-btn layui-btn-primary"
															style="border: none; padding: 0px;" data-toggle="modal"
															data-target="#exampleModal">添加</button>
														<!-- <span
															style="display: block; color: #101010; margin-left: 8px; font-size: 0.75px;">
															添加</span> -->
													</div>
												</div>
											</div>
										</div>
										<div style="margin-bottom: 5px;">
											<i class="iconfont icon-shoujizhengli"
												style="color: #1296db; font-size: 1.25rem;"></i> <strong
												style="color: #2b4f6c;">项目内容：</strong>
											<textarea class="form-control form-control-sm"
												style="display: inline-block; width: 75%;" rows="4"
												name="projectcontent"></textarea>
										</div>

										<div style="margin-bottom: 5px;">
											<i class="iconfont icon-shijian"
												style="color: #1296db; font-size: 1.25rem;"></i> <strong
												style="color: #2b4f6c;">起始时间：</strong> <input type="date"
												name="starttime" class="form-control form-control-sm"
												value="2000-01-01"
												style="display: inline-block; width: 75%;">
										</div>
										<div style="margin-bottom: 5px;">
											<i class="iconfont icon-jiezhishijian"
												style="color: #1296db; font-size: 1.15rem;"></i> <strong
												style="color: #2b4f6c;">结束时间：</strong> <input type="date"
												name="endtime" class="form-control form-control-sm"
												value="2021-09-01"
												style="display: inline-block; width: 75%;">
										</div>

										<div style="display: inline-block; padding-top: 25px;">
											<button class="layui-btn " onclick="saveFormproject()"
												style="background-color: #00a5cf; padding: 0 30px;">确定添加</button>
										</div>
										<a href="#"><span
											style="font-size: 12px; line-height: 40px; color: #838383; margin-left: 10px; float: right;">
												更多</span></a> <br>
									</form>
									
								</div>
							</div>
						</div>




						<div class="layui-col-md5 layui-col-md-offset1"
							style="margin-top: 20px;">
							<div class="layui-card">
								<div class="layui-card-header"
									style="background-color: #25a18e;">
									<strong style="color: #fff; font-size: 1.1rem;">待添加组员：</strong>
								</div>
								<div class="layui-card-body"
									style="margin-top: 20px; margin-left: 20px;">
									<div>
										<a href="#" class="layui-btn"
											style="background-color: #34a0a4;">A组</a> <a href="#"
											class="layui-btn layui-btn-primary">B组</a> <a href="#"
											class="layui-btn layui-btn-primary">C组</a> <a href="#"
											class="layui-btn layui-btn-primary">D组</a>
									</div>
									<div style="margin-top: 25px;">
										<div style="display: inline-block; padding: 0 10px;">
											<a><img id="drag1" src="../img/girl.png" width="69"
												style="border-radius: 50% !important; display: block;"></a>
											<strong
												style="display: block; color: #101010; margin-left: 20px;">
												张琪</strong>
										</div>

										<div style="display: inline-block; padding: 0 10px;">
											<img id="drag2" src="../img/girl2.png" width="69"
												style="border-radius: 50% !important;"> <strong
												style="display: block; color: #101010; margin-left: 20px;">
												张培</strong>
										</div>
										<div style="display: inline-block; padding: 0 10px;">
											<img id="drag3" src="../img/boy.png" width="69"
												style="border-radius: 50% !important;"> <strong
												style="display: block; color: #101010; margin-left: 20px;">
												王光</strong>
										</div>
									</div>

								</div>

							</div>
						</div>
					</div>


					<!-- 年末评价 -->
					<div class="layui-tab-item " id="item-NMPJ" style="display: none;">
						<div class="layui-col-md4"
							style="margin-top: 20px; margin-left: 20px;">
							<div class="layui-card" style="font-size: 1.0rem;">
								<div class="layui-card-header"
									style="background-color: #00a5cf;">
									<i class="iconfont icon-jia" style="color: #fff;"></i> <strong
										style="color: #fff; font-size: 1.1rem;">点击组员头像即可开始评价</strong>
								</div>
								<div class="layui-card-body"
									style="margin-top: 20px; margin-left: 20px;">
									<form method="post" id="form2">
										<div style="margin-bottom: 5px;">
											<i class="iconfont icon-lunkuohua2_yonghu"
												style="color: #5FB878;"></i> <label
												for="exampleInputNumber1"><strong
												style="color: #2b4f6c;">职员编号：</strong></label> <input type="text"
												class="form-control form-control-sm"
												style="display: inline-block; width: 60%;"
												id="exampleInputNumber1" placeholder=" ">
										</div>
										<div style="margin-bottom: 5px;">
											<i class="iconfont icon-xingbie" style="color: #5FB878;"></i>
											<label for="exampleInputName1"><strong
												style="color: #2b4f6c;">职员姓名：</strong></label> <input type="text"
												class="form-control form-control-sm"
												style="display: inline-block; width: 60%;"
												id="exampleInputName1" placeholder=" ">
										</div>
										<div style="margin-bottom: 5px;">
											<i class="iconfont icon-jiqiren2" style="color: #5FB878;"></i>
											<label for="exampleInputPosition1"><strong
												style="color: #2b4f6c;">职员岗位：</strong></label> <input type="text"
												class="form-control form-control-sm"
												style="display: inline-block; width: 60%;"
												id="exampleInputPosition1" placeholder=" ">
										</div>
										<div style="margin-bottom: 5px;">
											<i class="iconfont icon-zhaopingangwei"
												style="color: #5FB878;"></i> <strong style="color: #2b4f6c;">评价时间：</strong><span
												style="color: #777777;"><%=datestring%></span>
										</div>
										<div style="margin-bottom: 5px;">
											<i class="iconfont icon-shoujizhengli"
												style="color: #5FB878;"></i> <strong style="color: #2b4f6c;">评价内容：</strong>
										</div>

										<div class="layui-panel">
											<div
												style="padding: 0px 0px 0px 100px; display: inline-block;">
												<div style="margin-bottom: 5px;">
													<span style="color: #777777; padding-right: 10px;">工作能力</span>
													<div id="nlstar" class="star"
														style="display: inline-block;"></div>

												</div>
												<div style="margin-bottom: 5px;">
													<span style="color: #777777; padding-right: 10px;">工作效率</span>
													<div id="xlstar" class="star"
														style="display: inline-block;"></div>

												</div>
												<div style="margin-bottom: 5px;">
													<span style="color: #777777; padding-right: 10px;">发展潜力</span>
													<div id="fzstar" class="star"
														style="display: inline-block;"></div>
												</div>

												<div style="margin-bottom: 5px;">
													<span style="color: #777777; padding-right: 10px;">交流能力</span>
													<div id="ljstar" class="star"
														style="display: inline-block;"></div>

												</div>

												<div style="margin-bottom: 5px;">
													<span style="color: #777777; padding-right: 10px;">喜爱程度</span>
													<div id="xastar" class="star"
														style="display: inline-block;"></div>

												</div>
												<div style="margin-bottom: 5px;">
													<span style="color: #777777; padding-right: 48px;">其他</span>
													<input class="form-control form-control-sm"
														style="display: inline-block; width: 55%;" type="text"
														placeholder="请输入" name="other">
												</div>

											</div>
										</div>

										<div style="display: inline-block; padding-top: 25px;">
											<button class="layui-btn" onclick="saveForm()"
												style="background-color: #00a5cf; padding: 0 30px;">提交评价</button>
												

										</div>
										<a href="#"><span
											style="font-size: 12px; line-height: 40px; color: #838383; margin-left: 10px; float: right;">
												更多</span></a> <br>
									</form>
								</div>
							</div>
						</div>


						<div class="layui-col-md7"
							style="margin-top: 20px; margin-left: 20px; width: 62%;">
							<div class="layui-card">
								<div class="layui-card-header"
									style="background-color: #25a18e;">
									<strong style="color: #fff; font-size: 1.1rem;">待评价组员：</strong>
								</div>
								<div class="layui-card-body"
									style="margin-top: 20px; margin-left: 20px;">
									<div>
										<a href="#" class="layui-btn"
											style="background-color: #34a0a4;">A组</a> <a href="#"
											class="layui-btn layui-btn-primary">B组</a> <a href="#"
											class="layui-btn layui-btn-primary">C组</a> <a href="#"
											class="layui-btn layui-btn-primary">D组</a>
									</div>
									<div style="margin-top: 25px;">
										<div style="display: inline-block; padding-right: 10px;">
											<img id="drag1" src="../img/girl.png" width="69"
												style="border-radius: 50% !important; display: block;"
												onclick="pay1('11')"> <strong
												style="display: block; color: #101010; margin-left: 20px;">
												张琪</strong>
										</div>

										<div style="display: inline-block; padding: 0 10px;">
											<img id="drag2" src="../img/girl2.png" width="69"
												style="border-radius: 50% !important;" onclick="pay1('22')">
											<strong
												style="display: block; color: #101010; margin-left: 20px;">
												张培</strong>
										</div>
										<div style="display: inline-block; padding: 0 10px;">
											<img id="drag3" src="../img/boy.png" width="69"
												style="border-radius: 50% !important;" onclick="pay1('33')">
											<strong
												style="display: block; color: #101010; margin-left: 20px;">
												王光</strong>
										</div>
									</div>

									<!-- border: solid 1px black; -->
									<div id="rader1"
										style="margin-left: -30px; width: 370px; height: 320px; display: none;"></div>

									<div id="bar1"
										style="margin-right: -15px; width: 420px; height: 330px; display: none;"></div>
									<div id="rader2"
										style="margin-left: -30px; width: 370px; height: 320px; display: none;"></div>

									<div id="bar2"
										style="margin-right: -15px; width: 420px; height: 330px; display: none;"></div>
									<div id="rader3"
										style="margin-left: -30px; width: 370px; height: 320px; display: none;"></div>

									<div id="bar3"
										style="margin-right: -15px; width: 420px; height: 330px; display: none;"></div>
									<script
										src="https://code.highcharts.com.cn/highcharts/highcharts.js"></script>
									<script
										src="https://code.highcharts.com.cn/highcharts/highcharts-3d.js"></script>
									<script
										src="https://code.highcharts.com.cn/highcharts/modules/exporting.js"></script>
									<script
										src="https://img.hcharts.cn/highcharts-plugins/highcharts-zh_CN.js"></script>
									<script type="text/javascript"
										src="https://cdn.jsdelivr.net/npm/echarts/dist/echarts.min.js"></script>
									<script type="text/javascript"
										src="https://cdn.jsdelivr.net/npm/echarts-gl/dist/echarts-gl.min.js"></script>
									<script type="text/javascript"
										src="https://cdn.jsdelivr.net/npm/echarts-stat/dist/ecStat.min.js"></script>
									<script type="text/javascript"
										src="https://cdn.jsdelivr.net/npm/echarts/dist/extension/dataTool.min.js"></script>
									<script
										src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>

								</div>

							</div>
						</div>


					</div>
					<div class="masking">
						<!--遮罩-->
						<div class="layer">
							<!--弹窗-->
							<a class="close">x</a>
							<img src="../img/yes2.png" width="69" style="margin-left:30px;margin-top:20px;repeat:no-repeat;">
							<!--关闭-->
						</div>
					</div>

					<!-- 重大事件评价 -->
					<div class="layui-tab-item " id="item-ZDSJ" style="display: none;">
						<div class="layui-col-md5"
							style="margin-top: 20px; margin-left: 20px;">
							<div class="layui-card" style="font-size: 1.0rem;">
								<div class="layui-card-header"
									style="background-color: #00a5cf;">
									<i class="iconfont icon-jia" style="color: #fff;"></i> <strong
										style="color: #fff; font-size: 1.1rem;">点击组员头像即可开始评价</strong>
								</div>
								<div class="layui-card-body"
									style="margin-top: 20px; margin-left: 20px;">
									<form method="post" id="form3">
										<div style="margin-bottom: 5px;">
											<i class="iconfont icon-lunkuohua2_yonghu"
												style="color: #5FB878;"></i> <label
												for="exampleInputNumber2"><strong
												style="color: #2b4f6c;">职员编号：</strong></label> <input type="text"
												class="form-control form-control-sm"
												style="display: inline-block; width: 60%;"
												id="exampleInputNumber2" placeholder="">
										</div>
										<div style="margin-bottom: 5px;">
											<i class="iconfont icon-xingbie" style="color: #5FB878;"></i>
											<label for="exampleInputName2"><strong
												style="color: #2b4f6c;">职员姓名：</strong></label> <input type="text"
												class="form-control form-control-sm"
												style="display: inline-block; width: 60%;"
												id="exampleInputName2" placeholder="">
										</div>
										<div style="margin-bottom: 5px;">
											<i class="iconfont icon-jiqiren2" style="color: #5FB878;"></i>
											<label for="exampleInputPosition2"><strong
												style="color: #2b4f6c;">职员岗位：</strong></label> <input type="text"
												class="form-control form-control-sm"
												style="display: inline-block; width: 60%;"
												id="exampleInputPosition2" placeholder="">
										</div>
										<div style="margin-bottom: 5px;">
											<i class="iconfont icon-zhaopingangwei"
												style="color: #5FB878;"></i> <strong style="color: #2b4f6c;">评价时间：</strong><span
												style="color: #777777;"><%=datestring%></span>
										</div>

										<div style="margin-bottom: 5px;">
											<i class="iconfont icon-shoujizhengli"
												style="color: #5FB878;"></i> <strong style="color: #2b4f6c;">事件类型：</strong>
											<select class="form-control form-control-sm"
												style="display: inline-block; width: 35%;" name="kind">
												<option selected disabled style="display: none;" value="">请选择事件类型</option>
												<option>泄露机密</option>
												<option>打架斗殴</option>
												<option>其他</option>
											</select>
										</div>

										<div style="margin-bottom: 5px;">
											<i class="iconfont icon-shoujizhengli"
												style="color: #5FB878;"></i> <strong style="color: #2b4f6c;">事件描述：</strong>
											<textarea class="form-control form-control-sm"
												style="display: inline-block; width: 75%;" rows="3"
												name="description"></textarea>
										</div>

										<div style="margin-bottom: 5px;">
											<i class="iconfont icon-shoujizhengli"
												style="color: #5FB878;"></i> <strong style="color: #2b4f6c;">其他说明：</strong>
											<textarea class="form-control form-control-sm"
												style="display: inline-block; width: 75%;" rows="3"
												name="other"></textarea>

										</div>



										<div style="display: inline-block; padding-top: 25px;">
											<button class="layui-btn " onclick="saveFormbig()"
												style="background-color: #00a5cf; padding: 0 30px;">提交评价</button>

										</div>
										<a href="#"><span
											style="font-size: 12px; line-height: 40px; color: #838383; margin-left: 10px; float: right;">
												更多</span></a> <br>
									</form>
								</div>
							</div>
						</div>

						<div class="layui-col-md5 layui-col-md-offset1"
							style="margin-top: 20px;">
							<div class="layui-card">
								<div class="layui-card-header"
									style="background-color: #25a18e;">
									<strong style="color: #fff; font-size: 1.1rem;">待评价组员：</strong>
								</div>
								<div class="layui-card-body"
									style="margin-top: 20px; margin-left: 20px;">
									<div>
										<a href="#" class="layui-btn"
											style="background-color: #34a0a4;">A组</a> <a href="#"
											class="layui-btn layui-btn-primary">B组</a> <a href="#"
											class="layui-btn layui-btn-primary">C组</a> <a href="#"
											class="layui-btn layui-btn-primary">D组</a>
									</div>
									<div style="margin-top: 25px;">
										<div style="display: inline-block; padding-right: 10px;">
											<img id="drag1" src="../img/girl.png" width="69"
												style="border-radius: 50% !important; display: block;"
												onclick="pay2('11')"> <strong
												style="display: block; color: #101010; margin-left: 20px;">
												张琪</strong>
										</div>

										<div style="display: inline-block; padding: 0 10px;">
											<img id="drag2" src="../img/girl2.png" width="69"
												style="border-radius: 50% !important;" onclick="pay2('22')">
											<strong
												style="display: block; color: #101010; margin-left: 20px;">
												张培</strong>
										</div>
										<div style="display: inline-block; padding: 0 10px;">
											<img id="drag3" src="../img/boy.png" width="69"
												style="border-radius: 50% !important;" onclick="pay2('33')">
											<strong
												style="display: block; color: #101010; margin-left: 20px;">
												王光</strong>
										</div>
									</div>

								</div>

							</div>
						</div>


					</div>


				</div>
			</div>

			<%@ include file="lly-footer.jsp"%>
		</div>
	</div>
	<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div style="margin-left: 10px; margin-top: 10px;">
					<span style="margin-left: 6px; font-size: 25px; margin-top: 10px;">请勾选项目成员：</span>
				</div>
				<HR style="FILTER: alpha(opacity=0,finishopacity=100,style=1)" width="100%" color=#25a18e SIZE=3>
				 <label style="font-size: 20px;"><input type="checkbox"
					value="1" style="margin-left: 20px;" />张琪 </label> <label
					style="font-size: 20px;"><input type="checkbox" value="2"
					style="margin-left: 20px;" />张培 </label> <label style="font-size: 20px;"><input
					type="checkbox" value="3" style="margin-left: 20px;" />王光 </label> <label
					style="font-size: 20px;"><input type="checkbox" value="4"
					style="margin-left: 20px;" />赵子龙 </label>
				<div style="margin-left: 350px;">
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">取消</button>
					<button type="button" class="btn btn-primary" data-dismiss="modal"
						onclick="clicktest()">确定</button>
				</div>
				</br>
			</div>
		</div>
	</div>
	<script type="text/javascript" src="../dist/jquery.raty.min.js"></script>
	<script src="../res/layui/layui.js"></script>
	<script>
	function change(){
		$("#d1").css('display', 'none');
		$("#d2").css('display', 'block');			
	}
	function saveForm(){
		alert("评价成功！");
	form2.action="NianMoEvaluateServlet";
		document.form2.submit();
		
		return false;
	}
	function saveFormproject(){
		alert("添加成功！");
	form1.action="AddNewProjectServlet";
		document.form1.submit();
		
		return false;
	}
	function saveFormbig(){
		alert("评价成功！");
	form3.action="BigMistakeEvaluateServlet";
		document.form3.submit();
		
		return false;
	}
		//JavaScript代码区域
		layui.use('element', function() {
			var element = layui.element;
		});
		
		function clicktest(){
			$("#imgadd").css('display', 'none');
			$("#textadd").css('display', 'inline-block');
			
		}
	</script>

	<!-- 评分 -->
	<script>
		$('#nlstar').raty({
			half : true,
			path : '../icon/',
			score : 0,
		});

		$('#xlstar').raty({

			half : true,
			path : '../icon/',
			score : 0,
		});

		$('#fzstar').raty({

			half : true,
			path : '../icon/',
			score : 0,
		});

		$('#ljstar').raty({

			half : true,
			path : '../icon/',
			score : 0,
		});

		$('#xastar').raty({

			half : true,
			path : '../icon/',
			score : 0,
		});
	</script>

	<!-- 雷达图1 -->
	<script type="text/javascript">
		var dom = document.getElementById("rader1");
		var myChart = echarts.init(dom);
		var app = {};
		option = {
		    title:{
		        show:false,
		        text:"年度评价",
		        x:'center',
		        y:'top',
		        padding:10,
		        textStyle: {//主标题文本样式{"fontSize": 18,"fontWeight": "bolder","color": "#333"}
		                fontFamily: 'Arial',
		                fontSize: 22,
		                fontStyle: 'normal',
		                fontWeight: 'bold',
		            },
		    },
		
		    angleAxis: {
		        type: 'category',
		        data: ['工作能力', '工作效率', '发展潜力', '交流能力', '喜爱程度'],
		        textStyle : {
		　　　　　　　　fontWeight : 'normal',
		　　　　　　　　fontSize : 12,
		　　　　　　　　
		　　　　　　},
		    },
		    radiusAxis: {
		    	
		    },
		    polar: {
		    },
		    series: [{
		        type: 'bar',
		        data: [3, 0, 0, 0, 0],
		        coordinateSystem: 'polar',
		        name: '工作能力',
		        textStyle : {
		　　　　　　　　fontWeight : 'normal',
		　　　　　　　　fontSize : 12,
		　　　　　　},
		        stack: 'a',
		        emphasis: {
		            focus: 'series'
		        }
		    }, {
		        type: 'bar',
		        data: [0, 4, 0, 0, 0 ],
		        coordinateSystem: 'polar',
		        name: '工作效率',
		        stack: 'a',
		        emphasis: {
		            focus: 'series'
		        }
		    }, {
		        type: 'bar',
		        data: [0,0,4.5,0,0],
		        coordinateSystem: 'polar',
		        name: '发展潜力',
		        stack: 'a',
		        emphasis: {
		            focus: 'series'
		        }
		    }, {
		        type: 'bar',
		        data: [0,0,0,2,0],
		        coordinateSystem: 'polar',
		        name: '交流能力',
		        stack: 'a',
		        emphasis: {
		            focus: 'series'
		        }
		    }, {
		        type: 'bar',
		        data: [0,0,0,0,3.5],
		        coordinateSystem: 'polar',
		        name: '喜爱程度',
		        stack: 'a',
		        emphasis: {
		            focus: 'series'
		        }
		    }],
		    legend: {
		        show: false,
		        data: ['工作能力', '工作效率', '发展潜力', '交流能力', '喜爱程度'],
		        orient: 'horizontal', // 'vertical'
		        x:3, // 'center' | 'left' | {number},
		        y:0, // 'center' | 'bottom' | {number}
		        textStyle : {
		　　　　　　　　fontWeight : 'normal',
		　　　　　　　　fontSize : 10,
		　　　　　　},
		        borderColor: 'rgba(89, 100, 114,0.1)',
		        borderWidth: 2,
		    }
		};
		myChart.setOption(option);

       </script>

	<!-- 柱形图1 -->
	<script>
        var chart = Highcharts.chart('bar1', {
		chart: {
			type: 'column',
			options3d: {
				enabled: true,
				alpha: 0,
				beta: 0,
				viewDistance: 25,
				depth: 40
			},
			marginTop: 80,
			marginRight: 40
		},
		title: {
			text: '年度综合评分',
			style: {
				fontFamily: 'Arial',
	                fontSize: 18,
	                fontStyle: 'normal',
	                fontWeight: 'bold',
				},
	
		},
		xAxis: {
			categories:['工作量', '工作效率', '团队能力', '贡献力', '创造力', '领导力'],
			labels: {
	                style: {
	                    fontSize: '12px',
	                    fontWeight: 'bold'
	                }
	            }
	
		},
		yAxis: {
			allowDecimals: false,
			min: 0,
			title: {
				text: '评分',
				style: {
					color:'#596472',
	                fontSize: 12,
	                fontStyle: 'normal',
	                fontWeight: 'bold',
				},
			},
			labels: {
	                style: {
	                    fontSize: '12px',
	                    fontWeight: 'bold'
	                }
	            }
	
	
	
		},
		legend : {
	    itemStyle : {
	        'fontSize' : '12px'
	    }
	},
		tooltip: {
			headerFormat: '<b>{point.key}</b><br>',
			pointFormat: '<span style="color:{series.color}">\u25CF</span> {series.name}: {point.y} / {point.stackTotal}'
		},
		plotOptions: {
			column: {
				stacking: 'normal',
				depth: 40
			}
		},
		series: [{
			name: '部门平均得分',
			data: [ 23, 44, 57, 62,87,77],
			stack: 'male',
			color:'#90ed7d'
		}, {
			name: '个人得分',
			data: [30, 40, 34, 95,88,76],
			stack: 'female',
			color:'#f7a35c'
		}]
	});
        </script>

	<!-- 雷达图2 -->
	<script type="text/javascript">
		var dom = document.getElementById("rader2");
		var myChart = echarts.init(dom);
		var app = {};
		option = {
		    title:{
		        show:false,
		        text:"年度评价",
		        x:'center',
		        y:'top',
		        padding:10,
		        textStyle: {//主标题文本样式{"fontSize": 18,"fontWeight": "bolder","color": "#333"}
		                fontFamily: 'Arial',
		                fontSize: 22,
		                fontStyle: 'normal',
		                fontWeight: 'bold',
		            },
		    },
		
		    angleAxis: {
		        type: 'category',
		        data: ['工作能力', '工作效率', '发展潜力', '交流能力', '喜爱程度'],
		        textStyle : {
		　　　　　　　　fontWeight : 'normal',
		　　　　　　　　fontSize : 12,
		　　　　　　　　
		　　　　　　},
		    },
		    radiusAxis: {
		    	
		    },
		    polar: {
		    },
		    series: [{
		        type: 'bar',
		        data: [4, 0, 0, 0, 0],
		        coordinateSystem: 'polar',
		        name: '工作能力',
		        textStyle : {
		　　　　　　　　fontWeight : 'normal',
		　　　　　　　　fontSize : 12,
		　　　　　　},
		        stack: 'a',
		        emphasis: {
		            focus: 'series'
		        }
		    }, {
		        type: 'bar',
		        data:  [0, 3, 0, 0, 0 ],
		        coordinateSystem: 'polar',
		        name: '工作效率',
		        stack: 'a',
		        emphasis: {
		            focus: 'series'
		        }
		    }, {
		        type: 'bar',
		        data: [0,0,3.5,0,0],
		        coordinateSystem: 'polar',
		        name: '发展潜力',
		        stack: 'a',
		        emphasis: {
		            focus: 'series'
		        }
		    }, {
		        type: 'bar',
		        data: [0,0,0,2,0],
		        coordinateSystem: 'polar',
		        name: '交流能力',
		        stack: 'a',
		        emphasis: {
		            focus: 'series'
		        }
		    }, {
		        type: 'bar',
		        data: [0,0,0,0,4.5],
		        coordinateSystem: 'polar',
		        name: '喜爱程度',
		        stack: 'a',
		        emphasis: {
		            focus: 'series'
		        }
		    }],
		    legend: {
		        show: false,
		        data: ['工作能力', '工作效率', '发展潜力', '交流能力', '喜爱程度'],
		        orient: 'horizontal', // 'vertical'
		        x:3, // 'center' | 'left' | {number},
		        y:0, // 'center' | 'bottom' | {number}
		        textStyle : {
		　　　　　　　　fontWeight : 'normal',
		　　　　　　　　fontSize : 10,
		　　　　　　},
		        borderColor: 'rgba(89, 100, 114,0.1)',
		        borderWidth: 2,
		    }
		};
		myChart.setOption(option);

       </script>

	<!-- 柱形图2 -->
	<script>
        var chart = Highcharts.chart('bar2', {
		chart: {
			type: 'column',
			options3d: {
				enabled: true,
				alpha: 0,
				beta: 0,
				viewDistance: 25,
				depth: 40
			},
			marginTop: 80,
			marginRight: 40
		},
		title: {
			text: '年度综合评分',
			style: {
				fontFamily: 'Arial',
	                fontSize: 18,
	                fontStyle: 'normal',
	                fontWeight: 'bold',
				},
	
		},
		xAxis: {
			categories:['工作量', '工作效率', '团队能力', '贡献力', '创造力', '领导力'],
			labels: {
	                style: {
	                    fontSize: '12px',
	                    fontWeight: 'bold'
	                }
	            }
	
		},
		yAxis: {
			allowDecimals: false,
			min: 0,
			title: {
				text: '评分',
				style: {
					color:'#596472',
	                fontSize: 12,
	                fontStyle: 'normal',
	                fontWeight: 'bold',
				},
			},
			labels: {
	                style: {
	                    fontSize: '12px',
	                    fontWeight: 'bold'
	                }
	            }
	
	
	
		},
		legend : {
	    itemStyle : {
	        'fontSize' : '12px'
	    }
	},
		tooltip: {
			headerFormat: '<b>{point.key}</b><br>',
			pointFormat: '<span style="color:{series.color}">\u25CF</span> {series.name}: {point.y} / {point.stackTotal}'
		},
		plotOptions: {
			column: {
				stacking: 'normal',
				depth: 40
			}
		},
		series: [{
			name: '部门平均得分',
			data: [ 77, 87, 33, 45,34,30],
			stack: 'male',
			color:'#90ed7d'
		}, {
			name: '个人得分',
			data: [56, 50, 70,20,25,56],
			stack: 'female',
			color:'#f7a35c'
		}]
	});
        </script>

	<!-- 雷达图3 -->
	<script type="text/javascript">
		var dom = document.getElementById("rader3");
		var myChart = echarts.init(dom);
		var app = {};
		option = {
		    title:{
		        show:false,
		        text:"年度评价",
		        x:'center',
		        y:'top',
		        padding:10,
		        textStyle: {//主标题文本样式{"fontSize": 18,"fontWeight": "bolder","color": "#333"}
		                fontFamily: 'Arial',
		                fontSize: 22,
		                fontStyle: 'normal',
		                fontWeight: 'bold',
		            },
		    },
		
		    angleAxis: {
		        type: 'category',
		        data: ['工作能力', '工作效率', '发展潜力', '交流能力', '喜爱程度'],
		        textStyle : {
		　　　　　　　　fontWeight : 'normal',
		　　　　　　　　fontSize : 12,
		　　　　　　　　
		　　　　　　},
		    },
		    radiusAxis: {
		    	
		    },
		    polar: {
		    },
		    series: [{
		        type: 'bar',
		        data: [1, 0, 0, 0, 0],
		        coordinateSystem: 'polar',
		        name: '工作能力',
		        textStyle : {
		　　　　　　　　fontWeight : 'normal',
		　　　　　　　　fontSize : 12,
		　　　　　　},
		        stack: 'a',
		        emphasis: {
		            focus: 'series'
		        }
		    }, {
		        type: 'bar',
		        data:  [0, 5, 0, 0, 0 ],
		        coordinateSystem: 'polar',
		        name: '工作效率',
		        stack: 'a',
		        emphasis: {
		            focus: 'series'
		        }
		    }, {
		        type: 'bar',
		        data: [0,0,3,0,0],
		        coordinateSystem: 'polar',
		        name: '发展潜力',
		        stack: 'a',
		        emphasis: {
		            focus: 'series'
		        }
		    }, {
		        type: 'bar',
		        data: [0,0,0,4,0],
		        coordinateSystem: 'polar',
		        name: '交流能力',
		        stack: 'a',
		        emphasis: {
		            focus: 'series'
		        }
		    }, {
		        type: 'bar',
		        data: [0,0,0,0,3],
		        coordinateSystem: 'polar',
		        name: '喜爱程度',
		        stack: 'a',
		        emphasis: {
		            focus: 'series'
		        }
		    }],
		    legend: {
		        show: false,
		        data: ['工作能力', '工作效率', '发展潜力', '交流能力', '喜爱程度'],
		        orient: 'horizontal', // 'vertical'
		        x:3, // 'center' | 'left' | {number},
		        y:0, // 'center' | 'bottom' | {number}
		        textStyle : {
		　　　　　　　　fontWeight : 'normal',
		　　　　　　　　fontSize : 10,
		　　　　　　},
		        borderColor: 'rgba(89, 100, 114,0.1)',
		        borderWidth: 2,
		    }
		};
		myChart.setOption(option);

       </script>

	<!-- 柱形图3 -->
	<script>
        var chart = Highcharts.chart('bar3', {
		chart: {
			type: 'column',
			options3d: {
				enabled: true,
				alpha: 0,
				beta: 0,
				viewDistance: 25,
				depth: 40
			},
			marginTop: 80,
			marginRight: 40
		},
		title: {
			text: '年度综合评分',
			style: {
				fontFamily: 'Arial',
	                fontSize: 18,
	                fontStyle: 'normal',
	                fontWeight: 'bold',
				},
	
		},
		xAxis: {
			categories:['工作量', '工作效率', '团队能力', '贡献力', '创造力', '领导力'],
			labels: {
	                style: {
	                    fontSize: '12px',
	                    fontWeight: 'bold'
	                }
	            }
	
		},
		yAxis: {
			allowDecimals: false,
			min: 0,
			title: {
				text: '评分',
				style: {
					color:'#596472',
	                fontSize: 12,
	                fontStyle: 'normal',
	                fontWeight: 'bold',
				},
			},
			labels: {
	                style: {
	                    fontSize: '12px',
	                    fontWeight: 'bold'
	                }
	            }
	
	
	
		},
		legend : {
	    itemStyle : {
	        'fontSize' : '12px'
	    }
	},
		tooltip: {
			headerFormat: '<b>{point.key}</b><br>',
			pointFormat: '<span style="color:{series.color}">\u25CF</span> {series.name}: {point.y} / {point.stackTotal}'
		},
		plotOptions: {
			column: {
				stacking: 'normal',
				depth: 40
			}
		},
		series: [{
			name: '部门平均得分',
			data: [ 34, 67, 98, 45,34,30],
			stack: 'male',
			color:'#90ed7d'
		}, {
			name: '个人得分',
			data: [86, 50, 70,20,25,56],
			stack: 'female',
			color:'#f7a35c'
		}]
	});
        </script>

	<script>
		layui.use('element', function() {
			var $ = layui.jquery, element = layui.element; //Tab的切换功能，切换事件监听等，需要依赖element模块

			var active = {
				tabXMXX : function() {
					element.tabChange('demo', 'XMXX');
				},
				tabTJXM : function() {
					if ($("#item-TJXM")[0].style.display == "") {
					} else {
						element.tabAdd('demo', {
							title : '添加项目',
							id : 'TJXM'
						});
						$("#item-TJXM")[0].style.display = ""
					}
					element.tabChange('demo', 'TJXM');
				},
				tabNMPJ : function() {
					if ($("#item-NMPJ")[0].style.display == "") {
					} else {
						element.tabAdd('demo', {
							title : '年末评价',
							id : 'NMPJ'
						});
						$("#item-NMPJ")[0].style.display = ""
					}
					element.tabChange('demo', 'NMPJ');
				},
				tabZDSJ : function() {
					if ($("#item-ZDSJ")[0].style.display == "") {
					} else {
						element.tabAdd('demo', {
							title : '重大事件评价',
							id : 'ZDSJ'
						});
						$("#item-ZDSJ")[0].style.display = ""
					}
					element.tabChange('demo', 'ZDSJ');
				},
			};

			$('.site-demo-active').on('click', function() {
				var othis = $(this), type = othis.data('type');
				active[type] ? active[type].call(this, othis) : '';
			});

			//Hash地址的定位
			var layid = location.hash.replace(/^#demo=/, '');
			element.tabChange('demo', layid);

			element.on('tab(demo)', function(elem) {
				location.hash = 'demo=' + $(this).attr('lay-id');
			});

		});
	</script>

	<script>
		//触发按钮点击事件
		function pay1(reg) {
			//获取id
			var userid = reg;
			//alert(userid);
			getUserList1(userid);
			
			
		}

		//通过ajax向后台发送id触发查询并返回数据
		function getUserList1(userid) {

			$.post("${pageContext.request.contextPath}/jsp/AjaxServlet", {
				"userid" : userid
			}, function(r) {
				//打印返回的数据
				console.log(r);
				//切割返回的数据
				var recList = r;
				var entName = "";
				var userlist = new Array();//用户信息数组
				for (var i = 0; i < recList.length; i++) {

					if (recList[i] != ",") {
						var entName = entName + recList[i];

					}
					if (recList[i] == ",") {
						console.log(entName);
						userlist.push(entName);
						entName = "";
					}

				}
				//console.log(userlist[0]);
				var usernumber = userlist[0]; //获取用户姓名
				var username = userlist[1]; //获取用户性别
				var userposition = userlist[2]; //获取用户学历
				if(username=="张琪"){
					$("#rader1").css('display', 'inline-block');
					$("#bar1").css('display', 'inline-block');
					$("#rader2").css('display', 'none');
					$("#bar2").css('display', 'none');
					$("#rader3").css('display', 'none');
					$("#bar3").css('display', 'none');
				}else if(username=="张培"){
					$("#rader1").css('display', 'none');
					$("#bar1").css('display', 'none');
					$("#rader2").css('display', 'inline-block');
					$("#bar2").css('display', 'inline-block');
					$("#rader3").css('display', 'none');
					$("#bar3").css('display', 'none');
				}else if(username=="王光"){
					$("#rader1").css('display', 'none');
					$("#bar1").css('display', 'none');
					$("#rader2").css('display', 'none');
					$("#bar2").css('display', 'none');
					$("#rader3").css('display', 'inline-block');
					$("#bar3").css('display', 'inline-block');
				}
					
				//改变左侧输入框的内容
				var usernumberid = document
						.getElementById("exampleInputNumber1");
				usernumberid.value = usernumber;
				var usernameid = document.getElementById("exampleInputName1");
				usernameid.value = username;
				var userpositionid = document
						.getElementById("exampleInputPosition1");
				userpositionid.value = userposition;
				

			});

		}
		function pay2(reg) {
			//获取id
			var userid = reg;
			//alert(userid);
			getUserList2(userid);
			
			$("#rader").css('display', 'inline-block');
			$("#bar").css('display', 'inline-block');
		}

		//通过ajax向后台发送id触发查询并返回数据
		function getUserList2(userid) {

			$.post("${pageContext.request.contextPath}/jsp/AjaxServlet", {
				"userid" : userid
			}, function(r) {
				//打印返回的数据
				console.log(r);
				//切割返回的数据
				var recList = r;
				var entName = "";
				var userlist = new Array();//用户信息数组
				for (var i = 0; i < recList.length; i++) {

					if (recList[i] != ",") {
						var entName = entName + recList[i];

					}
					if (recList[i] == ",") {
						console.log(entName);
						userlist.push(entName);
						entName = "";
					}

				}
				//console.log(userlist[0]);
				var usernumber = userlist[0]; //获取用户姓名
				var username = userlist[1]; //获取用户性别
				var userposition = userlist[2]; //获取用户学历

				//改变左侧输入框的内容
				
				var usernumberid2 = document
						.getElementById("exampleInputNumber2");
				usernumberid2.value = usernumber;
				var usernameid2 = document.getElementById("exampleInputName2");
				usernameid2.value = username;
				var userpositionid2 = document
						.getElementById("exampleInputPosition2");
				userpositionid2.value = userposition;

			});

		}
	</script>

	<script>
  $(function() {
      $('#layer_btn').click(function() {
          $('.masking').fadeIn();
      })
      $('.close').click(function(event) {
          event.preventDefault;
          $('.masking').hide();
      });

      $('.masking').click(function(event) {
          event.preventDefault;
          $(this).hide();
      });
  })
</script>
</body>
</html>
