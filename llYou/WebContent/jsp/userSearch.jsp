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

<link rel="stylesheet" href="../lib/layui/css/layui.css" />
<script src="../lib/layui/layui.js"></script>
<link rel="stylesheet" href="../js/steps/steps.css" />

<link rel="stylesheet" href="../js/introduction/personaljl.css" />
<script src="../js/jquery-3.4.1.min.js"></script>

<script src="https://code.highcharts.com.cn/highcharts/highcharts.js"></script>
<script
	src="https://code.highcharts.com.cn/highcharts/modules/exporting.js"></script>
<script
	src="https://code.highcharts.com.cn/highcharts/modules/annotations.js"></script>
<script src="https://code.highcharts.com.cn/highcharts/modules/oldie.js"></script>
<script
	src="https://code.highcharts.com.cn/highcharts/highcharts-more.js"></script>

<style type="text/css">
.invoicebtn {
	display: none;
}

.layui-form-label {
	width: 115px
}

#transferDialoge .layui-form-item {
	line-height: 38px;
}

#transferDialoge .layui-form-item .layui-input-inline {
	width: 115px;
}
</style>

<style>
.layui-timeline-item {
	height: 55px;
}

.layui-timeline-item i {
	font-size: 25px;
}

.steps {
	padding-left: 13%;
}
</style>
<title>用户页面</title>
<link rel="stylesheet" href="../res/layui/css/layui.css">
</head>
<body class="layui-layout-body">
	<div class="layui-layout layui-layout-admin">
		<%@ include file="user-header.jsp"%>
		<div class="layui-side layui-bg-black">
			<div class="layui-side-scroll">
				<!-- 左侧导航区域（可配合layui已有的垂直导航） -->
				<%@ include file="user-card.jsp"%>

				<ul class="layui-nav layui-nav-tree" lay-filter="test">
					<li class="layui-nav-item layui-nav-itemed"><a class=""
						href="javascript:;">招聘查询</a>
						<dl class="layui-nav-child">
							<dd>
								<a href="#" class="site-demo-active" data-url="XXCX"
									data-id="XXCX" data-type="tabXXCX">招聘信息查询</a>
							</dd>
						</dl></li>
					<li class="layui-nav-item layui-nav-itemed"><a
						href="javascript:;">我的招聘</a>
						<dl class="layui-nav-child">
							<dd>
								<a href="#" class="site-demo-active" data-url="ZPJD"
									data-id="ZPJD" data-type="tabZPJD">我的招聘进度</a>
							</dd>
							<dd>
								<a href="#" class="site-demo-active" data-url="WDJL"
									data-id="WDJL" data-type="tabWDJL">我的简历</a>
							</dd>
						</dl></li>
				</ul>
			</div>
		</div>

		<div class="layui-body">
			<!-- 内容主体区域 -->
			<div class="layui-tab layui-tab-brief" lay-filter="demo">
				<ul class="layui-tab-title">
					<li class="layui-this" lay-id="XXCX">招聘信息查询 <!--lay-allowclose="true"(div) <i class="layui-icon layui-unselect layui-tab-close">ဆ</i> -->
					</li>
				</ul>
				<div class="layui-tab-content">
					<!-- 招聘信息查询  -->
					<div class="layui-tab-item layui-show" id="item-XXCX">
						<div>
							<form>
								<div class="form-row">
									<div class="form-group col-md">
										<select class="form-control">
											<option selected disabled style="display: none;" value="">请选择职位类别</option>
											<option>普通员工</option>
											<option>部门主管</option>
											<option>项目经理</option>
											<option>办公室主任</option>
											<option>hr</option>
											<option>其他</option>
										</select>
									</div>
									<div class="form-group col-md">
										<select class="form-control">
											<option selected disabled style="display: none;" value="">请选择行业类别</option>
											<option>互联网</option>
											<option>金融</option>
											<option>教育</option>
											<option>行政</option>
											<option>其他</option>
										</select>
									</div>
									<div class="form-group col-md">
										<select class="form-control">
											<option selected disabled style="display: none;" value="">理想薪资</option>
											<option>1W以下</option>
											<option>1W-3W</option>
											<option>3W-5W</option>
											<option>5W-7W</option>
											<option>7W以上</option>
										</select>
									</div>
									<div class="form-group col-md">
										<select class="form-control">
											<option selected disabled style="display: none;" value="">学历要求</option>
											<option>高中</option>
											<option>本科</option>
											<option>硕士</option>
											<option>博士</option>
											<option>其他</option>
										</select>
									</div>
									<div class="form-group col-md">
										<select class="form-control">
											<option selected disabled style="display: none;" value="">工作经历要求</option>
											<option>有经验</option>
											<option>无经验</option>
										</select>
									</div>
									<div class="form-group col-md-3">
										<input type="text" class="form-control"
											placeholder="请输入职位名、公司名等关键字">
									</div>
									<a class="layui-btn layui-btn-normal" onclick="change()">
										<i class="layui-icon layui-icon-search"
											style="font-size: 28px; color: #f0f0f0;"></i> <span
											style="line-height: 30px; font-size: 18px;color:#fff;">找工作</span>
									</a>
								</div>
							</form>
							<hr>
						</div>
						<div id="d1" style="display:block;">
							<%
								Dao dao = new Dao();
								List<CompanySeekBean> list = dao.getListCompanySeekInfo();
								for (CompanySeekBean ab : list) {
									
							%>
							<div class="layui-row"
								style="margin: 10px; padding: 5px; background-color: #F2F2F2;">
								<div class="layui-card">
									<%
										if ((ab.getCompany_location().equals("上海") && ab.getCompany_name().equals("安徽阿里"))
													|| (ab.getCompany_location().equals("福建") && ab.getCompany_name().equals("北京阿里"))) {
									%>
									<i class="iconfont icon-recommend"
										style="float: left; color: #ff6600; font-size: 44px; margin-top: -3px;"></i>
									<%
										}
									%><div class="layui-card-header">
										<i class="iconfont icon-dingwei"
											style="font-size: 20px; color: #009688"></i> <strong><%=ab.getCompany_location()%></strong>
										|
										<%=ab.getSeek_position()%>高薪 <a href="#"> <span class=""
											style="padding: 6px 3px 24px 10px; line-height: 20px;">
												<i class="iconfont icon-weixin"
												style="font-size: 15px; color: #00b48a;"></i> <span
												style="font-size: 12px; line-height: 20px; color: #a6a6a6;">简历投递</span>

										</span>
										</a>
									</div>
									<div class="layui-card-body">
										<table class="table table-borderless" style="margin: 0px;">
											<tbody>

												<tr>
													<td width="40%"><strong
														style="color: #f85659; font-size: 22px;">￥ <%=ab.getSalary()%>
															/ 月
													</strong> <br> <span class="layui-badge layui-bg-orange">免费午餐</span>
														<span class="layui-badge layui-bg-orange">公费旅游</span> <span
														class="layui-badge layui-bg-orange"><%=ab.getAdvantage()%></span>
														<br></td>
													<td width="30%">
														<%
															if (ab.getCompany_name().equals("安徽阿里") || ab.getCompany_name().equals("福建阿里")
																		|| ab.getCompany_name().equals("四川阿里") || ab.getCompany_name().equals("深圳阿里")) {
														%> <i class="iconfont icon-HNTE-fill"
														style="font-size: 22px; color: #ff552e;"> </i> <%
 	}
 %> <i class="iconfont icon-renzhengqiye"
														style="font-size: 22px; color: #1E9FFF;"> </i> <%=ab.getCompany_name()%>
														<i class="iconfont icon-renzheng"
														style="font-size: 22px; color: #1E9FFF;"></i> <a
														class="layui-btn-xs" href="enterpriseDraw.jsp"> <i
															class="iconfont icon-ziyuan25"
															style="font-size: 22px; color: #16c2c2;"></i> 查看企业画像，了解更多
													</a> <br> <span style="font-size: 12px; color: #c2c2c2;"><%=ab.getSeek_position()%>
															| <%=ab.getWork_experience()%> | 不限 </span>
													</td>
													<td></td>
													<td>
													<%if(ab.getApply().equals("1")){ %>
														<button type="button"
															class="layui-btn layui-btn-sm layui-btn-danger"
															style="margin: 0px;" data-toggle="modal"
															data-target="#exampleModal">
															<i class="layui-icon layui-icon-templeate-1"></i>申请
														</button><%} %> 
														<%if(ab.getApply().equals("2")){ %>
														<span style="color:grey;">已申请</span>
														<button type="button"
															class="layui-btn layui-btn-sm layui-btn-danger"
															style="margin-left: 10px;" data-toggle="modal"
															data-target="#exampleModal">
															<i class="layui-icon layui-icon-templeate-1"></i>再次申请
														</button><%} %> 
														<span style="margin-left: 10px; color: #c2c2c2;"><%=ab.getDeliver_time()%></span>
													</td>
												</tr>

											</tbody>
										</table>
									</div>
								</div>
							</div>
							<%
								}
							%>
						</div>
						<div id="d2" style="display:none;">
							<div class="layui-row"
								style="margin: 10px; padding: 5px; background-color: #F2F2F2;">
								<div class="layui-card">

									<i class="iconfont icon-recommend"
										style="float: left; color: #ff6600; font-size: 44px; margin-top: -3px;"></i>
									<div class="layui-card-header">


										<i class="iconfont icon-dingwei"
											style="font-size: 20px; color: #009688"></i> <strong>上海</strong>
										| 项目经理高薪 <a href="#"> <span class=""
											style="padding: 6px 3px 24px 10px; line-height: 20px;">
												<i class="iconfont icon-weixin"
												style="font-size: 15px; color: #00b48a;"></i> <span
												style="font-size: 12px; line-height: 20px; color: #a6a6a6;">简历投递</span>

										</span>
										</a>
									</div>
									<div class="layui-card-body">
										<table class="table table-borderless" style="margin: 0px;">
											<tbody>

												<tr>
													<td width="40%"><strong
														style="color: #f85659; font-size: 22px;">￥ 2W-4W
															/ 月 </strong> <br> <span class="layui-badge layui-bg-orange">免费午餐</span>
														<span class="layui-badge layui-bg-orange">公费旅游</span> <span
														class="layui-badge layui-bg-orange">五险一金，双休</span> <br></td>
													<td width="30%"><i class="iconfont icon-HNTE-fill"
														style="font-size: 22px; color: #ff552e;"> </i> <i
														class="iconfont icon-renzhengqiye"
														style="font-size: 22px; color: #1E9FFF;"> </i> 安徽阿里 <i
														class="iconfont icon-renzheng"
														style="font-size: 22px; color: #1E9FFF;"></i> <a
														class="layui-btn-xs" href="enterpriseDraw.jsp"> <i
															class="iconfont icon-ziyuan25"
															style="font-size: 22px; color: #16c2c2;"></i> 查看企业画像，了解更多
													</a> <br> <span style="font-size: 12px; color: #c2c2c2;">项目经理
															| 有过相关工作经验 | 不限 </span></td>
													<td></td>
													<td>
														<button type="button"
															class="layui-btn layui-btn-sm layui-btn-danger"
															style="margin: 0px;">
															<i class="layui-icon layui-icon-templeate-1"></i>申请
														</button> <span style="margin-left: 10px; color: #c2c2c2;">2020-07-23</span>
													</td>
												</tr>

											</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>
					</div>

					<!-- 我的招聘进度 -->
					<div class="layui-tab-item " id="item-ZPJD" style="display: none;">
						<div>
							<form style="float: right; margin-right: 15px;">
								<div class="form-row">
									<div class="form-group col-md">
										<input type="date" name="birth" class="form-control"
											value="2000-01-01">
									</div>
									<div class="form-group">
										<i class="layui-icon layui-icon-right"
											style="font-size: 30px;"></i>
									</div>
									<div class="form-group col-md">
										<input type="date" name="birth" class="form-control"
											value="2000-01-01">
									</div>
									<a href="#" type="submit"><i
										class="layui-icon layui-icon-search"
										style="font-size: 30px; color: #1E9FFF;"></i></a>
								</div>
							</form>
							<span style="float: right; line-height: 45px;">请选择时间段：</span>
							<hr>
						</div>
						<div class="layui-row" style="margin: 10px; padding: 5px;">

							<%
								List<UserSeekBean> list0 = dao.getListOwnSeekStepInfo();
								int i = 0;
								for (UserSeekBean ab : list0) {
							%>
							<div class="layui-col-md6">
								<div class="layui-card"
									style="margin-left: 10px; margin-top: 20px;">
									<blockquote class="layui-elem-quote">
										<div style="float: right;">
											<a class="layui-btn-xs" href="#" data-toggle="modal"
												data-target="#jzlModal"> <i
												class="iconfont icon-ziyuan25"
												style="font-size: 22px; color: #16c2c2;"></i> 查看竞争力分析
											</a>
										</div>
										<strong><%=ab.getCompany_name()%></strong> <span> <%=ab.getSeek_position()%></span><br>
										<small style="color: #8d8d8d;"> 本次投递已被企业处理，简历不可修改</small>
									</blockquote>

									<div class="layui-card-body">

										<div id="steps<%=i%>" class="steps"></div>
									</div>
								</div>
							</div>
							<%
								i++;
								}
							%>


						</div>
					</div>

					<!-- 我的简历 -->
					<div class="layui-tab-item " id="item-WDJL" style="display: none;">

						<div style="float: left; margin: 20px 0px -20px 30px;">
							<a href="#" class="layui-btn layui-btn-normal"
								style="background-color: #25a18e;"> <i
								class="iconfont icon-fabu" style="color: #fff; font-size: 22px;"></i>
								新建简历
							</a>
							<hr>
						</div>
						<div class="layui-row layui-col-space15">
							<div class="layui-col-md3" style="margin-left: 20px;">
								<div class="single-member effect-3"
									style="box-shadow: 2px 1px 8px #909090;">
									<div class="member-image">
										<img src="../img/person/p1.jpg" alt="Member">
									</div>
									<div class="member-info">
										<h3 style="margin-bottom: 16px;">未命名简历</h3>
										<h4 style="margin-bottom: 14px;">应聘岗位：JAVA工程师</h4>
										<div style="text-align: left;">
											<small style="color: #2b4f6c;">已投岗位：</small><br> <small
												class="gwS">字节跳动 - 算法工程师（远程实习）.</small><br> <small
												class="gwS">滴滴出行 - 视觉深度学习算法工程师.</small><br> <small
												class="gwS">酷家乐 - 运筹优化算法工程师.</small><br> <small
												class="gwS">同花顺智能资产有限公司 - 量化研究员.</small><br> <a
												class="layui-btn"
												style="margin-top: 12px; width: 100%; background-color: 009688; font-size: 18px;"
												href="#">查 看 详 情</a>

										</div>
									</div>
								</div>
							</div>


							<div class="layui-col-md3" style="margin-left: -20px;">
								<div class="single-member effect-3"
									style="box-shadow: 2px 1px 8px #909090;">
									<div class="member-image">
										<img src="../img/person/p1.jpg" alt="Member">
									</div>
									<div class="member-info">
										<h3 style="margin-bottom: 16px;">应聘c简历</h3>
										<h4 style="margin-bottom: 14px;">应聘岗位：C语言工程师</h4>
										<div style="text-align: left;">
											<small style="color: #2b4f6c;">已投岗位：</small><br> <small
												class="gwS">字节跳动 - 算法工程师（远程实习）.</small><br> <small
												class="gwS">滴滴出行 - 视觉深度学习算法工程师.</small><br> <small
												class="gwS">酷家乐 - 运筹优化算法工程师.</small><br> <small
												class="gwS">同花顺智能资产有限公司 - 量化研究员.</small><br> <a
												class="layui-btn"
												style="margin-top: 12px; width: 100%; background-color: 009688; font-size: 18px;"
												href="#">查 看 详 情</a>

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
		<!-- 竞争力Modal -->
		<div class="modal fade bd-example-modal-lg" id="jzlModal"
			tabindex="-1" role="dialog" aria-labelledby="jzlModalLabel"
			aria-hidden="true">
			<div class="modal-dialog modal-lg" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalLabel">你的竞争力分析</h5>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">
						<div id="circle"
							style="display: inline-block; width: 300px; height: 280px;">
						</div>

						<div id="line"
							style="display: inline-block; width: 460px; height: 280px;">
						</div>

						<div id="mount1"
							style="display: inline-block; width: 380px; height: 280px;">
						</div>

						<div id="mount2"
							style="display: inline-block; width: 380px; height: 280px;">
						</div>
					</div>
				</div>
			</div>
		</div>


		<!-- 岗位投递 -->
		<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
			aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div style="margin-left: 10px; margin-top: 10px;">
						<img src="../img/choose.png"
							style="border-radius: 30% !important; width: 30px;"><span
							style="margin-left: 6px; font-size: 25px; margin-top: 10px;">请选择你的简历</span>
					</div>
					</br> <small class="gwS">默认简历：</small>
					<div>
						<div class="layui-col-md3" style="margin-left: 20px;">
							<div class="single-member effect-3"
								style="box-shadow: 2px 1px 8px #909090;">
								<div class="member-image">
									<img src="../img/person/p1.jpg" alt="Member">
								</div>
								<div class="member-info">
									<h3 style="margin-bottom: 16px;">未命名简历</h3>
									<h4 style="margin-bottom: 14px;">应聘岗位：JAVA工程师</h4>
									<div style="text-align: left;">
										<small style="color: #2b4f6c;">已投岗位：</small><br> <small
											class="gwS">字节跳动 - 算法工程师（远程实习）.</small><br> <small
											class="gwS">滴滴出行 - 视觉深度学习算法工程师.</small><br> <small
											class="gwS">酷家乐 - 运筹优化算法工程师.</small><br> <small
											class="gwS">同花顺智能资产有限公司 - 量化研究员.</small><br> <a
											class="layui-btn"
											style="margin-top: 12px; width: 100%; background-color: 009688; font-size: 18px;"
											href="#">查 看 详 情</a>

									</div>
								</div>
							</div>
						</div>
						<button type="button" class="layui-btn"
							style="background: #007bff; float: right; margin-right: 50px; margin-top: 140px; padding: 0 10px;">选择其他简历</button>
					</div>
					</br> </br>
					<label style="font-size: 15px;margin-left:30px;"><input
												type="checkbox" checked/> <span
												style="color: #000000;">同意条款</span></label><label style="font-size: 15px;margin-left:30px;color:#777777;"><a onclick="showlaw()">查看条款</a></label>
					<div style="margin-left:30px;margin-right:30px;display:none;" id="law">请充分阅读并理解《用户协议》和《隐私政策》，点击同意按钮代表你已知悉并同意前述协议及以下约定：<br>1.在浏览使用时，我们可能会申请系统设备
					权限收集设备信息、日志信息，用于推送和安全风控，并申请存储权限，用于下载及缓存相关文件。<br>
					2.我们可能会申请位置权限，用于帮助你在发布的信息中展示位置或丰富信息推荐维度。城市/区县位置无需使用位置权限，仅通过ip地址确定"城市频道"中的城市
					及相关信息，不会收集精确位置信息。<br>3.上述权限以及摄像头、麦克风、相册（存储）、GPS\日历等权限均不会默认或强制开启收集信息。<br>4.为实现信息分享、第三方登录
					、参加相关活动、综合统计分析等目的所必须、我们可能会调用剪切板并使用与功能相关的最小必要信息。</div><br>
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
		<script src="../res/layui/layui.js"></script>
		<script>
		function change(){
			$("#d1").css('display', 'none');
			$("#d2").css('display', 'block');			
		}
		
			//JavaScript代码区域
			layui.use('element', function() {
				var element = layui.element;
			});
		</script>

		<script>
			$('#myModal').on('shown.bs.modal', function() {
				$('#myInput').trigger('focus')
			})
		</script>

		<script type="text/javascript"
			src="https://cdn.jsdelivr.net/npm/echarts/dist/echarts.min.js"></script>
		<script type="text/javascript"
			src="https://cdn.jsdelivr.net/npm/echarts-gl/dist/echarts-gl.min.js"></script>
		<script type="text/javascript"
			src="https://cdn.jsdelivr.net/npm/echarts-stat/dist/ecStat.min.js"></script>
		<script type="text/javascript"
			src="https://cdn.jsdelivr.net/npm/echarts/dist/extension/dataTool.min.js"></script>
		<script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>


		<!-- 综合实力排名 circle -->
		<script type="text/javascript">
			var dom = document.getElementById("circle");
			var myChart = echarts.init(dom);
			var app = {};

			option = {
				title : {
					show : true,
					text : "综合实力",
					subtext : "180位竞争者中排名",
					subtextStyle : {
						fontFamily : 'Arial',
						fontSize : 14,
						fontStyle : 'normal',
						fontWeight : 'normal',
					},
					x : "center",
					textStyle : {//主标题文本样式{"fontSize": 18,"fontWeight": "bolder","color": "#333"}
						fontFamily : 'Arial',
						fontSize : 18,
						fontStyle : 'normal',
						fontWeight : 'bold',
					},
				},

				series : [ {
					center : [ 150, 180 ],
					type : 'gauge',
					min : 0,
					max : 180,
					progress : {
						show : true,
						width : 18
					},
					axisLine : {
						lineStyle : {
							width : 16
						}
					},
					axisTick : {
						show : false
					},
					splitLine : {
						length : 15,
						lineStyle : {
							width : 2,
							color : '#999'
						}
					},
					axisLabel : {
						distance : 25,
						color : '#999',
						fontSize : 12
					},
					anchor : {
						show : true,
						showAbove : true,
						size : 25,
						itemStyle : {
							borderWidth : 10
						}
					},
					title : {
						show : false
					},
					detail : {
						valueAnimation : true,
						fontSize : 40,
						offsetCenter : [ 0, '70%' ]
					},
					data : [ {
						value : 70
					} ]
				} ]
			};
			myChart.setOption(option);
		</script>

		<!-- 简历匹配度 line -->
		<script>
			// Data generated from http://www.bikeforums.net/professional-cycling-fans/1113087-2017-tour-de-france-gpx-tcx-files.html
			var elevationData = [ [ 0.0, 225 ], [ 0.1, 226 ], [ 0.2, 228 ],
					[ 0.3, 228 ], [ 0.4, 229 ], [ 0.5, 229 ], [ 0.6, 230 ],
					[ 0.7, 234 ], [ 0.8, 235 ], [ 0.9, 236 ], [ 1.0, 235 ],
					[ 1.1, 232 ], [ 1.2, 228 ], [ 1.3, 223 ], [ 1.4, 218 ],
					[ 1.5, 214 ], [ 1.6, 207 ], [ 1.7, 202 ], [ 1.8, 198 ],
					[ 1.9, 196 ], [ 2.0, 197 ], [ 2.1, 200 ], [ 2.2, 205 ],
					[ 2.3, 206 ], [ 2.4, 210 ], [ 2.5, 210 ], [ 2.6, 210 ],
					[ 2.7, 209 ], [ 2.8, 208 ], [ 2.9, 207 ], [ 3.0, 209 ],
					[ 3.1, 208 ], [ 3.2, 207 ], [ 3.3, 207 ], [ 3.4, 206 ],
					[ 3.5, 206 ], [ 3.6, 205 ], [ 3.7, 201 ], [ 3.8, 195 ],
					[ 3.9, 191 ], [ 4.0, 191 ], [ 4.1, 195 ], [ 4.2, 199 ],
					[ 4.3, 203 ], [ 4.4, 208 ], [ 4.5, 208 ], [ 4.6, 208 ],
					[ 4.7, 208 ], [ 4.8, 209 ], [ 4.9, 207 ], [ 5.0, 207 ],
					[ 5.1, 208 ], [ 5.2, 209 ], [ 5.3, 208 ], [ 5.4, 210 ],
					[ 5.5, 209 ], [ 5.6, 209 ], [ 5.7, 206 ], [ 5.8, 207 ],
					[ 5.9, 209 ], [ 6.0, 211 ], [ 6.1, 206 ], [ 6.2, 201 ],
					[ 6.3, 199 ], [ 6.4, 200 ], [ 6.5, 202 ], [ 6.6, 203 ],
					[ 6.7, 202 ], [ 6.8, 204 ], [ 6.9, 206 ], [ 7.0, 208 ],
					[ 7.1, 205 ], [ 7.2, 202 ], [ 7.3, 198 ], [ 7.4, 198 ],
					[ 7.5, 198 ], [ 7.6, 198 ], [ 7.7, 198 ], [ 7.8, 199 ],
					[ 7.9, 197 ], [ 8.0, 194 ], [ 8.1, 194 ], [ 8.2, 195 ],
					[ 8.3, 195 ], [ 8.4, 196 ], [ 8.5, 192 ], [ 8.6, 200 ],
					[ 8.7, 197 ], [ 8.8, 194 ], [ 8.9, 194 ], [ 9.0, 193 ],
					[ 9.1, 192 ], [ 9.2, 192 ], [ 9.3, 193 ], [ 9.4, 191 ],
					[ 9.5, 191 ], [ 9.6, 193 ], [ 9.7, 193 ], [ 9.8, 194 ],
					[ 9.9, 192 ], [ 10.0, 192 ], [ 10.1, 192 ], [ 10.2, 192 ],
					[ 10.3, 192 ], [ 10.4, 193 ], [ 10.5, 193 ], [ 10.6, 193 ],
					[ 10.7, 193 ], [ 10.8, 194 ], [ 10.9, 194 ], [ 11.0, 194 ],
					[ 11.1, 195 ], [ 11.2, 194 ], [ 11.3, 194 ], [ 11.4, 194 ],
					[ 11.5, 194 ], [ 11.6, 193 ], [ 11.7, 194 ], [ 11.8, 194 ],
					[ 11.9, 194 ], [ 12.0, 195 ], [ 12.1, 195 ], [ 12.2, 195 ],
					[ 12.3, 197 ], [ 12.4, 197 ], [ 12.5, 197 ], [ 12.6, 198 ],
					[ 12.7, 201 ], [ 12.8, 202 ], [ 12.9, 203 ], [ 13.0, 205 ],
					[ 13.1, 205 ], [ 13.2, 204 ], [ 13.3, 210 ], [ 13.4, 213 ],
					[ 13.5, 212 ], [ 13.6, 213 ], [ 13.7, 213 ], [ 13.8, 213 ],
					[ 13.9, 214 ], [ 14.0, 214 ], [ 14.1, 212 ], [ 14.2, 209 ],
					[ 14.3, 207 ], [ 14.4, 207 ], [ 14.5, 208 ], [ 14.6, 211 ],
					[ 14.7, 215 ], [ 14.8, 219 ], [ 14.9, 219 ], [ 15.0, 221 ],
					[ 15.1, 224 ], [ 15.2, 224 ], [ 15.3, 225 ], [ 15.4, 225 ],
					[ 15.5, 225 ], [ 15.6, 225 ], [ 15.7, 225 ], [ 15.8, 225 ],
					[ 15.9, 226 ], [ 16.0, 226 ], [ 16.1, 227 ], [ 16.2, 227 ],
					[ 16.3, 230 ], [ 16.4, 231 ], [ 16.5, 231 ], [ 16.6, 232 ],
					[ 16.7, 230 ], [ 16.8, 229 ], [ 16.9, 228 ], [ 17.0, 226 ],
					[ 17.1, 226 ], [ 17.2, 224 ], [ 17.3, 223 ], [ 17.4, 224 ],
					[ 17.5, 223 ], [ 17.6, 221 ], [ 17.7, 220 ], [ 17.8, 218 ],
					[ 17.9, 217 ], [ 18.0, 216 ], [ 18.1, 216 ], [ 18.2, 215 ],
					[ 18.3, 214 ], [ 18.4, 213 ], [ 18.5, 212 ], [ 18.6, 212 ],
					[ 18.7, 213 ], [ 18.8, 214 ], [ 18.9, 215 ], [ 19.0, 215 ],
					[ 19.1, 216 ], [ 19.2, 217 ], [ 19.3, 216 ], [ 19.4, 216 ],
					[ 19.5, 217 ], [ 19.6, 219 ], [ 19.7, 218 ], [ 19.8, 218 ],
					[ 19.9, 220 ], [ 20.0, 224 ], [ 20.1, 224 ], [ 20.2, 225 ],
					[ 20.3, 224 ], [ 20.4, 225 ], [ 20.5, 228 ], [ 20.6, 228 ],
					[ 20.7, 227 ], [ 20.8, 228 ], [ 20.9, 228 ], [ 21.0, 228 ],
					[ 21.1, 229 ], [ 21.2, 225 ], [ 21.3, 223 ], [ 21.4, 222 ],
					[ 21.5, 222 ], [ 21.6, 223 ], [ 21.7, 224 ], [ 21.8, 224 ],
					[ 21.9, 226 ], [ 22.0, 228 ], [ 22.1, 233 ], [ 22.2, 237 ],
					[ 22.3, 237 ], [ 22.4, 238 ], [ 22.5, 236 ], [ 22.6, 232 ],
					[ 22.7, 232 ], [ 22.8, 228 ], [ 22.9, 227 ], [ 23.0, 227 ],
					[ 23.1, 227 ], [ 23.2, 227 ], [ 23.3, 226 ], [ 23.4, 226 ],
					[ 23.5, 226 ], [ 23.6, 226 ], [ 23.7, 226 ], [ 23.8, 226 ],
					[ 23.9, 226 ], [ 24.0, 228 ], [ 24.1, 228 ], [ 24.2, 229 ],
					[ 24.3, 230 ], [ 24.4, 230 ], [ 24.5, 233 ], [ 24.6, 235 ],
					[ 24.7, 234 ], [ 24.8, 234 ], [ 24.9, 233 ], [ 25.0, 233 ],
					[ 25.1, 232 ], [ 25.2, 232 ], [ 25.3, 232 ], [ 25.4, 232 ],
					[ 25.5, 234 ], [ 25.6, 234 ], [ 25.7, 234 ], [ 25.8, 234 ],
					[ 25.9, 237 ], [ 26.0, 238 ], [ 26.1, 238 ], [ 26.2, 238 ],
					[ 26.3, 240 ], [ 26.4, 240 ], [ 26.5, 244 ], [ 26.6, 241 ],
					[ 26.7, 241 ], [ 26.8, 245 ], [ 26.9, 254 ], [ 27.0, 262 ],
					[ 27.1, 255 ], [ 27.2, 255 ], [ 27.3, 251 ], [ 27.4, 252 ],
					[ 27.5, 253 ], [ 27.6, 253 ], [ 27.7, 251 ], [ 27.8, 251 ],
					[ 27.9, 254 ], [ 28.0, 255 ], [ 28.1, 257 ], [ 28.2, 259 ],
					[ 28.3, 259 ], [ 28.4, 259 ], [ 28.5, 260 ], [ 28.6, 258 ],
					[ 28.7, 258 ], [ 28.8, 262 ], [ 28.9, 260 ], [ 29.0, 262 ],
					[ 29.1, 266 ], [ 29.2, 268 ], [ 29.3, 270 ], [ 29.4, 278 ],
					[ 29.5, 276 ], [ 29.6, 278 ], [ 29.7, 282 ], [ 29.8, 281 ],
					[ 29.9, 284 ], [ 30.0, 287 ], [ 30.1, 292 ], [ 30.2, 303 ],
					[ 30.3, 309 ], [ 30.4, 317 ], [ 30.5, 324 ], [ 30.6, 334 ],
					[ 30.7, 334 ], [ 30.8, 319 ], [ 30.9, 321 ], [ 31.0, 333 ],
					[ 31.1, 337 ], [ 31.2, 345 ], [ 31.3, 352 ], [ 31.4, 386 ],
					[ 31.5, 398 ], [ 31.6, 406 ], [ 31.7, 416 ], [ 31.8, 423 ],
					[ 31.9, 425 ], [ 32.0, 425 ], [ 32.1, 424 ], [ 32.2, 423 ],
					[ 32.3, 421 ], [ 32.4, 421 ], [ 32.5, 422 ], [ 32.6, 421 ],
					[ 32.7, 421 ], [ 32.8, 421 ], [ 32.9, 421 ], [ 33.0, 421 ],
					[ 33.1, 423 ], [ 33.2, 435 ], [ 33.3, 450 ], [ 33.4, 451 ],
					[ 33.5, 452 ], [ 33.6, 452 ], [ 33.7, 452 ], [ 33.8, 452 ],
					[ 33.9, 455 ], [ 34.0, 459 ], [ 34.1, 465 ], [ 34.2, 469 ],
					[ 34.3, 473 ], [ 34.4, 476 ], [ 34.5, 480 ], [ 34.6, 483 ],
					[ 34.7, 487 ], [ 34.8, 490 ], [ 34.9, 494 ], [ 35.0, 497 ],
					[ 35.1, 502 ], [ 35.2, 504 ], [ 35.3, 507 ], [ 35.4, 511 ],
					[ 35.5, 514 ], [ 35.6, 518 ], [ 35.7, 521 ], [ 35.8, 524 ],
					[ 35.9, 527 ], [ 36.0, 528 ], [ 36.1, 525 ], [ 36.2, 526 ],
					[ 36.3, 528 ], [ 36.4, 528 ], [ 36.5, 528 ], [ 36.6, 529 ],
					[ 36.7, 528 ], [ 36.8, 526 ], [ 36.9, 525 ], [ 37.0, 524 ],
					[ 37.1, 524 ], [ 37.2, 524 ], [ 37.3, 525 ], [ 37.4, 528 ],
					[ 37.5, 528 ], [ 37.6, 532 ], [ 37.7, 534 ], [ 37.8, 538 ],
					[ 37.9, 540 ], [ 38.0, 544 ], [ 38.1, 546 ], [ 38.2, 554 ],
					[ 38.3, 555 ], [ 38.4, 559 ], [ 38.5, 566 ], [ 38.6, 568 ],
					[ 38.7, 571 ], [ 38.8, 571 ], [ 38.9, 570 ], [ 39.0, 569 ],
					[ 39.1, 567 ], [ 39.2, 567 ], [ 39.3, 566 ], [ 39.4, 566 ],
					[ 39.5, 566 ], [ 39.6, 566 ], [ 39.7, 566 ], [ 39.8, 566 ],
					[ 39.9, 565 ], [ 40.0, 563 ], [ 40.1, 562 ], [ 40.2, 563 ],
					[ 40.3, 563 ], [ 40.4, 562 ], [ 40.5, 562 ], [ 40.6, 562 ],
					[ 40.7, 561 ], [ 40.8, 563 ], [ 40.9, 561 ], [ 41.0, 559 ],
					[ 41.1, 559 ], [ 41.2, 559 ], [ 41.3, 558 ], [ 41.4, 559 ],
					[ 41.5, 560 ], [ 41.6, 560 ], [ 41.7, 560 ], [ 41.8, 559 ],
					[ 41.9, 557 ], [ 42.0, 556 ], [ 42.1, 555 ], [ 42.2, 555 ],
					[ 42.3, 556 ], [ 42.4, 557 ], [ 42.5, 557 ], [ 42.6, 557 ],
					[ 42.7, 557 ], [ 42.8, 557 ], [ 42.9, 557 ], [ 43.0, 557 ],
					[ 43.1, 557 ], [ 43.2, 558 ], [ 43.3, 559 ], [ 43.4, 560 ],
					[ 43.5, 563 ], [ 43.6, 566 ], [ 43.7, 570 ], [ 43.8, 572 ],
					[ 43.9, 575 ], [ 44.0, 573 ], [ 44.1, 576 ], [ 44.2, 577 ],
					[ 44.3, 579 ], [ 44.4, 581 ], [ 44.5, 584 ], [ 44.6, 591 ],
					[ 44.7, 593 ], [ 44.8, 594 ], [ 44.9, 596 ], [ 45.0, 599 ],
					[ 45.1, 601 ], [ 45.2, 601 ], [ 45.3, 604 ], [ 45.4, 607 ],
					[ 45.5, 607 ], [ 45.6, 607 ], [ 45.7, 607 ], [ 45.8, 605 ],
					[ 45.9, 607 ], [ 46.0, 609 ], [ 46.1, 612 ], [ 46.2, 613 ],
					[ 46.3, 614 ], [ 46.4, 614 ], [ 46.5, 614 ], [ 46.6, 616 ],
					[ 46.7, 616 ], [ 46.8, 615 ], [ 46.9, 615 ], [ 47.0, 618 ],
					[ 47.1, 617 ], [ 47.2, 615 ], [ 47.3, 614 ], [ 47.4, 613 ],
					[ 47.5, 613 ], [ 47.6, 613 ], [ 47.7, 613 ], [ 47.8, 612 ],
					[ 47.9, 612 ], [ 48.0, 609 ], [ 48.1, 610 ], [ 48.2, 603 ],
					[ 48.3, 598 ], [ 48.4, 598 ], [ 48.5, 596 ], [ 48.6, 595 ],
					[ 48.7, 593 ], [ 48.8, 590 ], [ 48.9, 587 ], [ 49.0, 583 ],
					[ 49.1, 580 ], [ 49.2, 576 ], [ 49.3, 569 ], [ 49.4, 568 ],
					[ 49.5, 566 ], [ 49.6, 560 ], [ 49.7, 559 ], [ 49.8, 558 ],
					[ 49.9, 562 ], [ 50.0, 564 ], [ 50.1, 563 ], [ 50.2, 563 ],
					[ 50.3, 567 ], [ 50.4, 574 ], [ 50.5, 577 ], [ 50.6, 580 ],
					[ 50.7, 581 ], [ 50.8, 579 ], [ 50.9, 579 ], [ 51.0, 578 ],
					[ 51.1, 574 ], [ 51.2, 569 ], [ 51.3, 564 ], [ 51.4, 558 ],
					[ 51.5, 554 ], [ 51.6, 550 ], [ 51.7, 543 ], [ 51.8, 539 ],
					[ 51.9, 536 ], [ 52.0, 532 ], [ 52.1, 530 ], [ 52.2, 529 ],
					[ 52.3, 528 ], [ 52.4, 528 ], [ 52.5, 528 ], [ 52.6, 528 ],
					[ 52.7, 527 ], [ 52.8, 527 ], [ 52.9, 528 ], [ 53.0, 529 ],
					[ 53.1, 528 ], [ 53.2, 526 ], [ 53.3, 526 ], [ 53.4, 524 ],
					[ 53.5, 519 ], [ 53.6, 517 ], [ 53.7, 517 ], [ 53.8, 522 ],
					[ 53.9, 521 ], [ 54.0, 520 ], [ 54.1, 518 ], [ 54.2, 513 ],
					[ 54.3, 518 ], [ 54.4, 520 ], [ 54.5, 523 ], [ 54.6, 526 ],
					[ 54.7, 522 ], [ 54.8, 513 ], [ 54.9, 512 ], [ 55.0, 513 ],
					[ 55.1, 513 ], [ 55.2, 518 ], [ 55.3, 522 ], [ 55.4, 526 ],
					[ 55.5, 526 ], [ 55.6, 525 ], [ 55.7, 522 ], [ 55.8, 520 ],
					[ 55.9, 519 ], [ 56.0, 518 ], [ 56.1, 518 ], [ 56.2, 518 ],
					[ 56.3, 517 ], [ 56.4, 516 ], [ 56.5, 517 ], [ 56.6, 517 ],
					[ 56.7, 517 ], [ 56.8, 521 ], [ 56.9, 522 ], [ 57.0, 518 ],
					[ 57.1, 517 ], [ 57.2, 514 ], [ 57.3, 515 ], [ 57.4, 513 ],
					[ 57.5, 511 ], [ 57.6, 511 ], [ 57.7, 511 ], [ 57.8, 510 ],
					[ 57.9, 510 ], [ 58.0, 509 ], [ 58.1, 509 ], [ 58.2, 509 ],
					[ 58.3, 509 ], [ 58.4, 509 ], [ 58.5, 509 ], [ 58.6, 509 ],
					[ 58.7, 509 ], [ 58.8, 509 ], [ 58.9, 510 ], [ 59.0, 510 ],
					[ 59.1, 521 ], [ 59.2, 524 ], [ 59.3, 528 ], [ 59.4, 533 ],
					[ 59.5, 539 ], [ 59.6, 545 ], [ 59.7, 551 ], [ 59.8, 562 ],
					[ 59.9, 572 ], [ 60.0, 579 ], [ 60.1, 585 ], [ 60.2, 593 ],
					[ 60.3, 596 ], [ 60.4, 605 ], [ 60.5, 617 ], [ 60.6, 620 ],
					[ 60.7, 627 ], [ 60.8, 628 ], [ 60.9, 627 ], [ 61.0, 627 ],
					[ 61.1, 628 ], [ 61.2, 629 ], [ 61.3, 632 ], [ 61.4, 634 ],
					[ 61.5, 638 ], [ 61.6, 637 ], [ 61.7, 638 ], [ 61.8, 639 ],
					[ 61.9, 640 ], [ 62.0, 640 ], [ 62.1, 639 ], [ 62.2, 639 ],
					[ 62.3, 637 ], [ 62.4, 637 ], [ 62.5, 636 ], [ 62.6, 637 ],
					[ 62.7, 636 ], [ 62.8, 637 ], [ 62.9, 635 ], [ 63.0, 629 ],
					[ 63.1, 626 ], [ 63.2, 626 ], [ 63.3, 623 ], [ 63.4, 621 ],
					[ 63.5, 621 ], [ 63.6, 621 ], [ 63.7, 622 ], [ 63.8, 625 ],
					[ 63.9, 626 ], [ 64.0, 629 ], [ 64.1, 631 ], [ 64.2, 633 ],
					[ 64.3, 631 ], [ 64.4, 632 ], [ 64.5, 634 ], [ 64.6, 637 ],
					[ 64.7, 637 ], [ 64.8, 637 ], [ 64.9, 637 ], [ 65.0, 638 ],
					[ 65.1, 641 ], [ 65.2, 644 ], [ 65.3, 646 ], [ 65.4, 649 ],
					[ 65.5, 648 ], [ 65.6, 647 ], [ 65.7, 647 ], [ 65.8, 649 ],
					[ 65.9, 650 ], [ 66.0, 651 ], [ 66.1, 654 ], [ 66.2, 652 ],
					[ 66.3, 651 ], [ 66.4, 650 ], [ 66.5, 650 ], [ 66.6, 649 ],
					[ 66.7, 648 ], [ 66.8, 648 ], [ 66.9, 648 ], [ 67.0, 649 ],
					[ 67.1, 650 ], [ 67.2, 647 ], [ 67.3, 642 ], [ 67.4, 641 ],
					[ 67.5, 638 ], [ 67.6, 636 ], [ 67.7, 635 ], [ 67.8, 633 ],
					[ 67.9, 636 ], [ 68.0, 638 ], [ 68.1, 639 ], [ 68.2, 641 ],
					[ 68.3, 643 ], [ 68.4, 644 ], [ 68.5, 645 ], [ 68.6, 649 ],
					[ 68.7, 651 ], [ 68.8, 648 ], [ 68.9, 645 ], [ 69.0, 640 ],
					[ 69.1, 637 ], [ 69.2, 637 ], [ 69.3, 637 ], [ 69.4, 635 ],
					[ 69.5, 630 ], [ 69.6, 628 ], [ 69.7, 625 ], [ 69.8, 622 ],
					[ 69.9, 620 ], [ 70.0, 618 ], [ 70.1, 613 ], [ 70.2, 612 ],
					[ 70.3, 608 ], [ 70.4, 603 ], [ 70.5, 599 ], [ 70.6, 597 ],
					[ 70.7, 591 ], [ 70.8, 590 ], [ 70.9, 587 ], [ 71.0, 584 ],
					[ 71.1, 584 ], [ 71.2, 582 ], [ 71.3, 574 ], [ 71.4, 572 ],
					[ 71.5, 570 ], [ 71.6, 572 ], [ 71.7, 573 ], [ 71.8, 575 ],
					[ 71.9, 578 ], [ 72.0, 590 ], [ 72.1, 595 ], [ 72.2, 595 ],
					[ 72.3, 579 ], [ 72.4, 581 ], [ 72.5, 583 ], [ 72.6, 583 ],
					[ 72.7, 583 ], [ 72.8, 583 ], [ 72.9, 580 ], [ 73.0, 579 ],
					[ 73.1, 584 ], [ 73.2, 587 ], [ 73.3, 594 ], [ 73.4, 597 ],
					[ 73.5, 597 ], [ 73.6, 596 ], [ 73.7, 593 ], [ 73.8, 591 ],
					[ 73.9, 596 ], [ 74.0, 596 ], [ 74.1, 598 ], [ 74.2, 598 ],
					[ 74.3, 595 ], [ 74.4, 592 ], [ 74.5, 592 ], [ 74.6, 592 ],
					[ 74.7, 594 ], [ 74.8, 597 ], [ 74.9, 600 ], [ 75.0, 601 ],
					[ 75.1, 605 ], [ 75.2, 604 ], [ 75.3, 604 ], [ 75.4, 607 ],
					[ 75.5, 607 ], [ 75.6, 607 ], [ 75.7, 604 ], [ 75.8, 605 ],
					[ 75.9, 608 ], [ 76.0, 616 ], [ 76.1, 618 ], [ 76.2, 629 ],
					[ 76.3, 633 ], [ 76.4, 634 ], [ 76.5, 637 ], [ 76.6, 644 ],
					[ 76.7, 650 ], [ 76.8, 653 ], [ 76.9, 653 ], [ 77.0, 657 ],
					[ 77.1, 664 ], [ 77.2, 668 ], [ 77.3, 668 ], [ 77.4, 668 ],
					[ 77.5, 672 ], [ 77.6, 674 ], [ 77.7, 679 ], [ 77.8, 681 ],
					[ 77.9, 689 ], [ 78.0, 692 ], [ 78.1, 704 ], [ 78.2, 708 ],
					[ 78.3, 714 ], [ 78.4, 716 ], [ 78.5, 719 ], [ 78.6, 722 ],
					[ 78.7, 729 ], [ 78.8, 733 ], [ 78.9, 735 ], [ 79.0, 736 ],
					[ 79.1, 737 ], [ 79.2, 737 ], [ 79.3, 737 ], [ 79.4, 737 ],
					[ 79.5, 736 ], [ 79.6, 736 ], [ 79.7, 736 ], [ 79.8, 737 ],
					[ 79.9, 737 ], [ 80.0, 737 ], [ 80.1, 737 ], [ 80.2, 738 ],
					[ 80.3, 739 ], [ 80.4, 739 ], [ 80.5, 739 ], [ 80.6, 741 ],
					[ 80.7, 741 ], [ 80.8, 741 ], [ 80.9, 741 ], [ 81.0, 743 ],
					[ 81.1, 744 ], [ 81.2, 744 ], [ 81.3, 744 ], [ 81.4, 744 ],
					[ 81.5, 746 ], [ 81.6, 748 ], [ 81.7, 757 ], [ 81.8, 753 ],
					[ 81.9, 752 ], [ 82.0, 751 ], [ 82.1, 748 ], [ 82.2, 746 ],
					[ 82.3, 756 ], [ 82.4, 755 ], [ 82.5, 748 ], [ 82.6, 745 ],
					[ 82.7, 749 ], [ 82.8, 752 ], [ 82.9, 753 ], [ 83.0, 753 ],
					[ 83.1, 755 ], [ 83.2, 764 ], [ 83.3, 766 ], [ 83.4, 771 ],
					[ 83.5, 774 ], [ 83.6, 775 ], [ 83.7, 777 ], [ 83.8, 778 ],
					[ 83.9, 778 ], [ 84.0, 780 ], [ 84.1, 780 ], [ 84.2, 782 ],
					[ 84.3, 783 ], [ 84.4, 786 ], [ 84.5, 791 ], [ 84.6, 792 ],
					[ 84.7, 787 ], [ 84.8, 782 ], [ 84.9, 780 ], [ 85.0, 777 ],
					[ 85.1, 777 ], [ 85.2, 777 ], [ 85.3, 777 ], [ 85.4, 770 ],
					[ 85.5, 768 ], [ 85.6, 764 ], [ 85.7, 763 ], [ 85.8, 758 ],
					[ 85.9, 757 ], [ 86.0, 760 ], [ 86.1, 759 ], [ 86.2, 756 ],
					[ 86.3, 751 ], [ 86.4, 748 ], [ 86.5, 748 ], [ 86.6, 747 ],
					[ 86.7, 746 ], [ 86.8, 745 ], [ 86.9, 746 ], [ 87.0, 746 ],
					[ 87.1, 747 ], [ 87.2, 742 ], [ 87.3, 738 ], [ 87.4, 733 ],
					[ 87.5, 730 ], [ 87.6, 730 ], [ 87.7, 727 ], [ 87.8, 725 ],
					[ 87.9, 722 ], [ 88.0, 519 ], [ 88.1, 518 ], [ 88.2, 516 ],
					[ 88.3, 512 ], [ 88.4, 510 ], [ 88.5, 508 ], [ 88.6, 407 ],
					[ 88.7, 405 ], [ 88.8, 499 ], [ 88.9, 495 ], [ 89.0, 486 ],
					[ 89.1, 474 ], [ 89.2, 471 ], [ 89.3, 470 ], [ 89.4, 470 ],
					[ 89.5, 469 ], [ 89.6, 468 ], [ 89.7, 469 ], [ 89.8, 470 ],
					[ 89.9, 472 ], [ 90.0, 479 ], [ 90.1, 381 ], [ 90.2, 384 ],
					[ 90.3, 389 ], [ 90.4, 393 ], [ 90.5, 397 ], [ 90.6, 301 ],
					[ 90.7, 305 ], [ 90.8, 308 ], [ 90.9, 309 ], [ 91.0, 312 ],
					[ 91.1, 314 ], [ 91.2, 316 ], [ 91.3, 206 ], [ 91.4, 297 ],
					[ 91.5, 289 ], [ 91.6, 281 ], [ 91.7, 277 ], [ 91.8, 268 ],
					[ 91.9, 263 ], [ 92.0, 261 ], [ 92.1, 253 ], [ 92.2, 252 ],
					[ 92.3, 250 ], [ 92.4, 247 ], [ 92.5, 246 ], [ 92.6, 245 ],
					[ 92.7, 242 ], [ 92.8, 240 ], [ 92.9, 240 ], [ 93.0, 251 ],
					[ 93.1, 248 ], [ 93.2, 157 ], [ 93.3, 160 ], [ 93.4, 160 ],
					[ 93.5, 162 ], [ 93.6, 172 ], [ 93.7, 175 ], [ 93.8, 181 ],
					[ 93.9, 185 ], [ 94.0, 94 ], [ 94.1, 80 ], [ 94.2, 97 ],
					[ 94.3, 16 ], [ 94.4, 20 ], [ 94.5, 23 ], [ 94.6, 27 ],
					[ 94.7, 27 ], [ 94.8, 28 ], [ 94.9, 27 ], [ 95.0, 27 ],
					[ 95.1, 27 ], [ 95.2, 30 ], [ 95.3, 35 ], [ 95.4, 44 ],
					[ 95.5, 49 ], [ 95.6, 53 ], [ 95.7, 59 ], [ 95.8, 62 ],
					[ 95.9, 67 ], [ 96.0, 82 ], [ 96.1, 81 ], [ 96.2, 83 ],
					[ 96.3, 85 ], [ 96.4, 89 ], [ 96.5, 96 ], [ 96.6, 07 ],
					[ 96.7, 13 ], [ 96.8, 19 ], [ 96.9, 22 ], [ 97.0, 24 ],
					[ 97.1, 26 ], [ 97.2, 30 ], [ 97.3, 32 ], [ 97.4, 36 ],
					[ 97.5, 38 ], [ 97.6, 42 ], [ 97.7, 47 ], [ 97.8, 48 ],
					[ 97.9, 54 ], [ 98.0, 55 ], [ 98.1, 58 ], [ 98.2, 63 ],
					[ 98.3, 70 ], [ 98.4, 75 ], [ 98.5, 83 ], [ 98.6, 89 ],
					[ 98.7, 96 ], [ 98.8, 74 ], [ 98.9, 10 ], [ 99.0, 96 ],
					[ 99.1, 92 ], [ 99.2, 97 ], [ 99.3, 31 ], [ 99.4, 38 ],
					[ 99.5, 41 ], [ 99.6, 89 ], [ 99.7, 54 ], [ 99.8, 62 ],
					[ 99.9, 67 ], [ 100.0, 76 ],

			];

			// 初始化图标
			var chart = Highcharts.chart('line', {
				chart : {
					type : 'area',
					zoomType : 'x',
					panning : true,
					panKey : 'shift'
				},
				title : {
					text : '简历匹配度',
					style : {
						fontFamily : 'Arial',
						fontSize : 18,
						fontStyle : 'normal',
						fontWeight : 'bold',
					},
				},
				subtitle : {
					text : '高于64%的竞争者',
					style : {
						fontFamily : 'Arial',
						fontSize : 14,
						fontStyle : 'normal',
						fontWeight : 'normal',
					},
				},
				annotations : [ {
					labelOptions : {
						backgroundColor : 'rgba(255,255,255,0.5)',
						verticalAlign : 'top',
						y : 15
					},
				//  labels: [

				// {
				//     point: {
				//         xAxis: 0,
				//         yAxis: 0,
				//         x: 64.0,
				//         y: 629
				//     },
				//     text: '你的匹配度',

				// 	style: {
				//             fontSize: '16px',
				//             fontWeight: 'bold',
				//             color:'#000'
				//         }
				// 		  }

				// ]
				}, {
					labels : [ {
						point : {
							xAxis : 0,
							yAxis : 0,
							x : 101.44,
							y : 1026
						},
						x : -30,
						text : 'Col de la Joux'
					}, {
						point : {
							xAxis : 0,
							yAxis : 0,
							x : 138.5,
							y : 748
						},
						text : 'Côte de Viry'
					}, {
						point : {
							xAxis : 0,
							yAxis : 0,
							x : 176.4,
							y : 1202
						},
						text : 'Montée de la Combe<br>de Laisia Les Molunes'
					} ]
				}, {
					labelOptions : {
						shape : 'connector',
						align : 'right',
						justify : false,
						crop : true,
						style : {
							fontSize : '0.8em',
							textOutline : '1px white'
						}
					},
					labels : [ {
						point : {
							xAxis : 0,
							yAxis : 0,
							x : 64.0,
							y : 629
						},
						text : '匹配得分 87分',

						style : {
							fontSize : '16px',
							fontWeight : 'bold',
							color : '#5a86fe'
						}

					} ]
				} ],
				xAxis : {
					labels : {
						format : '{value} %',
						style : {
							fontSize : 14,

						}
					},
					minRange : 5,
					title : {
						text : ''
					}
				},
				yAxis : {
					startOnTick : true,
					endOnTick : false,
					maxPadding : 0.35,
					title : {
						text : null
					},

					labels : {
						enabled : false
					}

				},
				tooltip : {
					headerFormat : '',
					pointFormat : '',
					shared : true
				},
				legend : {
					enabled : false
				},
				series : [ {
					data : elevationData,
					lineColor : '#5d7bdf',
					color : '#e2e6ff',
					fillOpacity : 0.5,
					name : '匹配度',
					marker : {
						enabled : false
					},
					threshold : null
				} ]
			});
		</script>

		<!-- 职位招聘情况 mount1 -->
		<script>
			Highcharts.chart('mount1', {
				chart : {
					type : 'columnpyramid'
				},
				title : {
					text : '职位招聘情况',
					style : {
						fontFamily : 'Arial',
						fontSize : 18,
						fontStyle : 'normal',
						fontWeight : 'bold',
					},
				},
				subtitle : {
					text : "面试人数较多",
					style : {
						fontFamily : 'Arial',
						fontSize : 14,
						fontStyle : 'normal',
						fontWeight : 'normal',
					},
				},
				colors : [ '#eaeaea', '#eaeaea', '#5988fd' ],
				xAxis : {
					crosshair : true,
					labels : {
						style : {
							fontSize : '14px',
							fontWeight : 'bold'
						}
					},
					type : 'category'
				},
				yAxis : {
					title : "",
					labels : {
						enabled : false
					}
				},
				tooltip : {},
				series : [ {
					name : 'Height',
					colorByPoint : true,
					data : [ [ '沟通中', 30 ], [ '已投递', 134 ], [ '已面试', 104 ], ],
					showInLegend : false
				} ]
			});
		</script>

		<!-- 学历情况 mount2 -->
		<script type="text/javascript">
			Highcharts.chart('mount2', {
				chart : {
					type : 'columnpyramid'
				},
				title : {
					text : '学历情况',
					style : {
						fontFamily : 'Arial',
						fontSize : 18,
						fontStyle : 'normal',
						fontWeight : 'bold',
					},
				},
				subtitle : {
					text : "有很强的竞争优势",
					style : {
						fontFamily : 'Arial',
						fontSize : 14,
						fontStyle : 'normal',
						fontWeight : 'normal',
					},
				},
				colors : [ '#eaeaea', '#eaeaea', '#5988fd', '#eaeaea',
						'#eaeaea' ],
				xAxis : {
					crosshair : true,
					labels : {
						style : {
							fontSize : '14px',
							fontWeight : 'bold'
						}
					},
					type : 'category'
				},
				yAxis : {
					title : "",
					labels : {
						enabled : false
					}
				},
				tooltip : {},
				series : [ {
					name : 'Height',
					colorByPoint : true,
					data : [ [ '大专', 30 ], [ '本科', 134 ], [ '硕士', 64 ],
							[ '博士', 24 ], [ '其他', 134 ], ],
					showInLegend : false
				} ]
			});
		</script>


		<!-- 步骤条 -->
		<script>
			function clicktest() {
				window.location.href="ApplyServlet";
				
			}
			function showlaw() {
			$("#law").css('display', 'block');
			}
			layui.config({
				base : '../js/steps/',
			}).use('steps');
			layui.use([ 'table', 'form', 'jquery', 'laypage', 'element',
					'layer', 'steps' ], function() {
				var $ = layui.jquery, steps = layui.steps;

				var data = [ {
					'title' : "投递简历",
					"desc" : "2021-03-23"
				}, {
					'title' : "简历初选",
					"desc" : "2021-04-11"
				}, {
					'title' : "一轮面试",
					"desc" : "暂定"
				}, {
					'title' : "二轮面试",
					"desc" : "暂定"
				}, ];

				rendersteps(2); //现在的步骤是0
				function rendersteps(step) {
					steps.render(data, '#steps0', step);
				}

			});
		</script>

		<script>
			layui.config({
				base : '../js/steps/',
			}).use('steps');
			layui.use([ 'table', 'form', 'jquery', 'laypage', 'element',
					'layer', 'steps' ], function() {
				var $ = layui.jquery, steps = layui.steps;

				var data = [ {
					'title' : "投递简历",
					"desc" : "2021-03-23"
				}, {
					'title' : "简历初选",
					"desc" : "暂定"
				}, {
					'title' : "一轮面试",
					"desc" : "暂定"
				}, {
					'title' : "二轮面试",
					"desc" : "暂定"
				}, ];

				rendersteps(1); //现在的步骤是0
				function rendersteps(step) {
					steps.render(data, '#steps1', step);
				}

			});
		</script>

		<script>
			layui.config({
				base : '../js/steps/',
			}).use('steps');
			layui.use([ 'table', 'form', 'jquery', 'laypage', 'element',
					'layer', 'steps' ], function() {
				var $ = layui.jquery, steps = layui.steps;

				var data = [ {
					'title' : "投递简历",
					"desc" : "2021-03-23"
				}, {
					'title' : "简历初选",
					"desc" : "2021-03-24"
				}, {
					'title' : "一轮面试",
					"desc" : "2021-03-28"
				}, {
					'title' : "二轮面试",
					"desc" : "暂定"
				}, ];

				rendersteps(3); //现在的步骤是0
				function rendersteps(step) {
					steps.render(data, '#steps2', step);
				}

			});
		</script>

		<script>
			layui.config({
				base : '../js/steps/',
			}).use('steps');
			layui.use([ 'table', 'form', 'jquery', 'laypage', 'element',
					'layer', 'steps' ], function() {
				var $ = layui.jquery, steps = layui.steps;

				var data = [ {
					'title' : "投递简历",
					"desc" : "2021-03-23"
				}, {
					'title' : "简历初选",
					"desc" : "暂定"
				}, {
					'title' : "一轮面试",
					"desc" : "暂定"
				}, {
					'title' : "二轮面试",
					"desc" : "暂定"
				}, ];

				rendersteps(1); //现在的步骤是0
				function rendersteps(step) {
					steps.render(data, '#steps3', step);
				}

			});
		</script>

		<script>
			layui.use('element', function() {
				var $ = layui.jquery, element = layui.element; //Tab的切换功能，切换事件监听等，需要依赖element模块
				//触发事件content : '内容' + (Math.random() * 1000 | 0),
				//$("#item-ZPJD").style.display="none";
				//$("#item-XXCX").style.display="";
				var active = {
					tabXXCX : function() {
						element.tabChange('demo', 'XXCX');
					},
					tabZPJD : function() {
						if ($("#item-ZPJD")[0].style.display == "") {
						} else {
							element.tabAdd('demo', {
								title : '我的招聘进度',
								id : 'ZPJD'
							});
							$("#item-ZPJD")[0].style.display = ""
						}
						element.tabChange('demo', 'ZPJD');
					},
					tabWDJL : function() {
						if ($("#item-WDJL")[0].style.display == "") {
						} else {
							element.tabAdd('demo', {
								title : '我的简历',
								id : 'WDJL'
							});
							$("#item-WDJL")[0].style.display = ""
						}
						element.tabChange('demo', 'WDJL');
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
			//JavaScript代码区域
		</script>
	</div>
</body>
</html>
