import cosas.*
object camion {
    var tara=1000
const cosasCargadas=[]
method agregarCosa(unaCosa) {
  cosasCargadas.add(unaCosa)
}
method sacarCosa(unaCosa) {
  cosasCargadas.remove(unaCosa)
}
method pesoTotal() {
  return tara+ cosasCargadas.sum({c=>c.peso()})
}
method todosPesosPares() {
  return cosasCargadas.all({c=>c.peso()%2==0})
}
method hayAlgoQuePesa(unPeso) {
  return cosasCargadas.any({c=>c.peso()==unPeso})
}
method cosaConPeligrosidad(unaPeligrosidad) {
 return cosasCargadas.find({c=>c.peligrosidad()==unaPeligrosidad})
}
method cosasQueSuperanUnNivelDePeligrosidad(unaPeligrosidad) {
 return cosasCargadas.filter({c=>c.peligrosidad()>unaPeligrosidad})
}
method cosasMasPeligrosasQueCosa(unaCosa) {
 return   self.cosasQueSuperanUnNivelDePeligrosidad(unaCosa.peligrosidad())
}
method estaExcedido() {
 return self.pesoTotal()>2500
}
method puedeCircular(peligrosidadMaxima) {
  return not self.estaExcedido() and cosasCargadas.all({c=>c.peligrosidad()<peligrosidadMaxima})
}
method tieneAlgoQuePesaEntre(min, max) {
    return cosasCargadas.any({ c => c.peso().between(min, max) })
  }
  method cosaMasPesada() = cosasCargadas.max({ c => c.peso() })

}