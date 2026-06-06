
import  plagas.*

class Barrio {
  const elementos = []

  method sumarElemento(unElemento){elementos.add(unElemento)}
  method restaElemento(unElemento){elementos.remove(unElemento)}

  method esCopado() = self.elementosBuenos().size() > self.elementosNoBuenos().size()
  method elementosBuenos() = elementos.filter({e=>e.esBuena()})
  method elementosNoBuenos() = elementos.filter({e=> not e.esBuena()})
}

class Hogar {
  var mugre
  const confort
  method esBuena() = mugre <= confort/2

  method recibirAtaqueDe(unaPlaga){
    mugre += unaPlaga.nivelDeDaño()
  }
}

class Huerta{
  var produccion
  method esBuena() = produccion > nivelCosecha.nivel() 

    method recibirAtaqueDe(unaPlaga){
    produccion = 0.max (produccion - (unaPlaga.nivelDeDaño() * 0.1 + (if (unaPlaga.transmiteEnfermedad()) 10 else 0)))
  }
}
object nivelCosecha {
  var property nivel = 200
}

class Mascota {
  var salud
  method esBuena() = salud > 250
  method recibirAtaqueDe(unaPlaga) {
    if (unaPlaga.transmiteEnfermedad()){
      salud = 0.max (salud - unaPlaga.nivelDeDaño())
    }
  }
}