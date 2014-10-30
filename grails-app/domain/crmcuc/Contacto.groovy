package crmcuc
/* Ee recomendable definir el modelo de al relacion  muchos a muchos y no dejarlas a que grails
   las cree como esta tabla que relaciona Clientes y Personas    
 entonces solo manejamos relaciones 1 a muchos
*/
class Contacto {
     Date fechaRegistro
     Integer idEstadoContacto
     
    static belongsTo=[clientes:Cliente,personas:Persona]
     
    static mapping ={
       table 'contactos'
        version false              
     } 
    static constraints = {
        fechaRegistro nullable:true
        idEstadoContacto  nullable:true
    }
}
