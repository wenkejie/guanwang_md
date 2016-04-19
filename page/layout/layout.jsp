
<%-- JSP标签，每个JSP必须引入 --%>
<%@ page contentType="text/html;charset=utf-8" %>
<%@ taglib uri="/fis" prefix="fis"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!-- 页面布局骨架, 指定模块加载框架，并将html,head,body都交给fis管理-->
<!DOCTYPE html><!--HTML5 doctype-->
<fis:html framework="/static/js/require.js">
<fis:head>
	<title>CarogoGM</title>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="renderer" content="webkit">
    	<meta http-equiv="ClearType" content="true">

	<!-- 定义一个样式引入块，方便子页面复用或复写 -->
	<fis:block name="linkStyles">

	<%-- 首页公共样式--%>
	<fis:require id="static/less/global.less"></fis:require>

	<%-- 自身页面样式--%>
	<fis:block name="selfStyles" ></fis:block>

	</fis:block>

	<fis:style>
		<%-- avalon样式控制--%>
		.ms-controller, .ms-important, [ms-controller], [ms-important] {
			visibility: hidden;
		}
	</fis:style>

	<fis:require id="/static/lib/avalon/avalon.shim.js"></fis:require>

</fis:head>

<fis:body>
	
	<fis:block name="header" >
	<fis:widget name="widget/header/header.jsp" />	
	</fis:block>

	<fis:block name="content" >
	
	</fis:block>
	
	<fis:block name="footer" >
	<fis:widget name="widget/footer/footer.jsp" />
	</fis:block>

</fis:body>


</fis:html>