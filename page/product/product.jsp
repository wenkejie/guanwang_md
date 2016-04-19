
<%-- JSP标签，每个JSP必须引入 --%>
<%@ page contentType="text/html;charset=utf-8" %>
<%@ taglib uri="/fis" prefix="fis"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctx" value="${rc.contextPath}" />

<%-- 继承layout --%>
<fis:extends name="/page/layout/layout.jsp">

	<%-- 自身页面样式--%>
	<fis:block name="selfStyles" >
	<fis:require id="./product.less"></fis:require>
	</fis:block>
	
	<fis:block name="content" >
	<div class="page">
		<img src="static/img/story-bg.png" class="product-bg">	
		<div class="page-container">
			<div class="page-s-container">
				<a href="javascript:void(0)" class="page-headline">产品中心/Products</a>
				<div class="gui-panel product-O2O-container">
					<h1 class="product-title">O2O国际物流平台</h1>
					<p>国际物流企业依托该平台，通过领先的云计算平台技术，充分发挥互联网的优势，</p>
					<p>将企业的产品互联网化、营销互联网化、服务互联网化、渠道互联网化、运营互联网化，</p>
					<p>提升企业对外服务能力和竞争力，在新商业文明中建立起自己的品牌和企业资信，编织</p>
					<p>自己的全球网络，随时、随地、随意做生意、管生意。</p>
					<a href="${ctx}/purchase/buy?id=1" class="product-btn">免费体验</a>
				</div>
			</div>
			<div class="page-s-container">
				<ul class="gui-tab-wrap">
					<li class="gui-tab-cell">产品优势</li><li class="gui-tab-cell">产品功能</li><li class="gui-tab-cell">经典案例</li>
				</ul>
				<div class="product-intro-container">
					<div class="product-intro-wrap product-intro-wrap-active">
						<div class="product-img">1</div>
					</div>
					<div class="product-intro-wrap" >
						<div class="product-img">2</div>
					</div>
					<div  class="product-intro-wrap">
						<div class="product-img">3</div>
					</div>	
				</div>
			</div>
			<div class="product-btn-wrap">
				<a href="${ctx}/purchase/buy?id=1" class="product-btn product-btn-last">免费体验</a>
			</div>
		</div>
	</div>
	</fis:block>

	<fis:script>
		require(["./product"])
	</fis:script>
</fis:extends>