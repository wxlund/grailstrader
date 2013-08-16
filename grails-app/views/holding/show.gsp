
<%@ page import="springtrader.Holding" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'holding.label', default: 'Holding')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-holding" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-holding" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list holding">
			
				<g:if test="${holdingInstance?.accountAccountid}">
				<li class="fieldcontain">
					<span id="accountAccountid-label" class="property-label"><g:message code="holding.accountAccountid.label" default="Account Accountid" /></span>
					
						<span class="property-value" aria-labelledby="accountAccountid-label"><g:fieldValue bean="${holdingInstance}" field="accountAccountid"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${holdingInstance?.orders}">
				<li class="fieldcontain">
					<span id="orders-label" class="property-label"><g:message code="holding.orders.label" default="Orders" /></span>
					
						<g:each in="${holdingInstance.orders}" var="o">
						<span class="property-value" aria-labelledby="orders-label"><g:link controller="order" action="show" id="${o.id}">${o?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${holdingInstance?.purchasedate}">
				<li class="fieldcontain">
					<span id="purchasedate-label" class="property-label"><g:message code="holding.purchasedate.label" default="Purchasedate" /></span>
					
						<span class="property-value" aria-labelledby="purchasedate-label"><g:formatDate date="${holdingInstance?.purchasedate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${holdingInstance?.purchaseprice}">
				<li class="fieldcontain">
					<span id="purchaseprice-label" class="property-label"><g:message code="holding.purchaseprice.label" default="Purchaseprice" /></span>
					
						<span class="property-value" aria-labelledby="purchaseprice-label"><g:fieldValue bean="${holdingInstance}" field="purchaseprice"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${holdingInstance?.quantity}">
				<li class="fieldcontain">
					<span id="quantity-label" class="property-label"><g:message code="holding.quantity.label" default="Quantity" /></span>
					
						<span class="property-value" aria-labelledby="quantity-label"><g:fieldValue bean="${holdingInstance}" field="quantity"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${holdingInstance?.quoteSymbol}">
				<li class="fieldcontain">
					<span id="quoteSymbol-label" class="property-label"><g:message code="holding.quoteSymbol.label" default="Quote Symbol" /></span>
					
						<span class="property-value" aria-labelledby="quoteSymbol-label"><g:fieldValue bean="${holdingInstance}" field="quoteSymbol"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${holdingInstance?.id}" />
					<g:link class="edit" action="edit" id="${holdingInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
