<%@ page import="springtrader.Quote" %>



<div class="fieldcontain ${hasErrors(bean: quoteInstance, field: 'low', 'error')} required">
	<label for="low">
		<g:message code="quote.low.label" default="Low" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="low" value="${fieldValue(bean: quoteInstance, field: 'low')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: quoteInstance, field: 'open1', 'error')} required">
	<label for="open1">
		<g:message code="quote.open1.label" default="Open1" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="open1" value="${fieldValue(bean: quoteInstance, field: 'open1')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: quoteInstance, field: 'volume', 'error')} required">
	<label for="volume">
		<g:message code="quote.volume.label" default="Volume" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="volume" value="${fieldValue(bean: quoteInstance, field: 'volume')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: quoteInstance, field: 'price', 'error')} required">
	<label for="price">
		<g:message code="quote.price.label" default="Price" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="price" value="${fieldValue(bean: quoteInstance, field: 'price')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: quoteInstance, field: 'high', 'error')} required">
	<label for="high">
		<g:message code="quote.high.label" default="High" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="high" value="${fieldValue(bean: quoteInstance, field: 'high')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: quoteInstance, field: 'companyName', 'error')} ">
	<label for="companyName">
		<g:message code="quote.companyName.label" default="Company Name" />
		
	</label>
	<g:textField name="companyName" value="${quoteInstance?.companyName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: quoteInstance, field: 'symbol', 'error')} ">
	<label for="symbol">
		<g:message code="quote.symbol.label" default="Symbol" />
		
	</label>
	<g:textField name="symbol" value="${quoteInstance?.symbol}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: quoteInstance, field: 'change1', 'error')} required">
	<label for="change1">
		<g:message code="quote.change1.label" default="Change1" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="change1" value="${fieldValue(bean: quoteInstance, field: 'change1')}" required=""/>
</div>

