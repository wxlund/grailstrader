
<%@ page import="springtrader.Quote" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'quote.label', default: 'Quote')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-quote" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-quote" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="low" title="${message(code: 'quote.low.label', default: 'Low')}" />
					
						<g:sortableColumn property="open1" title="${message(code: 'quote.open1.label', default: 'Open1')}" />
					
						<g:sortableColumn property="volume" title="${message(code: 'quote.volume.label', default: 'Volume')}" />
					
						<g:sortableColumn property="price" title="${message(code: 'quote.price.label', default: 'Price')}" />
					
						<g:sortableColumn property="high" title="${message(code: 'quote.high.label', default: 'High')}" />
					
						<g:sortableColumn property="companyName" title="${message(code: 'quote.companyName.label', default: 'Company Name')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${quoteInstanceList}" status="i" var="quoteInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${quoteInstance.id}">${fieldValue(bean: quoteInstance, field: "low")}</g:link></td>
					
						<td>${fieldValue(bean: quoteInstance, field: "open1")}</td>
					
						<td>${fieldValue(bean: quoteInstance, field: "volume")}</td>
					
						<td>${fieldValue(bean: quoteInstance, field: "price")}</td>
					
						<td>${fieldValue(bean: quoteInstance, field: "high")}</td>
					
						<td>${fieldValue(bean: quoteInstance, field: "companyName")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${quoteInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
