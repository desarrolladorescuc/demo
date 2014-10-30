
<%@ page import="crmcuc.Parametro" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'parametro.label', default: 'Parametro')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-parametro" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-parametro" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list parametro">
			
				<g:if test="${parametroInstance?.atributo}">
				<li class="fieldcontain">
					<span id="atributo-label" class="property-label"><g:message code="parametro.atributo.label" default="Atributo" /></span>
					
						<span class="property-value" aria-labelledby="atributo-label"><g:fieldValue bean="${parametroInstance}" field="atributo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${parametroInstance?.descripcion}">
				<li class="fieldcontain">
					<span id="descripcion-label" class="property-label"><g:message code="parametro.descripcion.label" default="Descripcion" /></span>
					
						<span class="property-value" aria-labelledby="descripcion-label"><g:fieldValue bean="${parametroInstance}" field="descripcion"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${parametroInstance?.estadoParametro}">
				<li class="fieldcontain">
					<span id="estadoParametro-label" class="property-label"><g:message code="parametro.estadoParametro.label" default="Estado Parametro" /></span>
					
						<span class="property-value" aria-labelledby="estadoParametro-label"><g:fieldValue bean="${parametroInstance}" field="estadoParametro"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${parametroInstance?.valorparametro}">
				<li class="fieldcontain">
					<span id="valorparametro-label" class="property-label"><g:message code="parametro.valorparametro.label" default="Valorparametro" /></span>
					
						<g:each in="${parametroInstance.valorparametro}" var="v">
						<span class="property-value" aria-labelledby="valorparametro-label"><g:link controller="valorParametro" action="show" id="${v.id}">${v?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:parametroInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${parametroInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
