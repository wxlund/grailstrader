
<%@ page import="springtrader.Order" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'order.label', default: 'Order')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-order" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-order" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<th><g:message code="order.account.label" default="Account" /></th>
					
						<g:sortableColumn property="completiondate" title="${message(code: 'order.completiondate.label', default: 'Completiondate')}" />
					
						<th><g:message code="order.holding.label" default="Holding" /></th>
					
						<g:sortableColumn property="opendate" title="${message(code: 'order.opendate.label', default: 'Opendate')}" />
					
						<g:sortableColumn property="orderfee" title="${message(code: 'order.orderfee.label', default: 'Orderfee')}" />
					
						<g:sortableColumn property="orderstatus" title="${message(code: 'order.orderstatus.label', default: 'Orderstatus')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${orderInstanceList}" status="i" var="orderInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${orderInstance.id}">${fieldValue(bean: orderInstance, field: "account")}</g:link></td>
					
						<td><g:formatDate date="${orderInstance.completiondate}" /></td>
					
						<td>${fieldValue(bean: orderInstance, field: "holding")}</td>
					
						<td><g:formatDate date="${orderInstance.opendate}" /></td>
					
						<td>${fieldValue(bean: orderInstance, field: "orderfee")}</td>
					
						<td>${fieldValue(bean: orderInstance, field: "orderstatus")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${orderInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
