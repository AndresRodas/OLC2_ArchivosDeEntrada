print("--------------------------");
print("---FUNCIONES RECURSIVAS---");
print("-----------7 pts----------");
print("--------------------------");

func fibonacci(_ n: Int) -> Int {
    if n <= 0 {
        return 0
    } else if n == 1 {
        return 1
    } else {
        return fibonacci(n - 1) + fibonacci(n - 2)
    }
}

func Hanoi(_ discos: Int, _ origen: Int, _ auxiliar: Int, _ destino: Int) {
    if discos == 1 {
        print("Mover disco de", origen, "a", destino)
    } else {
        Hanoi(discos - 1, origen, destino, auxiliar)
        print("Mover disco de", origen, "a", destino)
        Hanoi(discos - 1, auxiliar, origen, destino)
    }
}

print("")
print("Fibonacci de 4: ", fibonacci(4))
print("Fibonacci de 8: ", fibonacci(8))
print("Fibonacci de 10: ", fibonacci(10))
print("")
print("Hanoi")
Hanoi(3, 1, 2, 3)


/*
--------------------------
---FUNCIONES RECURSIVAS---
-----------7 pts----------
--------------------------

Fibonacci de 4:  3
Fibonacci de 8:  21
Fibonacci de 10:  55

Hanoi
Mover disco de 1 a 3
Mover disco de 1 a 2
Mover disco de 3 a 2
Mover disco de 1 a 3
Mover disco de 2 a 1
Mover disco de 2 a 3
Mover disco de 1 a 3
*/