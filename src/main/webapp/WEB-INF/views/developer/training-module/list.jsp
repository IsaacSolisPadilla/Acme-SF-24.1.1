<%@page%>

<%@taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="acme" uri="http://acme-framework.org/"%>

<acme:list>
	<acme:list-column code="developer.training-module.list.label.code" path="code" width="25%"/>
	<acme:list-column code="developer.training-module.list.label.creationMoment" path="creationMoment" width="25%"/>
	<acme:list-column code="developer.training-module.list.label.difficultyLevel" path="difficultyLevel" width="25%"/>
	<acme:list-column code="developer.training-module.list.label.draftMode" path="draftMode" width="25%"/>
</acme:list>

<jstl:if test="${ _command == 'list'}">
	<acme:button code="developer.training-module.list.button.create" action="/developer/training-module/create"/>
	
</jstl:if>