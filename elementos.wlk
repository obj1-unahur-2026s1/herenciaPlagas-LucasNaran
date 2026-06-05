


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
  var confort
  method esBuena() = mugre <= confort/2
}

class Huerta{
  var produccion
  var nivel = 200
  method esBuena() = produccion > nivel 
}

class Mascota {
  var salud
  method esBuena() = salud > 250
}