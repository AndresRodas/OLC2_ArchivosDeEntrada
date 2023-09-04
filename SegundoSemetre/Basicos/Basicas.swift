print("----------------------")
print("----ARCHIVO BASICO----")
print("----------------------")

var bol = false
var bol2 = !bol
var cad1 = "imprimir"
var cad2 = "cadena valida"

var val1 = 7 - (5 + 10 * (2 + 4 * (5 + 2 * 3)) - 8 * 3 * 3) + 50 * (6 * 2)
var val2 = (2 * 2 * 2 * 2) - 9 - (8 - 6 + (3 * 3 - 6 * 5 - 7 - (9 + 7 * 7 * 7) + 10) - 5) + 8 - (6 - 5 * (2 * 3))
var val3 = val1 + ((2 + val2 * 3) + 1 - ((2 * 2 * 2) - 2) * 2) - 2

print("El valor de val1 es:", val1)
print("El valor de val2 es:", val2)
print("El valor de val3 es:", val3)
print("El resultado de la operación es:", val3)
print("El valor de bol es:", bol)
print("El valor de cad1 es:", cad1)
print("El valor de cad2 es:", cad2)
print("El valor de bol2:", bol2)

var a = 100
var b = 100
var c = 7
var f = true
var j: Float = 10.0
var k: Float = 10.0

print("")
print("")

if a > b || b < c {
    print(">>>>>> Esto no debería de imprimirse")
} else {
    print(">>>>>> Esto debería de imprimirse")
}

if (a == b && j == k) || 14 != c {
    print(">>>>>> Esto debería de imprimirse")
} else {
    print(">>>>>> Esto no debería de imprimirse")
}

var val = 5
var resp = 5
var valorVerdadero = 100

if (valorVerdadero == (50 + 50 + (val - val))) && (!(!true)) {
    print(">>>>>> En este lugar debería de entrar :)")
    valorVerdadero = 50
} else if (f || (valorVerdadero > 50)) && ((resp != 100) && !(f)) {
    print(">>>>>> Aca no debería de entrar :ccc")
    valorVerdadero = 70
} else {
    print(">>>>>> Aca no debería de entrar :cccc")
}

var x1 = 15

if x1 % 2 == 0 {
    print(">>>>> numeroPar ingreso a if verdadero,", x1, "es par")
} else {
    print(">>>>> numeroPar ingreso a if falso,", x1, "no es par")
}

/*
----------------------
----ARCHIVO BASICO----
----------------------
El valor de val1 es: 214
El valor de val2 es: 412
El valor de val3 es: 1439
El resultado de la operación es: 1439
El valor de bol es: false
El valor de cad1 es: imprimir
El valor de cad2 es: cadena valida
El valor de bol2: true


>> Esto debería de imprimirse
>> Esto debería de imprimirse
>> En este lugar debería de entrar :)
>>> numeroPar ingreso a if falso, 15 no es par
*/