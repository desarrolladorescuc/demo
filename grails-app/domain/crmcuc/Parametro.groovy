package crmcuc

class Parametro {
String atributo
String descripcion
String estadoParametro
    
   static hasMany=[valorparametros:ValorParametro] // relacion uno a muchos
  
    static mapping ={
       table 'parametros'
       version false              
     }  
    static constraints = {
       atributo     nullable:true, maxSize:50
       descripcion   nullable:true, maxSize:150
       estadoParametro nullable:true, maxSize:1
    }
}
