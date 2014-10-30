<%@ page import="crmcuc.Persona" %>



<div class="fieldcontain ${hasErrors(bean: personaInstance, field: 'cedula', 'error')} ">
	<label for="cedula">
		<g:message code="persona.cedula.label" default="Cedula" />
		
	</label>
	<g:textField name="cedula" maxlength="20" value="${personaInstance?.cedula}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaInstance, field: 'nombres', 'error')} required">
	<label for="nombres">
		<g:message code="persona.nombres.label" default="Nombres" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombres" maxlength="100" required="" value="${personaInstance?.nombres}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaInstance, field: 'apellidos', 'error')} required">
	<label for="apellidos">
		<g:message code="persona.apellidos.label" default="Apellidos" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="apellidos" maxlength="100" required="" value="${personaInstance?.apellidos}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaInstance, field: 'email', 'error')} ">
	<label for="email">
		<g:message code="persona.email.label" default="Email" />
		
	</label>
	<g:textField name="email" maxlength="100" value="${personaInstance?.email}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaInstance, field: 'direccion', 'error')} ">
	<label for="direccion">
		<g:message code="persona.direccion.label" default="Direccion" />
		
	</label>
	<g:textField name="direccion" maxlength="100" value="${personaInstance?.direccion}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaInstance, field: 'telefonos', 'error')} ">
	<label for="telefonos">
		<g:message code="persona.telefonos.label" default="Telefonos" />
		
	</label>
	<g:textField name="telefonos" maxlength="50" value="${personaInstance?.telefonos}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaInstance, field: 'idTipoPersona', 'error')} ">
	<label for="idTipoPersona">
		<g:message code="persona.idTipoPersona.label" default="Id Tipo Persona" />
		
	</label>
	<g:field name="idTipoPersona" type="number" value="${personaInstance.idTipoPersona}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaInstance, field: 'idEstadoPersona', 'error')} ">
	<label for="idEstadoPersona">
		<g:message code="persona.idEstadoPersona.label" default="Id Estado Persona" />
		
	</label>
	<g:field name="idEstadoPersona" type="number" value="${personaInstance.idEstadoPersona}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaInstance, field: 'clientes', 'error')} ">
	<label for="clientes">
		<g:message code="persona.clientes.label" default="Clientes" />
		
	</label>
	
</div>

