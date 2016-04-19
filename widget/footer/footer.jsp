
<%-- JSP标签，每个JSP必须引入 --%>
<%@ page contentType="text/html;charset=utf-8" %>
<%@ page import="java.util.*" %><%@ taglib uri="/fis" prefix="fis"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%-- 如果type为空 --%>
<c:if test="${empty type}">
<div class="footer">
	<div class="footer-container">
		<div class="footer-left">
			<p><i></i>联系电话：</p>
			<p class="phone-num">400-8828-3133</p>
			<p class="inside-link"><a href="javascript:">网站首页</a><span>|</span><a href="javascript:">产品中心</a><span>|</span><a href="javascript:">大掌柜社区</a><span>|</span><a href="javascript:">关于大掌柜</a></p>
			<p class="company-info">Copyright © 2015 CargoGM事业部 浙ICP备08015045号-14</p>
		</div>
		<div class="footer-right">
			<div class="wechat-link">
				<img src="/static/img/wechat-link.png" height="94" width="93" alt="微信二维码">
				<p class="wechat-link-info">欢迎关注大掌柜官方微信平台</p>
			</div>
			
		</div>
	</div>
</div>
</c:if>

<%-- 如果type非空 --%>
<c:if test="${not empty type}">
<div class="rg-footer">
	<div class="rg-footer-cnt">
		<div class="rg-footer-left">
			<p><i></i>联系电话：</p>
			<p class="phone-num">400-8828-3133</p>
			<p class="inside-link"><a href="javascript:">网站首页</a><span>|</span><a href="javascript:">产品中心</a><span>|</span><a href="javascript:">大掌柜社区</a><span>|</span><a href="javascript:">关于大掌柜</a></p>
			<p class="company-info">Copyright © 2015 CargoGM事业部 浙ICP备08015045号-14</p>
		</div>
		<div class="rg-footer-right">
			<div class="wechat-link">
				<img src="/static/img/wechat-link.png" height="94" width="93" alt="微信二维码">
				<p class="wechat-link-info">欢迎关注大掌柜官方微信平台</p>
			</div>
		</div>
	</div>
</div>
</c:if>