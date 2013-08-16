
<%@ page import="springtrader.Quote" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'quote.label', default: 'Quote')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-quote" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-quote" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list quote">
			
				<g:if test="${quoteInstance?.low}">
				<li class="fieldcontain">
					<span id="low-label" class="property-label"><g:message code="quote.low.label" default="Low" /></span>
					
						<span class="property-value" aria-labelledby="low-label"><g:fieldValue bean="${quoteInstance}" field="low"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${quoteInstance?.open1}">
				<li class="fieldcontain">
					<span id="open1-label" class="property-label"><g:message code="quote.open1.label" default="Open1" /></span>
					
						<span class="property-value" aria-labelledby="open1-label"><g:fieldValue bean="${quoteInstance}" field="open1"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${quoteInstance?.volume}">
				<li class="fieldcontain">
					<span id="volume-label" class="property-label"><g:message code="quote.volume.label" default="Volume" /></span>
					
						<span class="property-value" aria-labelledby="volume-label"><g:fieldValue bean="${quoteInstance}" field="volume"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${quoteInstance?.price}">
				<li class="fieldcontain">
					<span id="price-label" class="property-label"><g:message code="quote.price.label" default="Price" /></span>
					
						<span class="property-value" aria-labelledby="price-label"><g:fieldValue bean="${quoteInstance}" field="price"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${quoteInstance?.high}">
				<li class="fieldcontain">
					<span id="high-label" class="property-label"><g:message code="quote.high.label" default="High" /></span>
					
						<span class="property-value" aria-labelledby="high-label"><g:fieldValue bean="${quoteInstance}" field="high"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${quoteInstance?.companyName}">
				<li class="fieldcontain">
					<span id="companyName-label" class="property-label"><g:message code="quote.companyName.label" default="Company Name" /></span>
					
						<span class="property-value" aria-labelledby="companyName-label"><g:fieldValue bean="${quoteInstance}" field="companyName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${quoteInstance?.symbol}">
				<li class="fieldcontain">
					<span id="symbol-label" class="property-label"><g:message code="quote.symbol.label" default="Symbol" /></span>
					
						<span class="property-value" aria-labelledby="symbol-label"><g:fieldValue bean="${quoteInstance}" field="symbol"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${quoteInstance?.change1}">
				<li class="fieldcontain">
					<span id="change1-label" class="property-label"><g:message code="quote.change1.label" default="Change1" /></span>
					
						<span class="property-value" aria-labelledby="change1-label"><g:fieldValue bean="${quoteInstance}" field="change1"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${quoteInstance?.id}" />
					<g:link class="edit" action="edit" id="${quoteInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
