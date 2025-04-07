import UIKit

class Calculadora {
    var number1: Double
    var number2: Double
    
    init(number1: Double, number2: Double) {
        self.number1 = number1
        self.number2 = number2
    }
    
    func soma() -> Double {
        return number1 + number2
    }
    
    func subtracao() -> Double {
        return if number1 >= number2 {
            number1 - number2
        } else {
            number2 - number1
        }
    }
    
    func mult() -> Double {
        return number1 * number2
    }
    
    func div() -> Double {
        return number1 / number2
    }
}

let calculadora = Calculadora(number1: 20, number2: 4)
print(calculadora.soma())
print(calculadora.subtracao())
print(calculadora.mult())
print(calculadora.div())


class Conta {
    var saldo = 0.0
    var nome: String
    
    func sacar(_ valor: Double) {
        saldo -= valor
    }
    
    func depositar(_ valor: Double) {
        saldo += valor
    }
    
    func transferir(_ contaDestino: Conta, _ valor: Double) {
        sacar(valor)
        contaDestino.depositar(valor)
    }
    
    init(nome: String) {
        self.nome = nome
    }
}

class ContaPoupanca: Conta {
    
}

class ContaCorrente: Conta {

}

var contaPoupanca = ContaPoupanca(nome: "Otávio Gomes")
contaPoupanca.depositar(20000)

print("O saldo da conta é: \(contaPoupanca.saldo)")


class Empregado {
    var nome: String
    var salario: Double
    
    init(nome: String, salario: Double = 0.0) {
        self.nome = nome
        self.salario = salario
    }
    
}

class Gerente: Empregado {
    var departamento: String
    
    init(departamento: String, nome: String, salario: Double) {
        self.departamento = departamento
        super.init(nome: nome, salario: salario)
    }
}


class Vendedor: Empregado {

    func calculaComissao(_ vendas: Int) -> Double {
        return (0.1 * 50 * Double(vendas)) + self.salario
    }
    
}

let vendedor = Vendedor(nome: "valmir", salario: 1.500)

print("A comissao de \(vendedor.nome) foi = \(vendedor.calculaComissao(20))")

class Pessoa {
    var nome: String
    var idade: Int
    var altura: Double
    var peso: Double
    
    var imc: Double {
        return peso / (altura * altura)
    }
    
    var adulto: Bool {
        return idade >= 18
    }
    
    init(nome: String, idade: Int, altura: Double, peso: Double) {
        self.nome = nome
        self.idade = idade
        self.altura = altura
        self.peso = peso
    }
}

extension String {
    func contaCaracString() -> Int {
        return self.count
    }
}

enum TipoPagamento {
    case pix
    case boleto
    case cartao
}

func validarPagamento(tipoPagamento: TipoPagamento) {
    switch tipoPagamento {
    case .boleto : print("boleto")
    case .pix : print("pix")
    default: break
    }
}

validarPagamento(tipoPagamento: TipoPagamento.boleto)

print("Testando".contaCaracString())
