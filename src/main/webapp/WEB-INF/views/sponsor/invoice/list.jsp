<%--
- list.jsp
-
- Copyright (C) 2012-2024 Rafael Corchuelo.
-
- In keeping with the traditional purpose of furthering education and research, it is
- the policy of the copyright owner to permit non-commercial use and redistribution of
- this software. It has been tested carefully, but it is not guaranteed for any particular
- purposes.  The copyright owner does not offer any warranties or representations, nor do
- they accept any liabilities with respect to them.
--%>

<%@page%>

<%@taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="acme" uri="http://acme-framework.org/"%>

<acme:list>
	<acme:list-column code="sponsor.invoice.list.label.code" path="code" width="20%"/>	
	<acme:list-column code="sponsor.invoice.list.label.registrationTime" path="registrationTime" width="20%"/>
	<acme:list-column code="sponsor.invoice.list.label.dueDate" path="dueDate" width="20%"/>
	<acme:list-column code="sponsor.invoice.list.label.totalAmount" path="totalAmount" width="20%"/>
	<acme:list-column code="sponsor.invoice.list.label.draftMode" path="draftMode" width="20%"/>
	
</acme:list>

<jstl:choose>
	<jstl:when test="${showCreate}">
		<acme:button code="sponsor.invoice.form.button.create" action="/sponsor/invoice/create?masterId=${masterId}"/>
	</jstl:when>
</jstl:choose>