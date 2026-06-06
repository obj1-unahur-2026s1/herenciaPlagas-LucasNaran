
import elementos.*
class Plaga{
    var poblacion

    method poblacion() = poblacion

    method nivelDeDaño()
    method transmiteEnfermedad() = poblacion >= 10 and self.condicionAdicional()
    method condicionAdicional()

    method atacar(unElemento){
        unElemento.recibirAtaqueDe(self)
        self.efectoDeAtacar()
    }

    method efectoDeAtacar(){ poblacion += poblacion * 0.1}
}
class Cucaracha inherits Plaga{
    var pesoPromedio

    method pesoPromedio()= pesoPromedio

    override method nivelDeDaño() = poblacion * 0.5
    override method condicionAdicional() = pesoPromedio >= 10

    override method efectoDeAtacar(){
        super()
        pesoPromedio += 2
    } 
} 
class Mosquiito inherits Plaga{
    override method nivelDeDaño() = poblacion
    override method condicionAdicional() = poblacion % 3 == 0
}
class Pulga inherits Plaga{
    override method nivelDeDaño() = poblacion * 2
    override method condicionAdicional() = true
}
class Garrapata inherits Pulga{
    override method efectoDeAtacar(){
        poblacion += poblacion * 0.2
    } 
} 