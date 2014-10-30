package crmcuc

class ValorParametro {
  String valor
  String descripcion
  String orden
  String estadoValorParametro
  
     static belongsTo=[parametros:Parametro] // relacion bidireccional  Muchos a uno
   
    static mapping ={
       table 'valor_parametros'
       version false              
     }  
    static constraints = {        
        valor                 nullable:true, maxSize:300
        descripcion           nullable:true, maxSize:150
        orden                 nullable:true, maxSize:3
        estadoValorParametro  nullable:true, maxSize:1
    }
}
