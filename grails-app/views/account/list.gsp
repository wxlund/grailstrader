
<%@ page import="springtrader.Account" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'account.label', default: 'Account')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-account" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-account" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<th><g:message code="account.accountProfile.label" default="Account Profile" /></th>
					
						<g:sortableColumn property="balance" title="${message(code: 'account.balance.label', default: 'Balance')}" />
					
						<g:sortableColumn property="creationdate" title="${message(code: 'account.creationdate.label', default: 'Creationdate')}" />
					
						<g:sortableColumn property="lastlogin" title="${message(code: 'account.lastlogin.label', default: 'Lastlogin')}" />
					
						<g:sortableColumn property="logincount" title="${message(code: 'account.logincount.label', default: 'Logincount')}" />
					
						<g:sortableColumn property="logoutcount" title="${message(code: 'account.logoutcount.label', default: 'Logoutcount')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${accountInstanceList}" status="i" var="accountInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${accountInstance.id}">${fieldValue(bean: accountInstance, field: "accountProfile")}</g:link></td>
					
						<td>${fieldValue(bean: accountInstance, field: "balance")}</td>
					
						<td><g:formatDate date="${accountInstance.creationdate}" /></td>
					
						<td><g:formatDate date="${accountInstance.lastlogin}" /></td>
					
						<td>${fieldValue(bean: accountInstance, field: "logincount")}</td>
					
						<td>${fieldValue(bean: accountInstance, field: "logoutcount")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${accountInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
