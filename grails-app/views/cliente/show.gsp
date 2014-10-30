
<%@ page import="crmcuc.Cliente" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'cliente.label', default: 'Cliente')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-cliente" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-cliente" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list cliente">
			
				<g:if test="${clienteInstance?.razonSocial}">
				<li class="fieldcontain">
					<span id="razonSocial-label" class="property-label"><g:message code="cliente.razonSocial.label" default="Razon Social" /></span>
					
						<span class="property-value" aria-labelledby="razonSocial-label"><g:fieldValue bean="${clienteInstance}" field="razonSocial"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${clienteInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="cliente.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${clienteInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${clienteInstance?.direccion}">
				<li class="fieldcontain">
					<span id="direccion-label" class="property-label"><g:message code="cliente.direccion.label" default="Direccion" /></span>
					
						<span class="property-value" aria-labelledby="direccion-label"><g:fieldValue bean="${clienteInstance}" field="direccion"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${clienteInstance?.idTipoCliente}">
				<li class="fieldcontain">
					<span id="idTipoCliente-label" class="property-label"><g:message code="cliente.idTipoCliente.label" default="Id Tipo Cliente" /></span>
					
						<span class="property-value" aria-labelledby="idTipoCliente-label"><g:fieldValue bean="${clienteInstance}" field="idTipoCliente"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${clienteInstance?.idEstadoCliente}">
				<li class="fieldcontain">
					<span id="idEstadoCliente-label" class="property-label"><g:message code="cliente.idEstadoCliente.label" default="Id Estado Cliente" /></span>
					
						<span class="property-value" aria-labelledby="idEstadoCliente-label"><g:fieldValue bean="${clienteInstance}" field="idEstadoCliente"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${clienteInstance?.nit}">
				<li class="fieldcontain">
					<span id="nit-label" class="property-label"><g:message code="cliente.nit.label" default="Nit" /></span>
					
						<span class="property-value" aria-labelledby="nit-label"><g:fieldValue bean="${clienteInstance}" field="nit"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${clienteInstance?.telefonos}">
				<li class="fieldcontain">
					<span id="telefonos-label" class="property-label"><g:message code="cliente.telefonos.label" default="Telefonos" /></span>
					
						<span class="property-value" aria-labelledby="telefonos-label"><g:fieldValue bean="${clienteInstance}" field="telefonos"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:clienteInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="btn btn-mini btn-primary" action="edit" resource="${clienteInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="btn btn-danger" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
