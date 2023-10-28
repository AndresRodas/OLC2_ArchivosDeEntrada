print("--------------------------");
print("----------STRUCT----------");
print("----------12 pts----------");
print("--------------------------");

print(" ")
print("=============================================")
print("================DEFINICIÓN===================")
print("=============================================")

struct StructArr {
    var datos: Float
}

struct CentroTuristico {
    var nombre: String
}

struct Carro {
    var placa: String
    var color: String
    var tipo: String
}

struct Personaje {
    var nombre: String
    var edad: Int
    var descripcion: String
    var carro: Carro
    var numeros: StructArr
}

print(" ")
print("=============================================")
print("==============INSTANCIACIÓN==================")
print("=============================================")

let centro1 = CentroTuristico(nombre: "Volcan de pacaya")
let centro2 = CentroTuristico(nombre: "Rio dulce")
let centro3 = CentroTuristico(nombre: "Laguna Luchoa")
let centro4 = CentroTuristico(nombre: "Playa Blanca")
let centro5 = CentroTuristico(nombre: "Antigua Guatemala")
let centro6 = CentroTuristico(nombre: "Lago de Atitlan")
let newCarro = Carro(placa: "090PLO", color: "gris", tipo: "mecanico")
var nums = StructArr(datos: 0.0)

var p1 = Personaje(
    nombre: "Jose",
    edad: 18,
    descripcion: "No hace nada",
    carro: newCarro,
    numeros: nums
)

var nums2 = StructArr(datos: Float("23.43"))

print(" ")
print("=============================================")
print("========ASIGNACIÓN Y ACCESO==================")
print("=============================================")

print("El nombre del Centro turistico 1 es: ", centro1.nombre)
print("El nombre del Centro turistico 2 es: ", centro2.nombre)
print("El nombre del Centro turistico 3 es: ", centro3.nombre)
print("El nombre del Centro turistico 4 es: ", centro4.nombre)
print("El nombre del Centro turistico 5 es: ", centro5.nombre)
print("El nombre del Centro turistico 6 es: ", centro6.nombre)

print("Persona nombre: ", p1.nombre, ", edad: ", p1.edad, ", carroTipo: ", p1.carro.tipo, ", numeros: ", p1.numeros.datos)
p1.numeros = nums2
print("Persona nombre: ", p1.nombre, ", edad: ", p1.edad, ", carroTipo: ", p1.carro.tipo, ", nuevos numeros: ", p1.numeros.datos)

/*
--------------------------
----------STRUCT----------
----------12 pts----------
--------------------------
 
=============================================
================DEFINICIÓN===================
=============================================
 
=============================================
==============INSTANCIACIÓN==================
=============================================
 
=============================================
========ASIGNACIÓN Y ACCESO==================
=============================================
El nombre del Centro turistico 1 es:  Volcan de pacaya
El nombre del Centro turistico 2 es:  Rio dulce
El nombre del Centro turistico 3 es:  Laguna Luchoa
El nombre del Centro turistico 4 es:  Playa Blanca
El nombre del Centro turistico 5 es:  Antigua Guatemala
El nombre del Centro turistico 6 es:  Lago de Atitlan
Persona nombre:  Jose , edad:  18 , carroTipo:  mecanico , numeros:  0.0
Persona nombre:  Jose , edad:  18 , carroTipo:  mecanico , nuevos numeros:  23.43
*/