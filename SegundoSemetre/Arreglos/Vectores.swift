// Función para intercambiar dos elementos en un arreglo
func intercambiar(_ a: inout [Int], _ i: Int, _ j: Int) {
    let aux = a[i]
    a[i] = a[j]
    a[j] = aux
}

// Algoritmo de ordenamiento por intercambio (Bubble Sort)
func ordIntercambio(_ arr: inout [Int]) {
    var i = 0
    var j = 0
    
    while i < (arr.count - 1) {
        j = i + 1
        while j < arr.count {
            if arr[i] > arr[j] {
                intercambiar(&arr, i, j)
            }
            j += 1
        }
        i += 1
    }
}

// Algoritmo de ordenamiento por selección (Selection Sort)
func ordSeleccion(_ arr: inout [Int]) {
    var i = 0
    var j = 0
    var indiceMenor = 0
    let n = arr.count
    
    while i < (n - 1) {
        indiceMenor = i
        j = i + 1
        while j < n {
            if arr[j] < arr[indiceMenor] {
                indiceMenor = j
            }
            j += 1
        }
        
        if i != indiceMenor {
            intercambiar(&arr, i, indiceMenor)
        }
        i += 1
    }
}

// Función para imprimir un arreglo
func printArray(_ msg: String, _ arr: [Int]) {
    var out = ".["
    for i in 0...arr.count-1 {
        if i == arr.count - 1 {
            out += String(arr[i])
        } else {
            out += String(arr[i]) + ", "
        }
    }
    out += "]."
    print(msg + out)
}

print("=============================================")
print("===============ORDENAMIENTO==================")
print("=============================================")
print("INTERCAMBIO:")
var arr1: [Int] = [8, 4, 6, 2]
printArray("entrada: ", arr1)
ordIntercambio(&arr1)
printArray("salida: ", arr1)
print("SELECCIÓN:")
var arr2: [Int] = [40, 21, 1, 3, 14, 4]
printArray("entrada: ", arr2)
ordSeleccion(&arr2)
printArray("salida: ", arr2)

var arr3: [Int] = [90, 3, 40, 10, 8, 5]

print("=============================================")
print("================FUNCIONES====================")
print("=============================================")

printArray("arr1: ", arr1)
arr1.append(9)
printArray("arr1: ", arr1)

printArray("arr2: ", arr2)
arr2.removeLast()
printArray("arr2: ", arr2)

printArray("arr2: ", arr3)
arr3.remove(at: 3)
printArray("arr2: ", arr3)

print("arr1 vacío: ", arr1.isEmpty)
print("arr1 cantidad: ", arr1.count)

/*
=============================================
===============ORDENAMIENTO==================
=============================================
INTERCAMBIO:
entrada: .[8, 4, 6, 2].
salida: .[2, 4, 6, 8].
SELECCIÓN:
entrada: .[40, 21, 1, 3, 14, 4].
salida: .[1, 3, 4, 14, 21, 40].
=============================================
================FUNCIONES====================
=============================================
arr1: .[2, 4, 6, 8].
arr1: .[2, 4, 6, 8, 9].
arr2: .[1, 3, 4, 14, 21, 40].
arr2: .[1, 3, 4, 14, 21].
arr2: .[90, 3, 40, 10, 8, 5].
arr2: .[90, 3, 40, 8, 5].
arr1 vacío:  false
arr1 cantidad:  5
*/