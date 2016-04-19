
<%-- JSP标签，每个JSP必须引入 --%>
<%@ page contentType="text/html;charset=utf-8" %>
<%@ taglib uri="/fis" prefix="fis"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctx" value="${rc.contextPath}" />

<%-- 继承layout --%>
<fis:extends name="/page/layout/layout.jsp">

	<%-- 自身页面样式--%>
	<fis:block name="selfStyles" >
	<fis:require id="./story.less"></fis:require>
	</fis:block>
	
	<fis:block name="content" >
	<div class="page">
		<img src="/static/img/story-bg.png" class="story-bg">	
		<div class="page-container">
			<div class="page-s-container"  ms-controller="StoryListCtrl">
				<a href="javascript:void(0)" class="page-headline">掌柜故事/Showcase Stories</a>
				<div class="gui-panel story-panel"  ms-repeat="list">
					<span class="story-img"></span>
					<a ms-attr-href="${ctx}/story/detail/{{el.id}}" class="story-content">
						<p class="story-title">{{el.title | sanitize}}</p>
						<p>{{el.content | sanitize}}</p>
					</a>
				</div>
				<div class="page-wrap">
					<div ms-widget="pager"></div>
				</div>
			</div>
			
		</div>
	</div>
	</fis:block>

	<fis:script>
		require(["./story","mmRequest"], function(story){
			story.init()
		})
	</fis:script>
</fis:extends>