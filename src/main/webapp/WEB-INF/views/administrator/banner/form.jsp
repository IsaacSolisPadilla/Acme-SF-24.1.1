<%@page%>

<%@taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="acme" uri="http://acme-framework.org/"%>

<acme:form>
	<acme:input-moment code="administrator.banner.form.label.displayStart" path="displayStart"/>
	<acme:input-moment code="administrator.banner.form.label.displayEnd" path="displayEnd"/>
	<acme:input-url code="administrator.banner.form.label.picture" path="picture"/>
	<acme:input-textbox code="administrator.banner.form.label.slogan" path="slogan"/>
	<acme:input-url code="administrator.banner.form.label.webDocument" path="webDocument"/>
	<jstl:choose>
		<jstl:when test="${acme:anyOf(_command, 'show|update|delete')}">
			<acme:submit code="administrator.banner.form.button.update" action="/administrator/banner/update"/>
			<acme:submit code="administrator.banner.form.button.delete" action="/administrator/banner/delete"/>
		</jstl:when>
		<jstl:when test="${_command == 'create'}">
			<acme:submit code="administrator.banner.form.button.create" action="/administrator/banner/create"/>
		</jstl:when>
	</jstl:choose>
</acme:form>