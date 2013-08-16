
<%@ page import="springtrader.AccountProfile" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'accountProfile.label', default: 'AccountProfile')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-accountProfile" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-accountProfile" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list accountProfile">
			
				<g:if test="${accountProfileInstance?.accounts}">
				<li class="fieldcontain">
					<span id="accounts-label" class="property-label"><g:message code="accountProfile.accounts.label" default="Accounts" /></span>
					
						<g:each in="${accountProfileInstance.accounts}" var="a">
						<span class="property-value" aria-labelledby="accounts-label"><g:link controller="account" action="show" id="${a.id}">${a?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${accountProfileInstance?.address}">
				<li class="fieldcontain">
					<span id="address-label" class="property-label"><g:message code="accountProfile.address.label" default="Address" /></span>
					
						<span class="property-value" aria-labelledby="address-label"><g:fieldValue bean="${accountProfileInstance}" field="address"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${accountProfileInstance?.authtoken}">
				<li class="fieldcontain">
					<span id="authtoken-label" class="property-label"><g:message code="accountProfile.authtoken.label" default="Authtoken" /></span>
					
						<span class="property-value" aria-labelledby="authtoken-label"><g:fieldValue bean="${accountProfileInstance}" field="authtoken"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${accountProfileInstance?.creditcard}">
				<li class="fieldcontain">
					<span id="creditcard-label" class="property-label"><g:message code="accountProfile.creditcard.label" default="Creditcard" /></span>
					
						<span class="property-value" aria-labelledby="creditcard-label"><g:fieldValue bean="${accountProfileInstance}" field="creditcard"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${accountProfileInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="accountProfile.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${accountProfileInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${accountProfileInstance?.fullname}">
				<li class="fieldcontain">
					<span id="fullname-label" class="property-label"><g:message code="accountProfile.fullname.label" default="Fullname" /></span>
					
						<span class="property-value" aria-labelledby="fullname-label"><g:fieldValue bean="${accountProfileInstance}" field="fullname"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${accountProfileInstance?.passwd}">
				<li class="fieldcontain">
					<span id="passwd-label" class="property-label"><g:message code="accountProfile.passwd.label" default="Passwd" /></span>
					
						<span class="property-value" aria-labelledby="passwd-label"><g:fieldValue bean="${accountProfileInstance}" field="passwd"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${accountProfileInstance?.userid}">
				<li class="fieldcontain">
					<span id="userid-label" class="property-label"><g:message code="accountProfile.userid.label" default="Userid" /></span>
					
						<span class="property-value" aria-labelledby="userid-label"><g:fieldValue bean="${accountProfileInstance}" field="userid"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${accountProfileInstance?.id}" />
					<g:link class="edit" action="edit" id="${accountProfileInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
