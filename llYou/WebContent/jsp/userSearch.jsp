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
									<a href="#" class="layui-btn layui-btn-normal" type="submit">
										<i class="layui-icon layui-icon-search"
										style="font-size: 28px; color: #f0f0f0;"></i> <span
										style="line-height: 30px; font-size: 18px;">找工作</span>
									</a>
								</div>
							</form>
							<hr>
						</div>
						<%
							Dao dao = new Dao();
							List<CompanySeekBean> list = dao.getListCompanySeekInfo();
							for (CompanySeekBean ab : list) {
						%>
						<div class="layui-row"
							style="margin: 10px; padding: 5px; background-color: #F2F2F2;">
							<div class="layui-card">
							<i class="iconfont icon-recommend" style="float:left;color:#ff6600;font-size:44px;margin-top:-3px;"></i>
								<div class="layui-card-header">
								
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
												if(ab.getCompany_name().equals("安徽阿里")||ab.getCompany_name().equals("福建阿里")||ab.getCompany_name().equals("四川阿里")||ab.getCompany_name().equals("深圳阿里")){%>
												<i class="iconfont icon-HNTE-fill"
													style="font-size: 22px; color: #ff552e;">
													</i> 
													<%} %>
													
													<i
													class="iconfont icon-renzhengqiye"
													style="font-size: 22px; color: #1E9FFF;">
													</i> 
													
													<%=ab.getCompany_name()%>
													<i class="iconfont icon-renzheng"
													style="font-size: 22px; color: #1E9FFF;"></i> <a
													class="layui-btn-xs" href="enterpriseDraw.jsp"> <i
														class="iconfont icon-ziyuan25"
														style="font-size: 22px; color: #16c2c2;"></i> 查看企业画像，了解更多
												</a> <br> <span style="font-size: 12px; color: #c2c2c2;"><%=ab.getSeek_position()%>
														| <%=ab.getWork_experience()%> | 不限 </span></td>
												<td></td>
												<td>
													<button type="button"
														class="layui-btn layui-btn-sm layui-btn-danger"
														style="margin: 0px;">
														<i class="layui-icon layui-icon-templeate-1"></i>申请
													</button> <span style="margin-left: 10px; color: #c2c2c2;"><%=ab.getDeliver_time()%></span>
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
						
						<div style="float: left;margin:20px 0px -20px 30px;">
							<a href="#" class="layui-btn layui-btn-normal" style="background-color:#25a18e;"> <i
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
		<script src="../res/layui/layui.js"></script>
		<script>
			//JavaScript代码区域
			layui.use('element', function() {
				var element = layui.element;
			});
		</script>

		<!-- 步骤条 -->
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
					"desc" : "2021-03-24"
				}, {
					'title' : "一轮面试",
					"desc" : "2021-03-28"
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
					"desc" : "2021-03-24"
				}, {
					'title' : "一轮面试",
					"desc" : "2021-03-28"
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
	</div>
</body>
</html>
