
<%@ page import="crmcuc.Contacto" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'contacto.label', default: 'Contacto')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-contacto" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-contacto" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list contacto">
			
				<g:if test="${contactoInstance?.fechaRegistro}">
				<li class="fieldcontain">
					<span id="fechaRegistro-label" class="property-label"><g:message code="contacto.fechaRegistro.label" default="Fecha Registro" /></span>
					
						<span class="property-value" aria-labelledby="fechaRegistro-label"><g:formatDate date="${contactoInstance?.fechaRegistro}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${contactoInstance?.idEstadoContacto}">
				<li class="fieldcontain">
					<span id="idEstadoContacto-label" class="property-label"><g:message code="contacto.idEstadoContacto.label" default="Id Estado Contacto" /></span>
					
						<span class="property-value" aria-labelledby="idEstadoContacto-label"><g:fieldValue bean="${contactoInstance}" field="idEstadoContacto"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contactoInstance?.clientes}">
				<li class="fieldcontain">
					<span id="clientes-label" class="property-label"><g:message code="contacto.clientes.label" default="Clientes" /></span>
					
						<span class="property-value" aria-labelledby="clientes-label"><g:link controller="cliente" action="show" id="${contactoInstance?.clientes?.id}">${contactoInstance?.clientes?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${contactoInstance?.personas}">
				<li class="fieldcontain">
					<span id="personas-label" class="property-label"><g:message code="contacto.personas.label" default="Personas" /></span>
					
						<span class="property-value" aria-labelledby="personas-label"><g:link controller="persona" action="show" id="${contactoInstance?.personas?.id}">${contactoInstance?.personas?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:contactoInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${contactoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
