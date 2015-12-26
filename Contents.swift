

/*
* Curso IOS . Prueba de Velocímetro
*/

import UIKit


enum Velocidades:Int {
    
    case Apagado            = 0
    case VelocidadBaja      = 20
    case VelocidadMedia     = 50
    case VelocidadAlta      = 120
    
    init( velociadadInicial : Velocidades)
    {
        self = velociadadInicial
    }
    
}


class Auto{
    
    var velocidad : Velocidades
    
    init()
    {
        velocidad = Velocidades(velociadadInicial: Velocidades.Apagado)
    }
    
    func cambioDeVelocidad( ) -> ( actual : Int, velocidadEnCadena: String)
    {
        var ret : (Int,String)
        switch velocidad{
        case .Apagado:
            ret = (0,"Apagado")
            velocidad = .VelocidadBaja
        case .VelocidadBaja:
            ret = (20,"Velocidad Baja")
            velocidad = .VelocidadMedia
        case .VelocidadMedia:
            ret = (50,"Velocidad Media")
            velocidad = .VelocidadAlta
        case .VelocidadAlta:
            ret = (120,"Velocidad Alta")
            velocidad = .VelocidadMedia
            
        }
        return ret
    }
    
}

var auto = Auto ()

for var index = 0; index < 20 ; ++index{
    print (auto.cambioDeVelocidad())
}
