<%@ page import="springtrader.AccountProfile" %>



<div class="fieldcontain ${hasErrors(bean: accountProfileInstance, field: 'accounts', 'error')} ">
	<label for="accounts">
		<g:message code="accountProfile.accounts.label" default="Accounts" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${accountProfileInstance?.accounts?}" var="a">
    <li><g:link controller="account" action="show" id="${a.id}">${a?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="account" action="create" params="['accountProfile.id': accountProfileInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'account.label', default: 'Account')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: accountProfileInstance, field: 'address', 'error')} ">
	<label for="address">
		<g:message code="accountProfile.address.label" default="Address" />
		
	</label>
	<g:textField name="address" value="${accountProfileInstance?.address}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: accountProfileInstance, field: 'authtoken', 'error')} ">
	<label for="authtoken">
		<g:message code="accountProfile.authtoken.label" default="Authtoken" />
		
	</label>
	<g:textField name="authtoken" value="${accountProfileInstance?.authtoken}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: accountProfileInstance, field: 'creditcard', 'error')} ">
	<label for="creditcard">
		<g:message code="accountProfile.creditcard.label" default="Creditcard" />
		
	</label>
	<g:textField name="creditcard" value="${accountProfileInstance?.creditcard}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: accountProfileInstance, field: 'email', 'error')} ">
	<label for="email">
		<g:message code="accountProfile.email.label" default="Email" />
		
	</label>
	<g:textField name="email" value="${accountProfileInstance?.email}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: accountProfileInstance, field: 'fullname', 'error')} ">
	<label for="fullname">
		<g:message code="accountProfile.fullname.label" default="Fullname" />
		
	</label>
	<g:textField name="fullname" value="${accountProfileInstance?.fullname}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: accountProfileInstance, field: 'passwd', 'error')} ">
	<label for="passwd">
		<g:message code="accountProfile.passwd.label" default="Passwd" />
		
	</label>
	<g:textField name="passwd" value="${accountProfileInstance?.passwd}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: accountProfileInstance, field: 'userid', 'error')} ">
	<label for="userid">
		<g:message code="accountProfile.userid.label" default="Userid" />
		
	</label>
	<g:textField name="userid" value="${accountProfileInstance?.userid}"/>
</div>

