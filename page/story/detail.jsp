
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
			<div class="page-s-container">
				<a href="javascript:void(0)" class="page-headline">掌柜故事/Showcase Stories</a>
				<div class="article-title-panel">
					<h1>${article.title}</h1>
					<p class="article-info-wrap"><span class="article-info-source">来源:${article.source}</span><span class="article-info-date">日期：${article.createTime}</span></p>
				</div>
				<div class="gui-panel article-panel">
					${article.content}
				</div>
				<div class="article-page-panel">
					<div class="article-page-wrap">
						<!-- pre-->
						<c:if test="${empty preArticle}">
							<a href="javascript:void(0);">上一篇: <span>没有了</span>
						</c:if>
						<c:if test="${ not empty preArticle}">
							<a href="${ctx}/story/detail/${preArticle.id}">上一篇:
							<span>${preArticle.title}</span></a>
						</c:if>
						<!-- next-->
						<c:if test="${empty nextArticle}">
							<a href="javascript:void(0);">下一篇: <span>没有了</span>
						</c:if>
						<c:if test="${ not empty nextArticle}">
							<a href="${ctx}/story/detail/${nextArticle.id}">下一篇:
							<span>${nextArticle.title}</span></a>
						</c:if>
					</div>
					<c:if test="${not empty preArticle}">
					<a href="${ctx}/story/detail/${preArticle.id}" class="page-prev">
						<i class="iconfont ">&#xe60a;</i>返回上一页</a>
					</c:if>
				</div>
			</div>
		</div>
	</div>
	</fis:block>

	
</fis:extends>