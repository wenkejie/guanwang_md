
<%-- JSP标签，每个JSP必须引入 --%>
<%@ page contentType="text/html;charset=utf-8" %>
<%@ taglib uri="/fis" prefix="fis"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<div class="${wrapClass}" ms-controller="VercodeCtrl">
	<img alt="验证码" ms-attr-src="${rc.contextPath}/comm/pcrimg?_t={{_time}}" title="点击刷新" ms-click="changeVerCode()">
</div>
