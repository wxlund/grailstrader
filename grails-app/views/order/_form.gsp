<%@ page import="springtrader.Order" %>



<div class="fieldcontain ${hasErrors(bean: orderInstance, field: 'account', 'error')} required">
	<label for="account">
		<g:message code="order.account.label" default="Account" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="account" name="account.id" from="${springtrader.Account.list()}" optionKey="id" required="" value="${orderInstance?.account?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: orderInstance, field: 'completiondate', 'error')} required">
	<label for="completiondate">
		<g:message code="order.completiondate.label" default="Completiondate" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="completiondate" precision="day"  value="${orderInstance?.completiondate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: orderInstance, field: 'holding', 'error')} required">
	<label for="holding">
		<g:message code="order.holding.label" default="Holding" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="holding" name="holding.id" from="${springtrader.Holding.list()}" optionKey="id" required="" value="${orderInstance?.holding?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: orderInstance, field: 'opendate', 'error')} required">
	<label for="opendate">
		<g:message code="order.opendate.label" default="Opendate" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="opendate" precision="day"  value="${orderInstance?.opendate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: orderInstance, field: 'orderfee', 'error')} required">
	<label for="orderfee">
		<g:message code="order.orderfee.label" default="Orderfee" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="orderfee" value="${fieldValue(bean: orderInstance, field: 'orderfee')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: orderInstance, field: 'orderstatus', 'error')} ">
	<label for="orderstatus">
		<g:message code="order.orderstatus.label" default="Orderstatus" />
		
	</label>
	<g:textField name="orderstatus" value="${orderInstance?.orderstatus}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: orderInstance, field: 'ordertype', 'error')} ">
	<label for="ordertype">
		<g:message code="order.ordertype.label" default="Ordertype" />
		
	</label>
	<g:textField name="ordertype" value="${orderInstance?.ordertype}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: orderInstance, field: 'price', 'error')} required">
	<label for="price">
		<g:message code="order.price.label" default="Price" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="price" value="${fieldValue(bean: orderInstance, field: 'price')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: orderInstance, field: 'quantity', 'error')} required">
	<label for="quantity">
		<g:message code="order.quantity.label" default="Quantity" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="quantity" value="${fieldValue(bean: orderInstance, field: 'quantity')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: orderInstance, field: 'quote', 'error')} required">
	<label for="quote">
		<g:message code="order.quote.label" default="Quote" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="quote" name="quote.id" from="${springtrader.Quote.list()}" optionKey="id" required="" value="${orderInstance?.quote?.id}" class="many-to-one"/>
</div>

