package crmcuc

class Cliente {
    String razonSocial 
    String nit 
    String direccion 
    String telefonos
    String email
    Integer idTipoCliente
    Integer idEstadoCliente
   
      
    static hasMany=[contactos:Contacto] // relacion uno a muchos
   
    static mapping ={
       table 'clientes'
       version false              
     }
    static constraints = {
        razonSocial     blank:false,maxSize:100 
        email           email:true,maxSize:120
        direccion       nullable:true,maxSize:100 
        nit             nullable:true,maxSize:20
        telefonos       nullable:true,maxSize:50 
        idTipoCliente   nullable:true
        idEstadoCliente nullable:true
    }
    
    String  toString(){
        return razonSocial        
    } 
}
