<%-- JSP标签，每个JSP必须引入 --%>
<%@ page contentType="text/html;charset=utf-8" %>
<%@ taglib uri="/fis" prefix="fis"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<form ms-controller="PurchaseCtrl">
<div class="pay-grid pay-grid-confirm">
	<div class="pay-form-area">
		<div class="form-line">
			<label class="gui-label">选择类型：</label>
			<ul class="gui-tags-area">
				<li class="gui-tags-cell" ms-repeat="attributeList"  ms-class="gui-tags-current: el.isBuy"  ms-click="choose(el)">
					{{el.name}} 
					<div class="product-tips" >
					 	<a class="product-tips-icon" href="javascript:"><i class="iconfont">&#xe60b;</i></a>
					 	<div class="product-tips-cnt">
					 		大雾大为降低哦阿娇我都iawkdawdawdaw都iawjdioawddawdjwa打我们带来wald没挖到骂我都没啦胃口都没了开挖道路开挖的
					 	</div>
					 </div>
				</li>
			</ul>
		</div>
		<div class="form-line">
			<label class="gui-label">账号类型：</label>
			<div class="form-line-cnt">
				<div class="gui-tags-items"  ms-repeat="functionList" ms-if-loop="el.type==1">
					<div class="gui-tags-cell" ms-class="gui-tags-current:  el.isBuy" 
						ms-click="choose(el)" >{{el.name}}</div>
					<div class="gui-input"  >
						<input type="text" ms-attr-value="el.defaultNumber"/>
					</div>
					{{el.price}}{{el.unit}}
					 <div class="product-tips">
					 	<a class="product-tips-icon" href="javascript:"><i class="iconfont">&#xe60b;</i></a>
					 	<div class="product-tips-cnt">
					 		
					 	</div>
					 </div>
				</div>
			</div>
		</div>
		<div class="form-line">
			<label class="gui-label">增值服务：</label>
			<div class="form-line-cnt">
				<ul class="gui-tags-area"  ms-repeat="functionList"  ms-if-loop="el.type==2">
					<li class="gui-tags-cell" ms-class="gui-tags-current: el.isBuy"  ms-click="choose(el)" >
						{{el.name}}
						<div class="product-tips">
							<a class="product-tips-icon" href="javascript:"> <i class="iconfont">&#xe60b;</i>
							</a>
							<div class="product-tips-cnt"></div>
						</div>
					</li>

				</ul>
				<div class="gui-tags-group mt10"  ms-repeat="functionList"  ms-if-loop="el.type==3">
					<label>{{el.name}}：</label>
					<div class="gui-input">
						<input type="text" />
					</div>
					{{el.unit}}
					 <div class="product-tips">
					 	<a class="product-tips-icon" href="javascript:"><i class="iconfont">&#xe60b;</i></a>
					 	<div class="product-tips-cnt">
					 		
					 	</div>
					 </div>
				</div>
			</div>
		</div>
		<div class="form-line">
			<label class="gui-label  none">购买时长：</label>
			<ul class="gui-tags-area none">
				<li class="gui-tags-cell gui-tags-current">季度</li>
				<li class="gui-tags-cell">半年</li>
				<li class="gui-tags-cell">一年</li>
				<li class="gui-tags-cell">三年</li>
			</ul>
			<label class="gui-label">开通时间：</label>
			<div class="gui-input gui-input-data w150">
				 <input ms-widget="datepicker" data-datepicker-width="100%"  />
			</div>
		</div>
	</div>
	<div class="pay-form-extend mt50">
		<div class="pay-total">
			<label>订单金额：</label>
			<span class="pay-total-num">￥ 3655</span>
		</div>
		<p class="pay-total-extend">(运价通3655元)</p>
		
	</div>
</div>

<form >

<fis:script>
	require(["./buy"], function(buy){
	              var service = avalon.parseJSON('${service}');
		buy.init(service)
		avalon.scan();
	})
</fis:script>
	

