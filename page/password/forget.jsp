<%-- JSP标签，每个JSP必须引入 --%>
<%@ page contentType="text/html;charset=utf-8" %>
<%@ taglib uri="/fis" prefix="fis"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctx" value="${rc.contextPath}" />
 
<%-- 继承layout  --%>
<fis:extends name="page/layout/layout.jsp">

	<%-- 重写linkStyle块--%>
	<fis:block name="linkStyles">
	<%-- css交给fis管理--%>
	<fis:require id="page/register/register.less"></fis:require>
	</fis:block>

	<fis:block name="header" >
	<fis:widget name="widget/header/header.jsp" type="password"/>
	</fis:block>

	<fis:block name="content" >
	<div class="rg-body">
		<div class="rg-body-cnt">

			<c:if test="${step !=3}">
			<form  action="${ctx}/password/forget"  method="post" 
				ms-controller="PasswordForgetCtrl" ms-widget="validation, $, $validation"  >
				
				<div class="rg-tips rg-tips-top rg-tips-error"  ms-visible="message">
					<span class="rg-tips-icon"></span>
					<p class="rg-tips-info" ms-text="message"></p>
				</div>
			
				<c:if test="${step == 1}">
				<fis:widget name="./forget1.jsp"/>
				</c:if>

				<c:if test="${step == 2}">
				<fis:widget name="./forget2.jsp"/>
				</c:if>
			</form>
			</c:if>

			<c:if test="${step ==3}">
			<fis:widget name="./success.jsp"/>
			</c:if>
		</div>
	</div>
	</fis:block>

	<fis:block name="footer" >
	<fis:widget name="widget/footer/footer.jsp" type="password"/>
	</fis:block>

	<fis:script>
		require(['./forget'], function(forget){
		              var vo = '${vo}';
		              var message = '${message}';
			forget.init(message,avalon.parseJSON(vo));
			avalon.scan();
		})
	</fis:script>

</fis:extends>