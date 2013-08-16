<%@ page import="springtrader.Account" %>



<div class="fieldcontain ${hasErrors(bean: accountInstance, field: 'accountProfile', 'error')} required">
	<label for="accountProfile">
		<g:message code="account.accountProfile.label" default="Account Profile" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="accountProfile" name="accountProfile.id" from="${springtrader.AccountProfile.list()}" optionKey="id" required="" value="${accountInstance?.accountProfile?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: accountInstance, field: 'balance', 'error')} required">
	<label for="balance">
		<g:message code="account.balance.label" default="Balance" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="balance" value="${fieldValue(bean: accountInstance, field: 'balance')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: accountInstance, field: 'creationdate', 'error')} required">
	<label for="creationdate">
		<g:message code="account.creationdate.label" default="Creationdate" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="creationdate" precision="day"  value="${accountInstance?.creationdate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: accountInstance, field: 'lastlogin', 'error')} required">
	<label for="lastlogin">
		<g:message code="account.lastlogin.label" default="Lastlogin" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="lastlogin" precision="day"  value="${accountInstance?.lastlogin}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: accountInstance, field: 'logincount', 'error')} required">
	<label for="logincount">
		<g:message code="account.logincount.label" default="Logincount" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="logincount" type="number" value="${accountInstance.logincount}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: accountInstance, field: 'logoutcount', 'error')} required">
	<label for="logoutcount">
		<g:message code="account.logoutcount.label" default="Logoutcount" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="logoutcount" type="number" value="${accountInstance.logoutcount}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: accountInstance, field: 'openbalance', 'error')} required">
	<label for="openbalance">
		<g:message code="account.openbalance.label" default="Openbalance" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="openbalance" value="${fieldValue(bean: accountInstance, field: 'openbalance')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: accountInstance, field: 'orders', 'error')} ">
	<label for="orders">
		<g:message code="account.orders.label" default="Orders" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${accountInstance?.orders?}" var="o">
    <li><g:link controller="order" action="show" id="${o.id}">${o?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="order" action="create" params="['account.id': accountInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'order.label', default: 'Order')])}</g:link>
</li>
</ul>

</div>

