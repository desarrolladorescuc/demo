<%@ page import="crmcuc.Cliente" %>



<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'razonSocial', 'error')} required">
	<label for="razonSocial">
		<g:message code="cliente.razonSocial.label" default="Razon Social" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="razonSocial" maxlength="100" required="" value="${clienteInstance?.razonSocial}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'email', 'error')} ">
	<label for="email">
		<g:message code="cliente.email.label" default="Email" />
		
	</label>
	<g:field type="email" name="email" maxlength="120" value="${clienteInstance?.email}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'direccion', 'error')} ">
	<label for="direccion">
		<g:message code="cliente.direccion.label" default="Direccion" />
		
	</label>
	<g:textField name="direccion" maxlength="100" value="${clienteInstance?.direccion}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'idTipoCliente', 'error')} ">
	<label for="idTipoCliente">
		<g:message code="cliente.idTipoCliente.label" default="Id Tipo Cliente" />
		
	</label>
	<g:field name="idTipoCliente" type="number" value="${clienteInstance.idTipoCliente}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'idEstadoCliente', 'error')} ">
	<label for="idEstadoCliente">
		<g:message code="cliente.idEstadoCliente.label" default="Id Estado Cliente" />
		
	</label>
	<g:field name="idEstadoCliente" type="number" value="${clienteInstance.idEstadoCliente}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'nit', 'error')} ">
	<label for="nit">
		<g:message code="cliente.nit.label" default="Nit" />
		
	</label>
	<g:textField name="nit" value="${clienteInstance?.nit}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'telefonos', 'error')} ">
	<label for="telefonos">
		<g:message code="cliente.telefonos.label" default="Telefonos" />
		
	</label>
	<g:textField name="telefonos" value="${clienteInstance?.telefonos}"/>
</div>

