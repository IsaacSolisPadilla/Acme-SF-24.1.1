<%@page%>

<%@taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="acme" uri="http://acme-framework.org/"%>"

<acme:form>
	<acme:input-textbox code="manager.project.form.label.code" path="code"/>
	<acme:input-textbox code="manager.project.form.label.title" path="title"/>
	<acme:input-textarea code="manager.project.form.label.abstractText" path="abstractText"/>
	<acme:input-textbox code="manager.project.form.label.cost" path="cost"/>
	<acme:input-url code="manager.project.form.label.link" path="link"/>
	
	<jstl:choose>
		<jstl:when test="${acme:anyOf(_command, 'show|update|delete|publish') && isPublished == false}">
			<acme:input-checkbox code="manager.project.form.label.hasFatalErrors" path="hasFatalErrors"/>
			<acme:input-checkbox code="manager.project.form.label.isPublished" path="isPublished"/>
			<acme:submit code="manager.project.form.button.delete" action="/manager/project/delete"/>
			<acme:submit code="manager.project.form.button.update" action="/manager/project/update"/>
			<acme:submit code="manager.project.form.button.publish" action="/manager/project/publish"/>
		</jstl:when>

		<jstl:when test="${_command == 'create'}">
			<acme:submit code="manager.project.form.button.create" action="/manager/project/create"/>
		</jstl:when>
	</jstl:choose>
</acme:form>