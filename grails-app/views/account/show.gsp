
<%@ page import="springtrader.Account" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'account.label', default: 'Account')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-account" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-account" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list account">
			
				<g:if test="${accountInstance?.accountProfile}">
				<li class="fieldcontain">
					<span id="accountProfile-label" class="property-label"><g:message code="account.accountProfile.label" default="Account Profile" /></span>
					
						<span class="property-value" aria-labelledby="accountProfile-label"><g:link controller="accountProfile" action="show" id="${accountInstance?.accountProfile?.id}">${accountInstance?.accountProfile?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${accountInstance?.balance}">
				<li class="fieldcontain">
					<span id="balance-label" class="property-label"><g:message code="account.balance.label" default="Balance" /></span>
					
						<span class="property-value" aria-labelledby="balance-label"><g:fieldValue bean="${accountInstance}" field="balance"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${accountInstance?.creationdate}">
				<li class="fieldcontain">
					<span id="creationdate-label" class="property-label"><g:message code="account.creationdate.label" default="Creationdate" /></span>
					
						<span class="property-value" aria-labelledby="creationdate-label"><g:formatDate date="${accountInstance?.creationdate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${accountInstance?.lastlogin}">
				<li class="fieldcontain">
					<span id="lastlogin-label" class="property-label"><g:message code="account.lastlogin.label" default="Lastlogin" /></span>
					
						<span class="property-value" aria-labelledby="lastlogin-label"><g:formatDate date="${accountInstance?.lastlogin}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${accountInstance?.logincount}">
				<li class="fieldcontain">
					<span id="logincount-label" class="property-label"><g:message code="account.logincount.label" default="Logincount" /></span>
					
						<span class="property-value" aria-labelledby="logincount-label"><g:fieldValue bean="${accountInstance}" field="logincount"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${accountInstance?.logoutcount}">
				<li class="fieldcontain">
					<span id="logoutcount-label" class="property-label"><g:message code="account.logoutcount.label" default="Logoutcount" /></span>
					
						<span class="property-value" aria-labelledby="logoutcount-label"><g:fieldValue bean="${accountInstance}" field="logoutcount"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${accountInstance?.openbalance}">
				<li class="fieldcontain">
					<span id="openbalance-label" class="property-label"><g:message code="account.openbalance.label" default="Openbalance" /></span>
					
						<span class="property-value" aria-labelledby="openbalance-label"><g:fieldValue bean="${accountInstance}" field="openbalance"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${accountInstance?.orders}">
				<li class="fieldcontain">
					<span id="orders-label" class="property-label"><g:message code="account.orders.label" default="Orders" /></span>
					
						<g:each in="${accountInstance.orders}" var="o">
						<span class="property-value" aria-labelledby="orders-label"><g:link controller="order" action="show" id="${o.id}">${o?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${accountInstance?.id}" />
					<g:link class="edit" action="edit" id="${accountInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
