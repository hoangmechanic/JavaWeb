<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>

<nav class="navbar navbar-inverse">
	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand" href="home/index">DataWings</a>
		</div>
		<ul class="nav navbar-nav">
			<li><a href="home/index"><s:message code="layout.menu.home" /></a></li>
			<li><a href="home/about"><s:message code="layout.menu.about" /></a></li>
			<li><a href="home/contact"><s:message code="layout.menu.contact" /></a></li>
			<li><a href="home/feedback"><s:message code="layout.menu.feedback" /></a></li>
			<li><a href="home/faq"><s:message code="layout.menu.faq" /></a></li>			
		</ul>
		<ul class="nav navbar-nav navbar-right">
			<li><a href="home/locale?lang=en">English</a></li>
			<li><a href="home/locale?lang=vi">Tiếng Việt</a></li>
		</ul>
	</div>
</nav>