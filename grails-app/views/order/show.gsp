
<%@ page import="springtrader.Order" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'order.label', default: 'Order')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-order" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-order" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list order">
			
				<g:if test="${orderInstance?.account}">
				<li class="fieldcontain">
					<span id="account-label" class="property-label"><g:message code="order.account.label" default="Account" /></span>
					
						<span class="property-value" aria-labelledby="account-label"><g:link controller="account" action="show" id="${orderInstance?.account?.id}">${orderInstance?.account?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${orderInstance?.completiondate}">
				<li class="fieldcontain">
					<span id="completiondate-label" class="property-label"><g:message code="order.completiondate.label" default="Completiondate" /></span>
					
						<span class="property-value" aria-labelledby="completiondate-label"><g:formatDate date="${orderInstance?.completiondate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${orderInstance?.holding}">
				<li class="fieldcontain">
					<span id="holding-label" class="property-label"><g:message code="order.holding.label" default="Holding" /></span>
					
						<span class="property-value" aria-labelledby="holding-label"><g:link controller="holding" action="show" id="${orderInstance?.holding?.id}">${orderInstance?.holding?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${orderInstance?.opendate}">
				<li class="fieldcontain">
					<span id="opendate-label" class="property-label"><g:message code="order.opendate.label" default="Opendate" /></span>
					
						<span class="property-value" aria-labelledby="opendate-label"><g:formatDate date="${orderInstance?.opendate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${orderInstance?.orderfee}">
				<li class="fieldcontain">
					<span id="orderfee-label" class="property-label"><g:message code="order.orderfee.label" default="Orderfee" /></span>
					
						<span class="property-value" aria-labelledby="orderfee-label"><g:fieldValue bean="${orderInstance}" field="orderfee"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${orderInstance?.orderstatus}">
				<li class="fieldcontain">
					<span id="orderstatus-label" class="property-label"><g:message code="order.orderstatus.label" default="Orderstatus" /></span>
					
						<span class="property-value" aria-labelledby="orderstatus-label"><g:fieldValue bean="${orderInstance}" field="orderstatus"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${orderInstance?.ordertype}">
				<li class="fieldcontain">
					<span id="ordertype-label" class="property-label"><g:message code="order.ordertype.label" default="Ordertype" /></span>
					
						<span class="property-value" aria-labelledby="ordertype-label"><g:fieldValue bean="${orderInstance}" field="ordertype"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${orderInstance?.price}">
				<li class="fieldcontain">
					<span id="price-label" class="property-label"><g:message code="order.price.label" default="Price" /></span>
					
						<span class="property-value" aria-labelledby="price-label"><g:fieldValue bean="${orderInstance}" field="price"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${orderInstance?.quantity}">
				<li class="fieldcontain">
					<span id="quantity-label" class="property-label"><g:message code="order.quantity.label" default="Quantity" /></span>
					
						<span class="property-value" aria-labelledby="quantity-label"><g:fieldValue bean="${orderInstance}" field="quantity"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${orderInstance?.quote}">
				<li class="fieldcontain">
					<span id="quote-label" class="property-label"><g:message code="order.quote.label" default="Quote" /></span>
					
						<span class="property-value" aria-labelledby="quote-label"><g:link controller="quote" action="show" id="${orderInstance?.quote?.id}">${orderInstance?.quote?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${orderInstance?.id}" />
					<g:link class="edit" action="edit" id="${orderInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
