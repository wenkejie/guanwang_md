<%-- JSP标签，每个JSP必须引入 --%>
<%@ page contentType="text/html;charset=utf-8" %>
<%@ page import="java.util.*" %><%@ taglib uri="/fis" prefix="fis"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctx" value="${rc.contextPath}" />

<%-- 继承layout --%>
<fis:extends name="./register.jsp">
	
	<fis:block name="content" >
	<div class="rg-body"  >
		<div class="rg-body-cnt"  >
			<div class="rg-form approve-form" >
			<div class="approve-contaner">
				<div class="approve-img"></div>
				<div class="approve-content">
					<p class="approve-hint">恭喜，您已成功提交审核！</p>
					<p>审核成功后我们会第一时间通知您。立即<a href="${ctx}/">返回首页</a></p>
				</div>	
			</div>
			</div>
		</div>
	</div>
	</fis:block>

</fis:extends>

