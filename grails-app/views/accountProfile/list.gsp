
<%@ page import="springtrader.AccountProfile" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'accountProfile.label', default: 'AccountProfile')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-accountProfile" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-accountProfile" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="address" title="${message(code: 'accountProfile.address.label', default: 'Address')}" />
					
						<g:sortableColumn property="authtoken" title="${message(code: 'accountProfile.authtoken.label', default: 'Authtoken')}" />
					
						<g:sortableColumn property="creditcard" title="${message(code: 'accountProfile.creditcard.label', default: 'Creditcard')}" />
					
						<g:sortableColumn property="email" title="${message(code: 'accountProfile.email.label', default: 'Email')}" />
					
						<g:sortableColumn property="fullname" title="${message(code: 'accountProfile.fullname.label', default: 'Fullname')}" />
					
						<g:sortableColumn property="passwd" title="${message(code: 'accountProfile.passwd.label', default: 'Passwd')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${accountProfileInstanceList}" status="i" var="accountProfileInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${accountProfileInstance.id}">${fieldValue(bean: accountProfileInstance, field: "address")}</g:link></td>
					
						<td>${fieldValue(bean: accountProfileInstance, field: "authtoken")}</td>
					
						<td>${fieldValue(bean: accountProfileInstance, field: "creditcard")}</td>
					
						<td>${fieldValue(bean: accountProfileInstance, field: "email")}</td>
					
						<td>${fieldValue(bean: accountProfileInstance, field: "fullname")}</td>
					
						<td>${fieldValue(bean: accountProfileInstance, field: "passwd")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${accountProfileInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
