<%@page%>

<%@taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="acme" uri="http://acme-framework.org/"%>

<acme:list>
	<acme:list-column code="client.contract.list.label.code" path="code" width="20%"/>
		<acme:list-column code="client.contract.list.label.instantiationMoment" path="instantiationMoment" width="20%"/>
		<acme:list-column code="client.contract.list.label.providerName" path="providerName" width="20%"/>
		<acme:list-column code="client.contract.list.label.customerName" path="customerName" width="20%"/>
		<acme:list-column code="client.contract.list.label.goals" path="goals" width="10%"/>
		<acme:list-column code="client.contract.list.label.budget" path="budget" width="10%"/>
</acme:list>
