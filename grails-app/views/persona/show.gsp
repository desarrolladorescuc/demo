
<%@ page import="crmcuc.Persona" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'persona.label', default: 'Persona')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-persona" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-persona" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list persona">
			
				<g:if test="${personaInstance?.cedula}">
				<li class="fieldcontain">
					<span id="cedula-label" class="property-label"><g:message code="persona.cedula.label" default="Cedula" /></span>
					
						<span class="property-value" aria-labelledby="cedula-label"><g:fieldValue bean="${personaInstance}" field="cedula"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personaInstance?.nombres}">
				<li class="fieldcontain">
					<span id="nombres-label" class="property-label"><g:message code="persona.nombres.label" default="Nombres" /></span>
					
						<span class="property-value" aria-labelledby="nombres-label"><g:fieldValue bean="${personaInstance}" field="nombres"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personaInstance?.apellidos}">
				<li class="fieldcontain">
					<span id="apellidos-label" class="property-label"><g:message code="persona.apellidos.label" default="Apellidos" /></span>
					
						<span class="property-value" aria-labelledby="apellidos-label"><g:fieldValue bean="${personaInstance}" field="apellidos"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personaInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="persona.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${personaInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personaInstance?.direccion}">
				<li class="fieldcontain">
					<span id="direccion-label" class="property-label"><g:message code="persona.direccion.label" default="Direccion" /></span>
					
						<span class="property-value" aria-labelledby="direccion-label"><g:fieldValue bean="${personaInstance}" field="direccion"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personaInstance?.telefonos}">
				<li class="fieldcontain">
					<span id="telefonos-label" class="property-label"><g:message code="persona.telefonos.label" default="Telefonos" /></span>
					
						<span class="property-value" aria-labelledby="telefonos-label"><g:fieldValue bean="${personaInstance}" field="telefonos"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personaInstance?.idTipoPersona}">
				<li class="fieldcontain">
					<span id="idTipoPersona-label" class="property-label"><g:message code="persona.idTipoPersona.label" default="Id Tipo Persona" /></span>
					
						<span class="property-value" aria-labelledby="idTipoPersona-label"><g:fieldValue bean="${personaInstance}" field="idTipoPersona"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personaInstance?.idEstadoPersona}">
				<li class="fieldcontain">
					<span id="idEstadoPersona-label" class="property-label"><g:message code="persona.idEstadoPersona.label" default="Id Estado Persona" /></span>
					
						<span class="property-value" aria-labelledby="idEstadoPersona-label"><g:fieldValue bean="${personaInstance}" field="idEstadoPersona"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personaInstance?.clientes}">
				<li class="fieldcontain">
					<span id="clientes-label" class="property-label"><g:message code="persona.clientes.label" default="Clientes" /></span>
					
						<g:each in="${personaInstance.clientes}" var="c">
						<span class="property-value" aria-labelledby="clientes-label"><g:link controller="cliente" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:personaInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${personaInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
