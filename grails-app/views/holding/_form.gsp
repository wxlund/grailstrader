<%@ page import="springtrader.Holding" %>



<div class="fieldcontain ${hasErrors(bean: holdingInstance, field: 'accountAccountid', 'error')} required">
	<label for="accountAccountid">
		<g:message code="holding.accountAccountid.label" default="Account Accountid" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="accountAccountid" type="number" value="${holdingInstance.accountAccountid}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: holdingInstance, field: 'orders', 'error')} ">
	<label for="orders">
		<g:message code="holding.orders.label" default="Orders" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${holdingInstance?.orders?}" var="o">
    <li><g:link controller="order" action="show" id="${o.id}">${o?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="order" action="create" params="['holding.id': holdingInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'order.label', default: 'Order')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: holdingInstance, field: 'purchasedate', 'error')} required">
	<label for="purchasedate">
		<g:message code="holding.purchasedate.label" default="Purchasedate" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="purchasedate" precision="day"  value="${holdingInstance?.purchasedate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: holdingInstance, field: 'purchaseprice', 'error')} required">
	<label for="purchaseprice">
		<g:message code="holding.purchaseprice.label" default="Purchaseprice" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="purchaseprice" value="${fieldValue(bean: holdingInstance, field: 'purchaseprice')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: holdingInstance, field: 'quantity', 'error')} required">
	<label for="quantity">
		<g:message code="holding.quantity.label" default="Quantity" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="quantity" value="${fieldValue(bean: holdingInstance, field: 'quantity')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: holdingInstance, field: 'quoteSymbol', 'error')} ">
	<label for="quoteSymbol">
		<g:message code="holding.quoteSymbol.label" default="Quote Symbol" />
		
	</label>
	<g:textField name="quoteSymbol" value="${holdingInstance?.quoteSymbol}"/>
</div>

