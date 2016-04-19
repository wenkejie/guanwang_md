<%-- JSP标签，每个JSP必须引入 --%>
<%@ page contentType="text/html;charset=utf-8" %>
<%@ taglib uri="/fis" prefix="fis"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%-- 继承layout  --%>
<fis:extends name="page/layout/layout.jsp">

	<%-- 自身页面样式--%>
	<fis:block name="selfStyles" >
	<fis:require id="./index.less"></fis:require>
	</fis:block>

	<fis:block name="content" >
	<div class="page">
		<div class="page-container"  ms-controller="IndexCtrl">
		    <div style="width:100%;">
		    	<div ms-widget="carousel, carousel, $opt"></div>
		    </div>
			<div class="home-grid">
				<div class="gui-panel">
					<h3 class="home-title">支持您的所有设备</h3>
					<p class="home-summary">你可以在所有浏览器上直接使用 大管家，此外还可以开通基于微信的移动版本和 企业号应用，满足各种环境下的使用需要</p>
					<div class="home-product-area">
						<div class="computer-pic">
							<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0" width="500" height="290">
								<param name="movie" value="http://dispatcher.video.qiyi.com/disp/shareplayer.swf?vid=ade484a7c87734eee38f7f77cd9f3159&tvId=250912700&coop=&cid=&bd=1"/>							
								<param name="quality" value="high"/>							
								<param name="wmode" value="transparent"/>							
								<param value="true" name="allowFullScreen"/>							
								<embed src="http://dispatcher.video.qiyi.com/disp/shareplayer.swf?vid=ade484a7c87734eee38f7f77cd9f3159&tvId=250912700&coop=&cid=&bd=1" wmode="transparent" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" width="500" height="290" allowfullscreen="true"/>							
							</object>
						</div>
						<ul class="home-product-list">
							<li class="product-list-cell">
								<a class="product-list-link" href="javascript:">
									<span class="product-icon"><i class="iconfont">&#xe605;</i></span>
									<span class="product-summary">
										<p class="title">微营销产品中心</p>
										<p>引流从未如此简单</p>
									</span>
								</a>
							</li>
							<li class="product-list-cell">
								<a class="product-list-link" href="javascript:">
									<span class="product-icon"><i class="iconfont">&#xe604;</i></span>
									<span class="product-summary">
										<p class="title">微营销产品中心</p>
										<p>引流从未如此简单</p>
									</span>
								</a>
							</li>
							<li class="product-list-cell">
								<a class="product-list-link" href="javascript:">
									<span class="product-icon"><i class="iconfont">&#xe606;</i></span>
									<span class="product-summary">
										<p class="title">微营销产品中心</p>
										<p>引流从未如此简单</p>
									</span>
								</a>
							</li>
							<li class="product-list-cell">
								<a class="product-list-link" href="javascript:">
									<span class="product-icon"><i class="iconfont">&#xe603;</i></span>
									<span class="product-summary">
										<p class="title">微营销产品中心</p>
										<p>引流从未如此简单</p>
									</span>
								</a>
							</li>
						</ul>
					</div>
				</div>
			</div>
			<div class="home-grid home-grid-gray">
				<div class="gui-panel">
					<h3 class="home-title">他们都在使用大掌柜</h3>
					<p class="home-summary">大管家作为营销平台，已有超过700,000＋家企业及组织深度使用</p>
					<ul class="home-client-list">
						<li><a class="home-client-link" href="javascript:"><img src="/static/img/client-logo.png"></a></li>
						<li><a class="home-client-link" href="javascript:"><img src="/static/img/client-logo.png"></a></li>
						<li><a class="home-client-link" href="javascript:"><img src="/static/img/client-logo.png"></a></li>
						<li><a class="home-client-link" href="javascript:"><img src="/static/img/client-logo.png"></a></li>
						<li><a class="home-client-link" href="javascript:"><img src="/static/img/client-logo.png"></a></li>
						<li><a class="home-client-link" href="javascript:"><img src="/static/img/client-logo.png"></a></li>
						<li><a class="home-client-link" href="javascript:"><img src="/static/img/client-logo.png"></a></li>
						<li><a class="home-client-link" href="javascript:"><img src="/static/img/client-logo.png"></a></li>
						<li><a class="home-client-link" href="javascript:"><img src="/static/img/client-logo.png"></a></li>
						<li><a class="home-client-link" href="javascript:"><img src="/static/img/client-logo.png"></a></li>
						<li><a class="home-client-link" href="javascript:"><img src="/static/img/client-logo.png"></a></li>
						<li><a class="home-client-link" href="javascript:"><img src="/static/img/client-logo.png"></a></li>
					</ul>
				</div>
			</div>
			<div class="home-grid">
				<div class="gui-panel">
					<h3 class="home-title">他们这样评价大掌柜</h3>
					<p class="home-summary">用户数超过 4万支团队，辐射 32 个行业领域</p>
					<ul class="home-feadback-list">
						<li class="feadback-list-item first">
							<div class="feadback-title">基于大数据的可视化客户管理工具</div>
							<div class="feadback-cnt">
								<div class="feadback-user">
									<div class="user-mask">
										<img src="/static/img/user-mask.png" />
									</div>
									<div class="feadback-user-info">
										大卫.李
										<p class="user-extend">联合创始人</p>
									</div>
								</div>
								<div class="feadback-summary">大管家 的很多地方设计很细致。其中一个部分是这样的大管家 的很多地方设计很细致。其中一个</div>
							</div>
							<div class="feadback-detail">
								<div class="feadback-detail-cnt">
									<div class="feadback-user-info">
										大卫.李
										<p class="user-extend">联合创始人</p>
									</div>
									<p class="">大管家 的很多地方设计很细致。其中一个部分是这样的，其他软件中发图片必须要求先截取，然后再上传，大管家...
									大管家 的很多地方设计很细致。其中一个部分是这样的，其他软件中发图片必须要求先截取，然后再上传，大管家
									大管家 的很多地方设计很细致
									大管家 的很多地方设计很..</p>
								</div>
							</div>
						</li>
						<li class="feadback-list-item">
							<div class="feadback-title">基于大数据的可视化客户管理工具</div>
							<div class="feadback-cnt">
								<div class="feadback-user">
									<div class="user-mask">
										<img src="/static/img/user-mask.png" />
									</div>
									<div class="feadback-user-info">
										大卫.李
										<p class="user-extend">联合创始人</p>
									</div>
								</div>
								<div class="feadback-summary">大管家 的很多地方设计很细致。其中一个部分是这样的大管家 的很多地方设计很细致。其中一个</div>
							</div>
							<div class="feadback-detail">
								<div class="feadback-detail-cnt">
									<div class="feadback-user-info">
										大卫.李
										<p class="user-extend">联合创始人</p>
									</div>
									<p class="">大管家 的很多地方设计很细致。其中一个部分是这样的，其他软件中发图片必须要求先截取，然后再上传，大管家...
									大管家 的很多地方设计很细致。其中一个部分是这样的，其他软件中发图片必须要求先截取，然后再上传，大管家
									大管家 的很多地方设计很细致
									大管家 的很多地方设计很..</p>
								</div>
							</div>
						</li>
						<li class="feadback-list-item">
							<div class="feadback-title">基于大数据的可视化客户管理工具</div>
							<div class="feadback-cnt">
								<div class="feadback-user">
									<div class="user-mask">
										<img src="/static/img/user-mask.png" />
									</div>
									<div class="feadback-user-info">
										大卫.李
										<p class="user-extend">联合创始人</p>
									</div>
								</div>
								<div class="feadback-summary">大管家 的很多地方设计很细致。其中一个部分是这样的大管家 的很多地方设计很细致。其中一个</div>
							</div>
							<div class="feadback-detail">
								<div class="feadback-detail-cnt">
									<div class="feadback-user-info">
										大卫.李
										<p class="user-extend">联合创始人</p>
									</div>
									<p class="">大管家 的很多地方设计很细致。其中一个部分是这样的，其他软件中发图片必须要求先截取，然后再上传，大管家...
									大管家 的很多地方设计很细致。其中一个部分是这样的，其他软件中发图片必须要求先截取，然后再上传，大管家
									大管家 的很多地方设计很细致
									大管家 的很多地方设计很..</p>
								</div>
							</div>
						</li>
						<li class="feadback-list-item">
							<div class="feadback-title">基于大数据的可视化客户管理工具</div>
							<div class="feadback-cnt">
								<div class="feadback-user">
									<div class="user-mask">
										<img src="/static/img/user-mask.png" />
									</div>
									<div class="feadback-user-info">
										大卫.李
										<p class="user-extend">联合创始人</p>
									</div>
								</div>
								<div class="feadback-summary">大管家 的很多地方设计很细致。其中一个部分是这样的大管家 的很多地方设计很细致。其中一个</div>
							</div>
							<div class="feadback-detail">
								<div class="feadback-detail-cnt">
									<div class="feadback-user-info">
										大卫.李
										<p class="user-extend">联合创始人</p>
									</div>
									<p class="">大管家 的很多地方设计很细致。其中一个部分是这样的，其他软件中发图片必须要求先截取，然后再上传，大管家...
									大管家 的很多地方设计很细致。其中一个部分是这样的，其他软件中发图片必须要求先截取，然后再上传，大管家
									大管家 的很多地方设计很细致
									大管家 的很多地方设计很..</p>
								</div>
							</div>
						</li>
					</ul>
				</div>
			</div>
			<div class="home-grid home-grid-gray">
				<div class="gui-panel">
					<h3 class="home-title">合作伙伴</h3>
					<p class="home-summary">感恩一路同行，品质如一 值得信赖</p>
					<ul class="home-partner-list">
						<li><a class="home-partner-link" href="javascript:"><img src="/static/img/partner-logo.png"></a></li>
						<li><a class="home-partner-link" href="javascript:"><img src="/static/img/partner-logo.png"></a></li>
						<li><a class="home-partner-link" href="javascript:"><img src="/static/img/partner-logo.png"></a></li>
						<li><a class="home-partner-link" href="javascript:"><img src="/static/img/partner-logo.png"></a></li>
						<li><a class="home-partner-link" href="javascript:"><img src="/static/img/partner-logo.png"></a></li>
						<li><a class="home-partner-link" href="javascript:"><img src="/static/img/partner-logo.png"></a></li>
						<li><a class="home-partner-link" href="javascript:"><img src="/static/img/partner-logo.png"></a></li>
						<li><a class="home-partner-link" href="javascript:"><img src="/static/img/partner-logo.png"></a></li>
						<li><a class="home-partner-link" href="javascript:"><img src="/static/img/partner-logo.png"></a></li>
						<li><a class="home-partner-link" href="javascript:"><img src="/static/img/partner-logo.png"></a></li>
						<li><a class="home-partner-link" href="javascript:"><img src="/static/img/partner-logo.png"></a></li>
						<li><a class="home-partner-link" href="javascript:"><img src="/static/img/partner-logo.png"></a></li>
					</ul>
				</div>
				<button class="gui-btn gui-btn-ty" ms-click="purchase()">免费体验</button>
			</div>
		</div>
	</div>
	</fis:block>

	<fis:script>
		require(["./index"],function(){
			avalon.scan();
		})
	</fis:script>

</fis:extends>