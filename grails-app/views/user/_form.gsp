<%@ page import="gorm.composition.example.User" %>
<%@ page import="gorm.composition.example.model.Address" %>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'userName', 'error')} required">
	<label for="userName">
		<g:message code="user.userName.label" default="User Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="userName" required="" value="${userInstance?.userName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'firstName', 'error')} required">
	<label for="firstName">
		<g:message code="user.firstName.label" default="First Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="firstName" required="" value="${userInstance?.firstName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'lastName', 'error')} required">
	<label for="lastName">
		<g:message code="user.lastName.label" default="Last Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="lastName" required="" value="${userInstance?.lastName}"/>
</div>
<fieldset class="embedded"><legend><g:message code="user.homeAddress.label" default="Home Address" /></legend>
<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'homeAddress.state', 'error')} required">
	<label for="homeAddress.state">
		<g:message code="user.homeAddress.state.label" default="State" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="homeAddress.state" from="${Address.constraints.state.inList}" required="" value="${userInstance?.homeAddress?.state}" valueMessagePrefix="address.state"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'homeAddress.streetAddress', 'error')} required">
	<label for="homeAddress.streetAddress">
		<g:message code="user.homeAddress.streetAddress.label" default="Street Address" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="homeAddress.streetAddress" required="" value="${userInstance?.homeAddress?.streetAddress}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'homeAddress.zipCode', 'error')} required">
	<label for="homeAddress.zipCode">
		<g:message code="user.homeAddress.zipCode.label" default="Zip Code" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="homeAddress.zipCode" pattern="${Address.constraints.zipCode.matches}" required="" value="${userInstance?.homeAddress?.zipCode}"/>
</div>
</fieldset>
