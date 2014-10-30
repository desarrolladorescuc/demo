<%@ page import="crmcuc.Contacto" %>



<div class="fieldcontain ${hasErrors(bean: contactoInstance, field: 'fechaRegistro', 'error')} ">
	<label for="fechaRegistro">
		<g:message code="contacto.fechaRegistro.label" default="Fecha Registro" />
		
	</label>
	<g:datePicker name="fechaRegistro" precision="day"  value="${contactoInstance?.fechaRegistro}" default="none" noSelection="['': '']" />
</div>

<div class="fieldcontain ${hasErrors(bean: contactoInstance, field: 'idEstadoContacto', 'error')} ">
	<label for="idEstadoContacto">
		<g:message code="contacto.idEstadoContacto.label" default="Id Estado Contacto" />
		
	</label>
	<g:field name="idEstadoContacto" type="number" value="${contactoInstance.idEstadoContacto}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: contactoInstance, field: 'clientes', 'error')} required">
	<label for="clientes">
		<g:message code="contacto.clientes.label" default="Clientes" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="clientes" name="clientes.id" from="${crmcuc.Cliente.list()}" optionKey="id" required="" value="${contactoInstance?.clientes?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: contactoInstance, field: 'personas', 'error')} required">
	<label for="personas">
		<g:message code="contacto.personas.label" default="Personas" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="personas" name="personas.id" from="${crmcuc.Persona.list()}" optionKey="id" required="" value="${contactoInstance?.personas?.id}" class="many-to-one"/>
</div>

