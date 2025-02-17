import UIKit

// Ejercicio 1
let assistance: Double = 10
let totalClass: Double = 20

let attendanceRate: Double = (assistance / totalClass) * 100

print("Resultado \(attendanceRate)")

// Ejercicio 2
let weight: Float = 62.5
let height: Float = 1.75
let imc: Float = weight / (height * height)

print("Índice de masa corporal: \(imc)")

// Ejercicio 3
let originalPrice: Double = 49.99
let discountPercentage: Double = 20
let discountedPrice: Double = originalPrice - (originalPrice * discountPercentage / 100)

print("El precio con el descuento es: \(discountedPrice)")


// Funciones
func showMyName() -> Void {
     print("Mi primera función")
}
showMyName()
// --------------------------------------------------
func showMyCustomName(namePerson: String) -> Void {
    print("Hola \(namePerson)")
}
showMyCustomName(namePerson: "Raul")
// --------------------------------------------------
func calculate(a: Int, b: Int) -> Void {
    let result = a + b
    print("El resultado es \(result)")
}
calculate(a: 80, b: 100)
// --------------------------------------------------
func calculate2(_ a: Int, _ b: Int) -> Void {
    let result = a + b
    print("El resultado es \(result)")
}
calculate2(2, 2)
// --------------------------------------------------
func calculate3(a: Int, b: Int) -> Int {
    let result = a + b
    return result
}
let mySuperResult: Int = calculate3(a: 9, b: 9)
print(mySuperResult)

// if / else
let userAge = 17
if userAge >= 18 {
    print("Eres mayor de edad")
} else {
    print("Eres menor de edad")
}
// --------------------------------------------------
func greeting(hour: Int) -> Void {
    if hour < 12 {
        print("Buenos días")
    } else if hour < 18 {
        print("Buenas tardes")
    } else {
        print("Buenas noches")
    }
}
greeting(hour: 23)

// Switch
func getMonth(month: Int) -> Void {
    switch month {
    case 1:
        print("Enero")
        break
    case 2:
        print("Febrero")
        break
    case 3:
        print("Marzo")
        break
    case 4:
        print("Abril")
        break
    case 5:
        print("Mayo")
        break
    case 6:
        print("Junio")
        break
    case 7:
        print("Julio")
        break
    case 8:
        print("Agosto")
        break
    case 9:
        print("Septiembre")
        break
    case 10:
        print("Octubre")
        break
    case 11:
        print("Noviembre")
        break
    case 12:
        print("Diciembre")
        break
    default:
        print("Número inválido")
    }
}
getMonth(month: 4)
// --------------------------------------------------
func getQuarter(month: Int) -> Void {
    switch month {
    case 1, 2, 3:
        print("First quarter")
    case 4, 5, 6:
        print("Second quarter")
    case 7, 8, 9:
        print("Third quarter")
    case 10, 11, 12:
        print("Fourth quarter")
    default:
        print("Número inválido")
    }
}
getQuarter(month: 8)
// --------------------------------------------------
func getAge(age: Int) -> Void {
    switch age {
    case 1...12:
        print("Niño")
    case 13...20:
        print("Adolecente")
    case 20...:
        print("Adulto")
    default:
        print("No entry")
    }
}
getAge(age: 35)

// Ejercicio 4
func areaCircle(radius: Double) -> Double {
    let area: Double = Double.pi * radius * radius
    return area
}
print("El área del círculo es \(areaCircle(radius: 5))")

// Ejercicio 5
func numberValue(number: Int) -> Void {
    if number > 0 {
        print("Positivo")
    } else if number < 0 {
        print("Negativo")
    } else {
        print("Cero")
    }
}
numberValue(number: -32)

// Ejercicio 6
func numberValueSwitch(number: Int) -> Void {
    switch number {
    case 0:
        print("Cero")
    case 0...:
        print("Positivo")
    default:
        print("Negativo")
    }
}
numberValueSwitch(number: 10)

// Arrays
var daysOfWeek: [String] = [
    "Lunes",
    "Martes",
    "Miércoles",
    "Jueves",
    "Viernes",
    "Sábado",
    "Domingo"
]
print(daysOfWeek[1])
daysOfWeek[0] = "Monday"
print(daysOfWeek)

// añade
daysOfWeek.append("Dia puente")
print(daysOfWeek)

// Bucles
let daysOfWeek2: [String] = [
    "Lunes",
    "Martes",
    "Miércoles",
    "Jueves",
    "Viernes",
    "Sábado",
    "Domingo"
]
for day in daysOfWeek2 {
    print(day)
}
// --------------------------------------------------
var count = 0
while count < 10 {
    print("contador \(count)")
    count += 1
}
// --------------------------------------------------
var count2 = 5
repeat {
    print("do while")
} while count2 < 0

// Ejercicio 7
func multiplicationTable(number: Int) -> Void {
    var count = 1
    print("Tabla del \(number)")
    while count <= 10 {
        let result = number * count
        print("\(number) X \(count) = \(result)")
        count += 1
    }
}
multiplicationTable(number: 4)

// Ejercicio 8
func evenNumbers() -> Void {
    var result = 0
    for i in 1...100 {
        if i % 2 == 0 {
            result += i
        }
    }
    print("El total es: \(result)")
}

evenNumbers()

// Ejericio 9
func vowels(word: String) -> Void {
    var totalVowels: Int = 0
    for character in word {
        switch character.lowercased() {
        case "a", "e", "i", "o", "u":
            totalVowels += 1
        default:
            break
        }
    }
    print("La cantidad de vocales es \(totalVowels)")
}
vowels(word: "Fernando")

// TUPLAS
let tupla = ("Fer", 23, true)
print(tupla.2)

// Diccionarios
let dicc: [String: Any] = ["name": "Fernando", "age": 23, "isHappy": true]
let myDiccName: String = dicc["name"] as? String ?? "Pepito"
print(myDiccName)

for (key, value) in dicc {
    print("La clave \(key) contiene \(value)")
}

// NULABILIDAD
var value: String = "LOLO"
var value2: String? = nil

func ejemploNil(_ text: String) {
    //
}

ejemploNil(value)
ejemploNil(value2 ?? "Otra cosa")

// CLASES
class Persona {
    var name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    func greetings() -> Void {
        print("Hola, soy \(name) y tengo \(age) años")
    }
}

var person: Persona = Persona(name: "Fernando", age: 23)
person.greetings()

struct ExampleStruct {
    var name: String
    var age: Int
}

var exampleStruct: ExampleStruct = ExampleStruct(name: "Fernando", age: 23)
exampleStruct.age
