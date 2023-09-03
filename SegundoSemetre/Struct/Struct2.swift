struct Persona{
    var Nombre: String
    var edad = 0
}

struct Transporte {
    var pasajeros = 0
    var velocidad = 100
    var nombre: String
    var piloto: Persona
    mutating func frenar(){
        self.velocidad = 0
    }
    mutating func acelerar(){
        self.velocidad += 50 
    }
    func mostrarVelocidad(){
        print("Velocidad: ", self.velocidad)
    }
    func mostrarPasajeros(){
        print("Pasajeros: ", self.pasajeros)
    }
}

struct Verdura{
    let nombre: String
    var precio: Int
}

var transmetro = Transporte(nombre: "RutaPerifericoUsac", piloto: Persona(Nombre: "Joel", edad: 43))

transmetro.pasajeros = 36
transmetro.mostrarPasajeros()
transmetro.mostrarVelocidad()
transmetro.acelerar()
transmetro.acelerar()
transmetro.acelerar()
transmetro.mostrarVelocidad()
transmetro.frenar()
transmetro.mostrarVelocidad()

var verduras = [Verdura]()

verduras.append(Verdura(nombre: "Coliflor", precio: 15))
verduras.append(Verdura(nombre: "Cebolla", precio: 5))
verduras.append(Verdura(nombre: "VerduraGenerica", precio: 12))

print(verduras[2].nombre)
print(verduras[2].precio)

/*
Pasajeros:  36
Velocidad:  100
Velocidad:  250
Velocidad:  0
VerduraGenerica
12
*/