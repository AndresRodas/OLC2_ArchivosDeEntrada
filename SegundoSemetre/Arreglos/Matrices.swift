func printArrayStr(_ arr: [String]) {
    var out = ".["
    for i in 0...4 {
        if i == (4) {
            out += arr[i]
        } else {
            out += arr[i] + ", "
        }
    }
    out += "]."
    print(out)
}

func printArrayInt(_ arr: [Int]) {
    var out = ".["
    for i in 0...4 {
        if i == 4 {
            out += String(arr[i])
        } else {
            out += String(arr[i]) + ", "
        }
    }
    out += "]."
    print(out)
}

func imprimirPunteo(_ ests: [String], _ cursos: [String], _ notas: [[[Int]]]) {
    let ponderacion : [String] = ["1er parcial", "2do parcial", "3er parcial", "Lab", "Examen final"]
    printArrayStr(ponderacion)
    print("")
    for i in 0...3 {
        print("Estudiante: ", ests[i])
        for j in 0...2 {
            let cad = "Curso: "
            print(cad, cursos[j])
            printArrayInt(notas[i][j])
        }
        print("")
    }
}

func imprimirNotaFinal(_ ests: [String], _ cursos: [String], _ notas: [[[Int]]]) {
    for i in 0...3 {
        for j in 0...2 {
            var notaFinal: Float = 0.0
            for k in 0...4 {
                var nota: Float = 0.0
                if k == 4 {
                    let efinal: Float = 25.0 / 100.0
                    nota = Float(String(notas[i][j][k])) * efinal
                } else if k == 3 {
                    let lab: Float = 32.0 / 100.0
                    nota = Float(String(notas[i][j][k])) * lab
                } else {
                    let parcial: Float = (43.0 / 3.0) / 100.0
                    nota = Float(String(notas[i][j][k])) * parcial
                }
                notaFinal += nota
            }
            let cad = " -> Curso: "
            print(ests[i], cad, cursos[j])
            print(String(notaFinal))
        }
        print("")
    }
}

let estudiantes : [String] = ["Lorenza", "Rosendo", "Fermina", "Markel"]
let cursos : [String] = ["Arqui1", "Archivos", "Compi2"]

let notasBuenas: [[Int]] = [
    [53, 88, 95, 89, 75],
    [81, 51, 57, 67, 93],
    [94, 74, 58, 84, 100]
]

var notas: [[[Int]]] = [
    [[37, 49, 61, 29, 44], [56, 60, 51, 68, 70], [47, 15, 39, 17, 74]],
    [[69, 74, 52, 34, 36], [24, 44, 50, 18, 76], [74, 60, 32, 63, 78]],
    [[78, 14, 23, 52, 33], [28, 79, 77, 55, 24], [23, 79, 47, 62, 44]],
    [[73, 53, 11, 49, 52], [29, 16, 65, 34, 12], [72, 69, 30, 44, 37]]
]

print("\nImprimir notas por curso y estudiantes\n")
imprimirPunteo(estudiantes, cursos, notas)
print("\nImprimir nota final por curso y estudiantes\n")
imprimirNotaFinal(estudiantes, cursos, notas)

/*
Imprimir notas por curso y estudiantes

.[1er parcial, 2do parcial, 3er parcial, Lab, Examen final].

Estudiante:  Lorenza
Curso:  Arqui1
.[37, 49, 61, 29, 44].
Curso:  Archivos
.[56, 60, 51, 68, 70].
Curso:  Compi2
.[47, 15, 39, 17, 74].

Estudiante:  Rosendo
Curso:  Arqui1
.[69, 74, 52, 34, 36].
Curso:  Archivos
.[24, 44, 50, 18, 76].
Curso:  Compi2
.[74, 60, 32, 63, 78].

Estudiante:  Fermina
Curso:  Arqui1
.[78, 14, 23, 52, 33].
Curso:  Archivos
.[28, 79, 77, 55, 24].
Curso:  Compi2
.[23, 79, 47, 62, 44].

Estudiante:  Markel
Curso:  Arqui1
.[73, 53, 11, 49, 52].
Curso:  Archivos
.[29, 16, 65, 34, 12].
Curso:  Compi2
.[72, 69, 30, 44, 37].


Imprimir nota final por curso y estudiantes

Lorenza  -> Curso:  Arqui1
41.35
Lorenza  -> Curso:  Archivos
63.196667
Lorenza  -> Curso:  Compi2
38.416664

Rosendo  -> Curso:  Arqui1
47.829998
Rosendo  -> Curso:  Archivos
41.673332
Rosendo  -> Curso:  Compi2
63.45333

Fermina  -> Curso:  Arqui1
41.373333
Fermina  -> Curso:  Archivos
49.973335
Fermina  -> Curso:  Compi2
52.196667

Markel  -> Curso:  Arqui1
48.316666
Markel  -> Curso:  Archivos
29.646667
Markel  -> Curso:  Compi2
47.839996
*/