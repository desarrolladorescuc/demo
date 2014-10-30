
<%@ page import="crmcuc.Cliente" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main1">
		<g:set var="entityName" value="${message(code: 'cliente.label', default: 'Cliente')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		
		
		<div id="list-cliente" class="content scaffold-list" role="main">
			<h1 Style="font-style:italic;">Lista de Clientes</h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
                        <div class="nav" role="navigation">
			<a class="btn btn-outline btn-warning" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a>
			<g:link class="btn btn-primary" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link>
			<a class="btn btn-success" href="#">Editar</a>
                        <a class="btn btn-danger" href="#">Borrar</a>                       
                        <a class="btn btn-info" href="#">Salir</a>
                        <hr style="bo:3px;border-color:#FF0000;">
		</div>
			<table class="table table-bordered">
			<thead>
					<tr>
					
						<g:sortableColumn property="razonSocial" title="${message(code: 'cliente.razonSocial.label', default: 'Razon Social')}" />
					
						<g:sortableColumn property="email" title="${message(code: 'cliente.email.label', default: 'Email')}" />
					
						<g:sortableColumn property="direccion" title="${message(code: 'cliente.direccion.label', default: 'Direccion')}" />
					
						<g:sortableColumn property="idTipoCliente" title="${message(code: 'cliente.idTipoCliente.label', default: 'Id Tipo Cliente')}" />
					
						<g:sortableColumn property="idEstadoCliente" title="${message(code: 'cliente.idEstadoCliente.label', default: 'Id Estado Cliente')}" />
					
						<g:sortableColumn property="nit" title="${message(code: 'cliente.nit.label', default: 'Nit')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${listaClientes}" status="i" var="clienteInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${clienteInstance.id}">${fieldValue(bean: clienteInstance, field: "razonSocial")}</g:link></td>
					
						<td>${fieldValue(bean: clienteInstance, field: "email")}</td>
					
						<td>${fieldValue(bean: clienteInstance, field: "direccion")}</td>
					
						<td>${fieldValue(bean: clienteInstance, field: "idTipoCliente")}</td>
					
						<td>${fieldValue(bean: clienteInstance, field: "idEstadoCliente")}</td>
					
						<td>${fieldValue(bean: clienteInstance, field: "nit")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${num ?: 0}" />
			</div>
		</div>
	</body>
</html>
