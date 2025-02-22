<%@page%>

<%@taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="acme" uri="http://acme-framework.org/"%>

<acme:form>
	<acme:input-textbox code="auditor.code-audit.form.label.code" path="code" placeholder="AAA-000"/>
	<acme:input-select code="auditor.code-audit.form.label.project" path="project" choices="${projects}"/>
	<acme:input-moment code="auditor.code-audit.form.label.execution" path="execution"/>
	<acme:input-select code="auditor.code-audit.form.label.type" path="type" choices="${types}"/>
	<acme:input-textarea code="auditor.code-audit.form.label.correctiveActions" path="correctiveActions" placeholder=""/>
	<acme:input-textarea code="auditor.code-audit.form.label.mark" readonly="true" path="mark" placeholder=""/>
	<acme:input-url code="auditor.code-audit.form.label.link" path="link" placeholder="https://www.acme.com"/>

	<jstl:choose>
		<jstl:when test="${_command == 'show' && isPublished == true}">
			<acme:button code="auditor.code-audit.form.button.auditRecord" action="/auditor/audit-record/list?codeAuditId=${id}"/>	
		</jstl:when>
		<jstl:when test="${acme:anyOf(_command, 'show|update|delete|publish') && isPublished == false}">
			<acme:button code="auditor.code-audit.form.button.auditRecord" action="/auditor/audit-record/list?codeAuditId=${id}"/>
			<acme:submit code="auditor.code-audit.form.button.delete" action="/auditor/code-audit/delete"/>
			<acme:submit code="auditor.code-audit.form.button.update" action="/auditor/code-audit/update"/>
			<acme:submit code="auditor.code-audit.form.button.publish" action="/auditor/code-audit/publish"/>
		</jstl:when>

		<jstl:when test="${_command == 'create' }">
			<acme:submit code="auditor.code-audit.form.button.create" action="/auditor/code-audit/create"/>
		</jstl:when>
	</jstl:choose>
</acme:form>