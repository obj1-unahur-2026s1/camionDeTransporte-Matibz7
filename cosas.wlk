object knight {
  method peso() {
    return 500
  }
  method peligrosidad() {
     10
  }
  method bultos() = 1
  method sufrirConsecuencia() {
    
  }
}
object bumblebee {
    var formaActual=auto
  method peso() {
    return 800
  }
  method peligrosidad() {
    return formaActual.peligrosidad()
  }
  method bultos() = 2
  method sufrirConsecuencia()= formaActual.robot()

  }
  object auto {
    method peligrosidad() {
      return 15
    }
  }
  object robot {
    method peligrosidad() {
      return 30
    }
  }
object paqueteDeLadrillos {
    var property cantidadDeLadrillos=0
  method peso() {
    return 2*cantidadDeLadrillos
  }
  method peligrosidad() {
    return 2
  }
  method bultos() {
    if (cantidadDeLadrillos <= 100) return 1
    if (cantidadDeLadrillos.between(101, 300)) return 2
    return 3
  }
  method sufrirConsecuencia()= cantidadDeLadrillos + 12
}
object arenaAGranel {
  var property peso =0 
  
  
  method peligrosidad() {
     return 1
  }
    method bultos() = 1
  method sufrirConsecuencia() {
    peso=(peso-10).max(0)
  }
}
object bateriaAntiaerea {
  var property tieneMisiles =false 
  method peso() =if(tieneMisiles) 300 else 200
  
  method peligrosidad()=if(tieneMisiles)100 else 0
  method bultos() = if(tieneMisiles) 1 else 2
  method sufrirConsecuencia()= !tieneMisiles
}
object contenedorPortuario {
  const cosasAdentro=[]
  method peso() = 100 + cosasAdentro.sum({ c => c.peso() })
  method peligrosidad() {
    if (cosasAdentro.isEmpty()) return 0
    return cosasAdentro.max({ c => c.peligrosidad() }).peligrosidad()
  }
  method agregarCosa(unaCosa) { cosasAdentro.add(unaCosa) }
  method bultos() = 1+ cosasAdentro.sum({c=>c.bultos()})
  method sufrirConsecuencia()= cosasAdentro.forEach({c=>c.sufrirConsecuencia()})
}
object residuosRadioactivos {
  var property peso = 0
  method peligrosidad() = 200
  method bultos() = 1
method sufrirConsecuencia(){
  peso=peso+15
}
}

 object embalajeDeSecurity {
  var property cosaContenida = knight 
  
  method peso() = cosaContenida.peso()
  method peligrosidad() = cosaContenida.peligrosidad() / 2
   method bultos() = 2
   method sufrirConsecuencia(){
    
   }

}
