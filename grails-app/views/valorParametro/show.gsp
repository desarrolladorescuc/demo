
<%@ page import="crmcuc.ValorParametro" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'valorParametro.label', default: 'ValorParametro')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-valorParametro" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-valorParametro" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list valorParametro">
			
				<g:if test="${valorParametroInstance?.valor}">
				<li class="fieldcontain">
					<span id="valor-label" class="property-label"><g:message code="valorParametro.valor.label" default="Valor" /></span>
					
						<span class="property-value" aria-labelledby="valor-label"><g:fieldValue bean="${valorParametroInstance}" field="valor"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${valorParametroInstance?.descripcion}">
				<li class="fieldcontain">
					<span id="descripcion-label" class="property-label"><g:message code="valorParametro.descripcion.label" default="Descripcion" /></span>
					
						<span class="property-value" aria-labelledby="descripcion-label"><g:fieldValue bean="${valorParametroInstance}" field="descripcion"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${valorParametroInstance?.orden}">
				<li class="fieldcontain">
					<span id="orden-label" class="property-label"><g:message code="valorParametro.orden.label" default="Orden" /></span>
					
						<span class="property-value" aria-labelledby="orden-label"><g:fieldValue bean="${valorParametroInstance}" field="orden"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${valorParametroInstance?.estadoValorParametro}">
				<li class="fieldcontain">
					<span id="estadoValorParametro-label" class="property-label"><g:message code="valorParametro.estadoValorParametro.label" default="Estado Valor Parametro" /></span>
					
						<span class="property-value" aria-labelledby="estadoValorParametro-label"><g:fieldValue bean="${valorParametroInstance}" field="estadoValorParametro"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${valorParametroInstance?.parametro}">
				<li class="fieldcontain">
					<span id="parametro-label" class="property-label"><g:message code="valorParametro.parametro.label" default="Parametro" /></span>
					
						<span class="property-value" aria-labelledby="parametro-label"><g:link controller="parametro" action="show" id="${valorParametroInstance?.parametro?.id}">${valorParametroInstance?.parametro?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:valorParametroInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${valorParametroInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
