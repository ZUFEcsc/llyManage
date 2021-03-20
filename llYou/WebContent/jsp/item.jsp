<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<link rel="stylesheet" href="../res/layui/css/layui.css">
<%@ include file="bootstrap.jsp"%>
<div>
	<form style="float: right;">
		<div class="form-row">
			<div class="form-group col-md">
				<select id="inputTime" class="form-control">
					<option selected>请选择入驻年份</option>
					<option>2021</option>
					<option>2020</option>
				</select>
			</div>
			<div class="form-group col-md">
				<select id="inputState" class="form-control">
					<option selected>请选择用户性别</option>
					<option>...</option>
				</select>
			</div>
			<div class="form-group col-md">
				<input type="text" class="form-control" id="inputZ"
					placeholder="用户名称或用户代码">
			</div>
			<a href="#" type="submit"><i class="layui-icon layui-icon-search"
				style="font-size: 30px; color: #1E9FFF;"></i></a>
		</div>
	</form>
</div>
<table class="table">
	<thead>
		<tr>
			<th scope="col"><i class="iconfont icon-bianhao"
				style="color: #999999"></i> 用户编号</th>
			<th scope="col"><i class="iconfont icon-yonghu"
				style="font-size: 18px; color: #1e9fff"></i>用户名称</th>
			<th scope="col"><i class="iconfont icon-xingbie"
				style="font-size:18px;color: #f9906f;"></i>用户性别</th>
			<th scope="col"><i class="iconfont icon-shijian"
				style="font-size: 18px; color: #cdcdcd;"></i>入驻时间</th>
			<th scope="col"><i class="iconfont icon--_caozuo"
				style="font-size: 18px; color: #5aa9e6;"></i> 操作</th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<th scope="row"><i class="iconfont icon-6"
				style="font-size: 16px; color: #e29c45;"></i> Y20189</th>
			<td>陈沈清</td>
			<td>女</td>
			<td>2020/01/09</td>
			<td>
				<button type="button"
					class="layui-btn layui-btn-sm layui-btn-normal"
					style="margin: 0px;">
					<i class="iconfont icon-gengduo"></i><span style="font-size: 14px;">
						更多</span>
				</button>
			</td>
		</tr>
		<tr>
			<th scope="row"><a href=""> <i class="iconfont icon-xiaoxi"
					style="font-size: 18px; color: #e29c45;"></i></a> Y20189</th>
			<td>陈沈清</td>
			<td>女</td>
			<td>2020/01/09</td>
			<td>
				<button type="button"
					class="layui-btn layui-btn-sm layui-btn-normal"
					style="margin: 0px;">
					<i class="iconfont icon-gengduo"></i><span style="font-size: 14px;">
						更多</span>
				</button>
			</td>
		<tr>
			<th scope="row"><a href=""> <i class="iconfont icon-xiaoxi"
					style="font-size: 18px; color: #e29c45;"></i></a> Y20189</th>
			<td>陈沈清</td>
			<td>女</td>
			<td>2020/01/09</td>
			<td>
				<button type="button"
					class="layui-btn layui-btn-sm layui-btn-normal"
					style="margin: 0px;">
					<i class="iconfont icon-gengduo"></i><span style="font-size: 14px;">
						更多</span>
				</button>
			</td>
		</tr>
	</tbody>
</table>