
<%-- JSP标签，每个JSP必须引入 --%>
<%@ page contentType="text/html;charset=utf-8" %>
<%@ taglib uri="/fis" prefix="fis"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%-- 继承layout --%>
<fis:extends name="/page/layout/layout.jsp">

	<%-- 自身页面样式--%>
	<fis:block name="selfStyles" >
	<fis:require id="./pay.less"></fis:require>
	</fis:block>
	
	<fis:block name="content" >
	<div class="page">
		<div class="page-container">
			<div class="gui-panel" ms-controller="PayCtrl">
				<h3 class="pay-title">产品名称</h3>
				<ul class="pay-progress">
					<li class="pay-progress-cell">确认订单</li>
					<li class="pay-progress-cell">支付</li>
					<li class="pay-progress-cell">支付成功</li>
				</ul>
				<div class="pay-grid pay-grid-gray">
					<div class="form-line">
						<label class="gui-label">选择类型：</label>
						<ul class="gui-tags-area">
							<li class="gui-tags-cell" ms-class="gui-tags-current:toggle2"  ms-click="click">
								海运出口整箱 
								<div class="product-tips" ms-class="product-tips-hover:toggle1" ms-mouseenter="hover" ms-mouseleave="hover">
								 	<a class="product-tips-icon" href="javascript:"><i class="iconfont">&#xe60b;</i></a>
								 	<div class="product-tips-cnt">
								 		大雾大为降低哦阿娇我都iawkdawdawdaw都iawjdioawddawdjwa打我们带来wald没挖到骂我都没啦胃口都没了开挖道路开挖的
								 	</div>
								 </div>
							</li>
							<li class="gui-tags-cell">
								海运出口拼箱
								<div class="product-tips">
								 	<a class="product-tips-icon" href="javascript:"><i class="iconfont">&#xe60b;</i></a>
								 	<div class="product-tips-cnt">
								 		
								 	</div>
								 </div>
							</li>
							<li class="gui-tags-cell">
								空运 
								<div class="product-tips">
								 	<a class="product-tips-icon" href="javascript:"><i class="iconfont">&#xe60b;</i></a>
								 	<div class="product-tips-cnt">
								 		
								 	</div>
								 </div>
							</li>
						</ul>
					</div>
					<div class="form-line">
						<label class="gui-label">账号个数：</label>
						<div class="form-line-cnt">
							<div class="gui-tags-items">
								<div class="gui-tags-cell">海运出口整箱</div>
								<div class="gui-input">
									<input type="text" />
								</div>
								个
								 <div class="product-tips">
								 	<a class="product-tips-icon" href="javascript:"><i class="iconfont">&#xe60b;</i></a>
								 	<div class="product-tips-cnt">
								 		
								 	</div>
								 </div>
							</div>
							<div class="gui-tags-items">
								<div class="gui-tags-cell">海运出口整箱</div>
								<div class="gui-input">
									<input type="text" />
								</div>
								个
								 <div class="product-tips">
								 	<a class="product-tips-icon" href="javascript:"><i class="iconfont">&#xe60b;</i></a>
								 	<div class="product-tips-cnt">
								 		
								 	</div>
								 </div>
							</div>
							<div class="gui-tags-items">
								<div class="gui-tags-cell">海运出口整箱</div>
								<div class="gui-input">
									<input type="text" />
								</div>
								个
								 <div class="product-tips">
								 	<a class="product-tips-icon" href="javascript:"><i class="iconfont">&#xe60b;</i></a>
								 	<div class="product-tips-cnt">
								 		
								 	</div>
								 </div>
							</div>
						</div>
					</div>
					<div class="form-line">
						<label class="gui-label">账号类型：</label>
						<div class="form-line-cnt">
							<ul class="gui-tags-area">
								<li class="gui-tags-cell">
									微信营销功能
									<div class="product-tips">
										<a class="product-tips-icon" href="javascript:"> <i class="iconfont">&#xe60b;</i>
										</a>
										<div class="product-tips-cnt"></div>
									</div>
								</li>
								<li class="gui-tags-cell">
									客户管理标准版
									<div class="product-tips">
										<a class="product-tips-icon" href="javascript:"> <i class="iconfont">&#xe60b;</i>
										</a>
										<div class="product-tips-cnt"></div>
									</div>
								</li>
							</ul>
							<div class="gui-tags-group mt10">
								<label class="">海运出口整箱：</label>
								<div class="gui-input">
									<input type="text" />
								</div>
								个
								 <div class="product-tips">
								 	<a class="product-tips-icon" href="javascript:"><i class="iconfont">&#xe60b;</i></a>
								 	<div class="product-tips-cnt">
								 		
								 	</div>
								 </div>
							</div>
							<div class="gui-tags-group mt10">
								<label class="">海运出口整箱：</label>
								<div class="gui-input">
									<input type="text" />
								</div>
								个
								 <div class="product-tips">
								 	<a class="product-tips-icon" href="javascript:"><i class="iconfont">&#xe60b;</i></a>
								 	<div class="product-tips-cnt">
								 		
								 	</div>
								 </div>
							</div>
						</div>
					</div>
					<div class="form-line">
						<label class="gui-label">购买时长：</label>
						<ul class="gui-tags-area">
							<li class="gui-tags-cell gui-tags-current">季度</li>
							<li class="gui-tags-cell">半年</li>
							<li class="gui-tags-cell">一年</li>
							<li class="gui-tags-cell">三年</li>
						</ul>
						<label class="gui-label w120">设置开通时间：</label>
						<div class="gui-input gui-input-data w150">
							 <input ms-widget="datepicker" data-datepicker-width="100%"  data-datepicker-allow-blank="true"/>
						</div>
					</div>
					
				</div>
				<div class="pay-extend mt50">
					<div class="pay-total">
						<label>订单金额：</label>
						<span class="pay-total-num">￥ 3655</span>
					</div>
					<p class="pay-total-extend">
						(运价通3655元)
					</p>
					<p>
						<button class="gui-btn gui-btn-submit mt10">提交</button>
					</p>
					<p class="agreement-line mt10">
						<div class="agreement-items">
							<input type="checkbox" id="11" class="checkbox">				
							<label class="" for="11">
								同意 [
								<a id="jOpenWin" href="javascript:">运价通协议</a>
								]
							</label>
						</div>
						<div class="agreement-items ml15">
							<input type="checkbox" id="11" class="checkbox">				
							<label class="" for="11">
								同意 [
								<a id="jOpenWin" href="javascript:">行为分析协议</a>
								]
							</label>
						</div>
					</p>
				</div>
			</div>
		</div>
	</div>
	</fis:block>

	<fis:script>
		require(["./pay"], function(pay){
			pay.init()
		})
	</fis:script>
</fis:extends>