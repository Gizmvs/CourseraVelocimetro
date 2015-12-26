

// Curso SWIFT - Segunda prueba - Velocimetro


import UIKit


enum Velocidades:Int {
    
    case Apagado = 0
    case VelocidadBaja = 20
    case VelocidadMedia = 50
    case VelocidadAlta = 120
    
    init( velocidadInicial : Velocidades)
    {
        self = velocidadInicial
    }
}

class Auto{
    
    var velocidad : Velocidades
    
    init()
    {
        velocidad = Velocidades(velocidadInicial: Velocidades.Apagado)
    }
    
    func cambioDeVelocidad( ) -> ( actual : Int, velocidadEnCadena: String)
    {
        var cambio : (Int,String)
        switch velocidad{
        case .Apagado:
            cambio = (0,"Apagado")
            velocidad = .VelocidadBaja
        case .VelocidadBaja:
            cambio = (20,"Velocidad Baja")
            velocidad = .VelocidadMedia
        case .VelocidadMedia:
            cambio = (50,"Velocidad Media")
            velocidad = .VelocidadAlta
        case .VelocidadAlta:
            cambio = (120,"Velocidad Alta")
            velocidad = .VelocidadMedia
            
        }
        return cambio
    }
    
}

var auto = Auto ()

for var i = 0; i < 20 ; ++i{
    print (auto.cambioDeVelocidad())
}