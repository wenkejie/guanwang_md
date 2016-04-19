<%-- JSP标签，每个JSP必须引入 --%>
<%@ page contentType="text/html;charset=utf-8" %>
<%@ page import="java.util.*" %><%@ taglib uri="/fis" prefix="fis"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%--
<c:set var="stepk" value="1"/>
--%>
<c:if test="${step == 1}">
<fis:widget name="./member.jsp"/>
</c:if>

<c:if test="${step == 2}">
<fis:widget name="./member-info.jsp"/>
</c:if>

<fis:script>
    require(["./register-form"],function(form){
	     var obj = {
	     	modulus: "${modulus}",
	     	exponent: "${publicExponent}",
	     	step: ${step},
	     	registry:  '${registerVO}'
	     }
	     form.init(obj);
	     avalon.scan();
    })
</fis:script>

