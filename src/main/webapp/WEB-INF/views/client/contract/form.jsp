<%@page%>

<%@taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="acme" uri="http://acme-framework.org/"%>

<acme:form>
	<acme:input-textbox code="client.contract.form.label.code" path="code" placeholder="AAA-000"/>
	<acme:input-select code="client.contract.form.label.project" path="project" choices="${projects}"/>
	<jstl:choose>
		<jstl:when test="${acme:anyOf(_command, 'show|update|delete|publish') && isPublished == false}">
			<acme:input-moment code="client.contract.form.label.instantiationMoment" readonly="true" path="instantiationMoment"/>
		</jstl:when>
	</jstl:choose>
	<acme:input-textbox code="client.contract.form.label.providerName" path="providerName"/>
	<acme:input-textbox code="client.contract.form.label.customerName" path="customerName"/>
	<acme:input-textarea code="client.contract.form.label.goals" path="goals"/>
	<acme:input-money code="client.contract.form.label.budget" path="budget"/>
	<acme:input-checkbox code="client.contract.form.label.publish" readonly="true" path="isPublished"/>

	<jstl:choose>
	
		<jstl:when test="${acme:anyOf(_command, 'show|update|delete|publish') && isPublished == false}">
			<acme:submit code="client.contract.form.button.delete" action="/client/contract/delete"/>
			<acme:submit code="client.contract.form.button.update" action="/client/contract/update"/>
			<acme:submit code="client.contract.form.button.publish" action="/client/contract/publish"/>
		</jstl:when>

		<jstl:when test="${isPublished == true}">
			<acme:button code="client.contract.form.button.progress-logs" action="/client/progress-log/list?id=${id}"/>
		</jstl:when>
		
		<jstl:when test="${_command == 'create' }">
			<acme:submit code="client.contract.form.button.create"
				action="/client/contract/create" />
		</jstl:when>
		
	</jstl:choose>
</acme:form>