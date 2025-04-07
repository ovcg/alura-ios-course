import UIKit

func isPrimo(numero: Int) -> Bool {
    if numero < 2 {
        return false
    }
    for i in 2..<numero {
        if numero % i == 0 {
            return false
        }
    }
    return true
}

isPrimo(numero: 23)

let array1 = [Int]()
let array2 = [1]
let array3: [String] = []
var array4 = [1,2,3]
print(array4[0])
array4.append(5)


