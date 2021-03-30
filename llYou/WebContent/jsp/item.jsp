<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<link rel="stylesheet" href="../res/layui/css/layui.css">
<style type="text/css">
.icon {
	width: 3em;
	height: 3em;
	vertical-align: -0.15em;
	fill: currentColor;
	overflow: hidden;
}
</style>
<%@ include file="bootstrap.jsp"%>

<div class="site-demo-button" id="layerDemo"
	style="margin-bottom: 0; float: right; margin-left: 10px;">

	<button type="button" class="layui-btn  layui-btn-normal"
		data-method="notice" style="font-size: 18px; line-height: 18px;">
		<i class="iconfont icon-jiqiren2"
			style="color: #ffffff; font-size: 22px;"></i> <span
			style="font-size: 18px;">智能筛选</span>
	</button>
</div>
<div>
	<form style="float: right;">
		<div class="form-row">
			<div class="form-group col-md">
				<select id="inputTime" class="form-control">
					<option selected>请选择发布时间</option>
					<option>2021</option>
					<option>2020</option>
				</select>
			</div>
			<div class="form-group col-md">
				<select id="inputState" class="form-control">
					<option selected>请选择招聘岗位</option>
					<option>...</option>
				</select>
			</div>
			<div class="form-group col-md">
				<input type="text" class="form-control" id="inputZ"
					placeholder="输入招聘代码">
			</div>
			<a href="#" type="submit"><i class="layui-icon layui-icon-search"
				style="font-size: 30px; color: #1E9FFF;"></i></a>
		</div>
	</form>
</div>
<div style="padding: 20px; background-color: #ffffff;">
	<div class="layui-row">
		<svg class="icon" aria-hidden="true">
    <use xlink:href="#icon-youyongchi"></use>
	</svg>
	</div>
	<div class="layui-row layui-col-space15">
		<div class="layui-col-md2">
			<div class="layui-card">
				<div class="layui-card-header">
					<i class="iconfont icon-biaoqian1" style="color: #5FB878;"></i> 标签：
					<span class="layui-badge layui-bg-orange">工作狂魔</span> <span
						class="layui-badge layui-bg-orange">亲和待人</span>
				</div>
				<div class="layui-card-body">
					<i class="iconfont icon-lunkuohua2_yonghu" style="color: #5FB878;"></i>
					姓名：陈沈清<br> <i class="iconfont icon-xingbie"
						style="color: #5FB878;"></i> 性别：女<br> <i
						class="iconfont icon-zhaopingangwei" style="color: #5FB878;"></i>
					年龄：25<br> <i class="iconfont icon-xueli"
						style="color: #5FB878;"></i> 学历：本科<br> <i
						class="iconfont icon-shoujizhengli" style="color: #5FB878;"></i>
					招聘职位：前端UI设计师<br> <i class="iconfont icon-jiqiren2"
						style="color: #5FB878;"></i> 综合评分：
					<div class="layui-progress" lay-showPercent="yes"
						style="width: 50%; display: inline-block; margin: -12px 0px 0px 100px;">
						<div class="layui-progress-bar" lay-percent="80%"></div>
					</div>
					<div style="display: inline-block;">
						<button type="button" class="layui-btn layui-btn-sm"
							style="background-color: #5FB878;">通过</button>
						<button type="button" class="layui-btn layui-btn-sm"
							style="background-color: #5FB878;">驳回</button>

					</div>
					<a href="#"><span
						style="font-size: 12px; line-height: 40px; color: #838383; margin-left: 10px; float: right;">
							更多</span></a> <br>
				</div>
			</div>
		</div>
		<div class="layui-col-md4">
			<div class="layui-card">
				<div class="layui-card-header">卡片面板</div>
				<div class="layui-card-body">
					<svg class="icon" aria-hidden="true" style="font-size: 6px;">
			    <use xlink:href="#icon-jiqiren"></use>
			</svg>
					请选择筛选条件<br>
					<div class="layui-form-item">

						<div class="form-group form-check">
							<input type="checkbox" class="form-check-input"
								id="exampleCheck1"> <label class="form-check-label"
								for="exampleCheck1"> 工作能力 </label>
						</div>
						<div id="test1"
							style="line-height: 10px; margin: 0px 20px; padding: 0px;">
						</div>

						<div class="form-group form-check">
							<input type="checkbox" class="form-check-input"
								id="exampleCheck1"> <label class="form-check-label"
								for="exampleCheck1"> 工作效率 </label>
						</div>
						<div id="test2"
							style="line-height: 10px; margin: 0px 20px; padding: 0px;">
						</div>

					</div>
				</div>
			</div>
		</div>
		<div class="layui-col-md3">
			<div class="layui-card">
				<div class="layui-card-header" style="background: #ffc107;">
					<strong>Y2019876</strong> <span style="float: right;"> <i
						class="iconfont icon-jiazaizhong"
						style="color: #ffffff; font-size: 18px;"></i> 进行中…
					</span>
				</div>
				<div class="layui-card-body">
					<i class="iconfont icon-xiangmu" style="color: #5FB878;"></i>
					项目姓名：教练我想打篮球<br> <i class="iconfont icon-zhaopingangwei"
						style="color: #5FB878;"></i> 项目负责人：三井<br> <i
						class="iconfont icon-suggestion" style="color: #5FB878;"></i>
					项目内容：安西教练，我想打篮球555<br> <i
						class="iconfont icon-lunkuohua2_yonghu" style="color: #5FB878;"></i>
					项目成员：安西教练、三井寿<br> <i class="iconfont icon-shijian"
						style="color: #5FB878;"></i> 起始时间：2019-08-07<br> <i
						class="iconfont icon-jiezhishijian" style="color: #5FB878;"></i>
					结束时间：2021-04-20（预计）<br> <a href="#" style="margin-left: 80%">
						查看详细</a>

				</div>
			</div>
		</div>
		<div class="layui-col-md3">
			<div class="layui-card">
				<div class="layui-card-header" style="background: #5fb878;">
					<strong>Y2019876</strong> <span style="float: right;"> <i
						class="iconfont icon-gougou" style="color: #ffffff;"></i> 已结束
					</span>
				</div>
				<div class="layui-card-body">
					<i class="iconfont icon-xiangmu" style="color: #5FB878;"></i>
					项目姓名：教练我想打篮球<br> <i class="iconfont icon-zhaopingangwei"
						style="color: #5FB878;"></i> 项目负责人：三井<br> <i
						class="iconfont icon-suggestion" style="color: #5FB878;"></i>
					项目内容：安西教练，我想打篮球555<br> <i
						class="iconfont icon-lunkuohua2_yonghu" style="color: #5FB878;"></i>
					项目成员：安西教练、三井寿<br> <i class="iconfont icon-shijian"
						style="color: #5FB878;"></i> 起始时间：2019-08-07<br> <i
						class="iconfont icon-jiezhishijian" style="color: #5FB878;"></i>
					结束时间：2021-04-20（预计）<br> <a href="#" style="margin-left: 80%">
						查看详细</a>

				</div>
			</div>
		</div>
	</div>
</div>
<script src="../res/layui/layui.js"></script>
<script>
	//注意进度条依赖 element 模块，否则无法进行正常渲染和功能性操作
	layui.use('element', function() {
		var element = layui.element;
	});
</script>

<!-- 评分 -->
<script>
	layui.use('rate', function() {
		var rate = layui.rate;

		//渲染
		var ins1 = rate.render({
			elem : '#test1' //绑定元素
		});

		var ins2 = rate.render({
			elem : '#test2' //绑定元素
		});
	});
</script>


<!-- 滑块 -->
<script>
	layui.use('slider', function() {
		var $ = layui.$, slider = layui.slider;

		slider.render({
			elem : '#slideTest10',
			value : [ 30, 60 ] //初始值
			,
			range : true
		//范围选择
		});

		//自定义颜色
		slider.render({
			elem : '#slideTest15',
			theme : '#1E9FFF' //主题色
		});
		slider.render({
			elem : '#zhpf',
			value : 80,
			step : 10 //步长
			,
			theme : '#5FB878' //主题色
			,
			setTips : function(value) { //自定义提示文本
				return value + '分';
			}
		});

	});
</script>

<!-- 弹出框 -->
<script>
	layui
			.use(
					'layer',
					function() { //独立版的layer无需执行这一句
						var $ = layui.jquery, layer = layui.layer; //独立版的layer无需执行这一句

						//触发事件
						var active = {
							notice : function() {
								//示范一个公告层
								layer
										.open({
											type : 1,
											title : false //不显示标题栏
											,
											closeBtn : false,
											area : '300px;',
											shade : 0.8,
											id : 'LAY_layuipro' //设定一个id，防止重复弹出
											,
											btn : [ '火速围观', '残忍拒绝' ],
											btnAlign : 'c',
											moveType : 1 //拖拽模式，0或者1
											,
											content : '<div style="padding: 50px; line-height: 22px; background-color: #393D49; color: #fff; font-weight: 300;">你知道吗？亲！<br>layer ≠ layui<br><br>layer只是作为Layui的一个弹层模块，由于其用户基数较大，所以常常会有人以为layui是layerui<br><br>layer虽然已被 Layui 收编为内置的弹层模块，但仍然会作为一个独立组件全力维护、升级。<br><br>我们此后的征途是星辰大海 ^_^</div>',
											success : function(layero) {
												var btn = layero
														.find('.layui-layer-btn');
												btn
														.find(
																'.layui-layer-btn0')
														.attr(
																{
																	href : 'http://www.layui.com/',
																	target : '_blank'
																});
											}
										});
							}
						};

						$('#layerDemo .layui-btn').on(
								'click',
								function() {
									var othis = $(this), method = othis
											.data('method');
									active[method] ? active[method].call(this,
											othis) : '';
								});

					});
</script>