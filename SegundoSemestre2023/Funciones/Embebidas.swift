print("--------------------------");
print("---FUNCIONES EMBEBIDAS----");
print("----------14 pts----------");
print("--------------------------");

print("");
func suma(_ numero1: Int, _ numero2: Int) -> Int {
    let resultado = numero1 + numero2
    return resultado
}

let resultado = suma(5, 3)
print("La suma es: ", resultado)

print("");
func saludo3() {
    print("saludos!")
}

func saludo2() {
    print("mundo")
    saludo3()
}

func saludo1() {
    print("hola")
    saludo2()
}

saludo1()

print("");
func ejemplo2(verdura v: Int, v verdura: Int ) {
    print(v)
    print(verdura)
}

let precio1: Int = 251
let precio2: Int = 85
ejemplo2(verdura: precio1, v: precio2)

print("");
func duplicar(_ x: inout Int){
    x += x
}

var numero1 = 1
duplicar(&numero1)
print("numero2:", numero1)

print("");
let num3 = Float("9.5")
let num4 = Float("3.6")
let num1 = Int("20")
let num2 = Int("20")
let suma = String(num1 + num2)
let resta = String(num3 - num4)
let cadena = String(true) + "->" + String(3.504)

print("valor true: ", String(true))
print("valor false: ", String(false))
print("valor 1: ", suma)
print("valor 2: ", resta)
print("valor cadena: ", cadena);

/*
--------------------------
---FUNCIONES EMBEBIDAS----
----------14 pts----------
--------------------------

La suma es:  8

hola
mundo
saludos!

251
85

numero2: 2

valor true:  true
valor false:  false
valor 1:  40
valor 2:  5.9
valor cadena:  true->3.504
*/