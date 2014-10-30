package crmcuc

class Persona {
String nombres
String cedula
String apellidos
String email
String direccion
String telefonos
Integer idTipoPersona
Integer idEstadoPersona

     static hasMany=[contactos:Contacto]  //  uno-a-muchos 
    
    static mapping ={
       table 'personas'
       version false              
     }  
    static constraints = {
        cedula          nullable:true, maxSize:20
        nombres         blank:false,nullable:false, maxSize:100        
        apellidos       blank:false,nullable:false, maxSize:100 
        email           nullable:true, maxSize:100
        direccion       nullable:true, maxSize:100
        telefonos       nullable:true, maxSize:50
        idTipoPersona   nullable:true
        idEstadoPersona nullable:true
    }
     String  toString(){
       //return [nombres,apellidos].findAll {it != null}.join(' ')    
      return nombres+" "+apellidos   
    } 
}
