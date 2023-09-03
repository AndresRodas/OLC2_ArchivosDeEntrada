// Función recursiva para calcular el factorial de un número
func factorial(_ n: Int) -> Int {
    if n < 2 {
        return 1
    } else {
        return n * factorial(n - 1)
    }
}

// Función recursiva para calcular la función de Ackermann
func ackermann(_ m: Int, _ n: Int) -> Int {
    if m == 0 {
        return n + 1
    } else if n == 0 {
        return ackermann(m - 1, 1)
    } else {
        return ackermann(m - 1, ackermann(m, n - 1))
    }
}

print("--------------------------")
print("----ARCHIVO RECURSIVOS----")
print("--------------------------")
print("Factorial de 6: ", factorial(6))
print("Factorial de 4: ", factorial(4))
print("Factorial de 3: ", factorial(3))
print("")
print("Ackerman de 3,0: ", ackermann(3, 0))
print("Ackerman de 2,8: ", ackermann(2, 8))
print("Ackerman de 2,1: ", ackermann(2, 1))


/*
--------------------------
----ARCHIVO RECURSIVOS----
--------------------------
Factorial de 6:  720
Factorial de 4:  24
Factorial de 3:  6

Ackerman de 3,0:  5
Ackerman de 2,8:  19
Ackerman de 2,1:  5
*/