
<%@ page import="springtrader.Holding" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'holding.label', default: 'Holding')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-holding" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-holding" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="accountAccountid" title="${message(code: 'holding.accountAccountid.label', default: 'Account Accountid')}" />
					
						<g:sortableColumn property="purchasedate" title="${message(code: 'holding.purchasedate.label', default: 'Purchasedate')}" />
					
						<g:sortableColumn property="purchaseprice" title="${message(code: 'holding.purchaseprice.label', default: 'Purchaseprice')}" />
					
						<g:sortableColumn property="quantity" title="${message(code: 'holding.quantity.label', default: 'Quantity')}" />
					
						<g:sortableColumn property="quoteSymbol" title="${message(code: 'holding.quoteSymbol.label', default: 'Quote Symbol')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${holdingInstanceList}" status="i" var="holdingInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${holdingInstance.id}">${fieldValue(bean: holdingInstance, field: "accountAccountid")}</g:link></td>
					
						<td><g:formatDate date="${holdingInstance.purchasedate}" /></td>
					
						<td>${fieldValue(bean: holdingInstance, field: "purchaseprice")}</td>
					
						<td>${fieldValue(bean: holdingInstance, field: "quantity")}</td>
					
						<td>${fieldValue(bean: holdingInstance, field: "quoteSymbol")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${holdingInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
