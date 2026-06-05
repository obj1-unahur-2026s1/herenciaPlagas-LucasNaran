

class Plaga{
    var poblacion
    method nivelDeDaño(){

    }
    method transmiteEnfermedad() = poblacion > 10 and self.condicionAdicional()
    method condicionAdicional()
}
class Cucaracha{
    var poblacion
    var pesoPromedio

    method nivelDeDaño() = poblacion * 0.5
} 
class Mosquiito{
    var poblacion
    method nivelDeDaño(){
        
    }
    method transmiteEnfermedad() {}
}
class Pulga{
    var poblacion
    method nivelDeDaño(){
        
    }
    method transmiteEnfermedad() {}
}
class Garrapata{
    var poblacion
    method nivelDeDaño(){
        
    }
    method transmiteEnfermedad() {}
}