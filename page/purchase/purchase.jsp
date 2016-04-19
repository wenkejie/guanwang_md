
<%-- JSP标签，每个JSP必须引入 --%>
<%@ page contentType="text/html;charset=utf-8" %>
<%@ taglib uri="/fis" prefix="fis"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%-- 继承layout --%>
<fis:extends name="/page/layout/layout.jsp">

	<%-- 自身页面样式--%>
	<fis:block name="selfStyles" >
	<fis:require id="./purchase.less"></fis:require>
	</fis:block>
	
	<fis:block name="content" >
	<div class="page">
		<div class="page-container">
			<div class="gui-panel" >
				<h3 class="pay-title">产品名称</h3>
				<ul class="pay-progress">
					<li class="pay-progress-cell">确认订单</li>
					<li class="pay-progress-cell">支付</li>
					<li class="pay-progress-cell">支付成功</li>
				</ul>
				<fis:widget  name="widget/purchase/buy.jsp"/>
				<div class="pay-grid pay-grid-submit mt10 mb40">
					<button class="gui-btn gui-btn-submit">提交</button>
					<div class="agreement-line mt10">
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
					</div>
				</div>
			</div>
		</div>
	</div>
	</fis:block>

</fis:extends>