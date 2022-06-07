//
//  main.swift
//  ExemplosSETeTuplas
//
//  Created by Debora.souza on 01/06/22.
//

import Foundation

print("Hello, World!")

//Set

var movies: Set<String> = [
    "Matrix",
    "Vingadores",
    "Jurassic Park",
    "De Volta para o Futuro"
    
]

var movies2 = Set<String>()

movies.insert("Homem-Aranha: De Volta para o Lar")
print(movies.count)
movies.insert("Homem-Aranha: De Volta para o Lar") //nao insere itens repetidos
print(movies.count)

let result = movies.insert("Homem-Aranha: De Volta para o Lar")
print(result.inserted, result.memberAfterInsert)  //o que foi inserido e o o que tentou ser inserido aqui dá falso pq nao posso inserir o mesmo filme já inserido
print(movies)
movies.remove("Homem-Aranha: De Volta para o Lar")
print(movies)


//para cada filme dentro da minha lista de filme imprimir o filme

for movie in movies {
    print (movie)
}

//se o set movies contiver o filme que coloco como parametro ele imprimir o print
if movies.contains("Vingadores"){
    print("Vingadores está na minha lista de filmes favoritos")
}

var myWifemovies: Set<String> = [
    "De Repente 30",
    "Mensagem para Você",
    "Sintonia do Amor",
    "De Volta para o Futuro",
    "Jurassic Park"
    
]

let favoriteMovies = movies.intersection(myWifemovies)
print(favoriteMovies)

let allMovies = movies.union(myWifemovies)
print(allMovies)

movies =  movies.subtracting(myWifemovies)

print(movies)


//Tuplas

//ela serve para agrupar multiplos tipos em um unico valor composto


//let adress: "Av Paulista, 1578, São Paulo - SP, 01310-200"

let adress:(type: String, name:String,number: Int,city: String, state:String,zipcode: String) = ("Av","Paulista", 1578, "São Paulo", "SP", "01310-200")

//acessando quando não tem nomes
print(adress.0)
print(adress.3)
print("------------")
//Acessando quando tem nomes nos tipos

print(adress.number)
print(adress.name)
print("----------")
let (type, name, number, city, state, cep) = adress // tenho varias variaveis sendo abastecidas pela tupla adress

print(type)
print(name)
print(number)

//Array: colecao ordenada de objetos do mesmo tipo

var nomes = ["Fulano", "Ciclano", "Beltrano"] //swift sabe que é um array de string

var namesB: [String] = ["Fulano", "Ciclano", "Beltrano"]

var lotaryNumbers: [Int] = [] //so posso criar um array vazio definindo o tipo dele

var phoneNumbers: [String]? //como eu crio um array nulo? Usando optional, mas ai preciso definir o tipo

var ages:[UInt8] = [9,7,22,15,45]

//nao existe idade negativa, portanto eles sao do tipo UInt8 - nao pode ser negativo e 8 bits

var guests = ["Joao", "Paula", "Alexandre","Patricia", "Sandra"]
print("---------")
print(guests)
print(guests.count)
print(guests.isEmpty) //devolve um boolean e diz se o array está vazio ou não
print("---------")
//posso acessar um elemento do array por colchetes
let secondGuest = guests[1]
print(secondGuest)
guests[0] = "Henrique" //aqui estmaos alterando quem é o item de index 0 do array
print(guests)
print("---------")
guests[0...1] = ["Eric", "Roberto", "Bia", "Joana"]
print(guests)

if let firts =  guests.first {
    print(firts) //devolve o primeiro elemento e é optional
}

if let last =  guests.last {
    print(last) //devolve o ultimo elemento e é optional
}

//adicionar elementos num array

guests += ["Sandro", "Helena", "Ellen"] //adiciona no fim do array
print(guests)

guests.append("Edna") // adiciona no fim do array

print(guests)

//quero que meu segundo convidado passe a ser outra pessoa

guests.insert("Romildo", at: 2)

print(guests)

//remover elementos

//guests.removeFirst() //remove o primeiro item
//guests.removeLast() //remove ultimo item
//guests.remove(at: 2) //remove a posicao escolhida


//será que convidei a Helena?

if guests.contains("Romildo") {
    print("Romildo foi convidado")
}

//Manipulando Dicinarios: colcecao não ordeanda de objetos de mesmo tipo, que são acessados atraves de uma chave

//iguais os arrays ja podemos iniciar o dicionario com varios valores

var states = [
    
    "AC": "Acre",
    "AL": "Alagoas",
    "AP": "Amapá",
    "AM": "Amazonas",
    "BA": "Bahia",
    "CE": "Ceara",
    "DF": "Distrito Federal",
    "ES": "Espirito Santo"
]

//definir tipo do dicionario chave e valor - iniciando dicionario vazio valor 0
var studentGrade: [String: Double] = [:]


//como add novo estados

states["GO"] = "Goiaz"

//states["GO"] = "Goias"
print (states)

let oldGo = states.updateValue("Goias", forKey: "GO")
print(oldGo)
if let oldGo = oldGo {
    print(oldGo)
}

states["GO"] = nil // exclui o estado do dicionario

print(states)

print(states.count)


print(states.keys)
print(states.values)

//Controle de fluxo com While e For in

//FOR IN

//for ai vc diz o nome da constante que vai receber o valor dessa sua sequencia chamada day + o range para criar uma sequencia de 1 a 30

for day in 1...30 {
    print("Estou no \(day) de Setembro")
}
for _ in 1...5 {
    print("Dedique-se ao curso de desenvolvimento iOS")
}

let students = [
    
    "Joao Francisco",
    "Pedro Henrique",
    "Gustavo Oliveira",
    "Janaina Santos",
    "Francisco José"
    
]
for student in students{
    print("O aluno \(student) veio na aula de hoje")
}

let name1 = "Debora Ridrigues de Souza"

for (index, letter) in name1.enumerated() {
    print(index,letter)
}


//While : continuar a execucao enquanto a condicoes especificada seja verdadeira

var life = 10

while life > 0 {
    print("O jogador está com \(life) vidas")
    life = life - 1
}

import Foundation

var megaSena: [Int] = []

while megaSena.count < 6 {
    let number = Int (arc4random_uniform(60)+1)
    if !megaSena.contains(number) {
        megaSena.append(number)
    }
    
}
print(megaSena.sorted()) //vem um array ordenado


var tries = 0
var diceNumber = 0

repeat{
    tries += 1
    diceNumber = Int(arc4random_uniform(6) + 1)
} while diceNumber != 6

print("Voce tirou 6 apos \(tries) tentativas")


let grades = [10.0, 9.0, 7.0, 9.5, 5.0, 1.0, 6.5, 10.0, 10.0, 8.0]
for grade in grades {
    print(grade)
    if grade < 0.0 || grade > 10.0 {
        print("Nota valida")
        break
    }
}

//Enumeradores ou Enum = grupo nomeado que pode ter valores associados aos mesmos. Conjunto limitado de valores
//boa pratica o nome do enum ser com letra maiuscula e os cases em minuscula

enum CompassPoint {
    case north
    case east
    case west
    case south
}
//variavel do tipo CompassPoint podendo ter acesso dessa forma as opcoes descritas no cases do enum
var direction: CompassPoint = CompassPoint.east

//posso usar apenas o valor .east tbm

direction = .south

//nao precisa de um case para cada
enum SeatPosition: String{
    case aisle = "Corredor", midle = "Meio", window = " Janela"
}

var passengerSeat = SeatPosition.window

switch passengerSeat {
case .aisle:
    print ("O passageiro esta sentado no corredor")
case .midle:
    print ("O passageiro esta sentado no meio")
case .window :
    print ("O passageiro esta sentado na janela")
}
print(passengerSeat.rawValue)

//enum podem vir alimentados de um valor bruto padrao rawuValue

enum Month: Int {
    case january
    case february
    case march
    case april
    case may
    case june
    case july
    case august
    case september
    case octuber
    case november
    case december
}

print(Month.august.rawValue)

//valores associados (Associated Values)

enum Messure {
    case weight(Double)
    case age (Int)
    case size(width: Double, height: Double)
}

let measure: Messure = .size(width: 49.89, height: 12.8)//.weight(89.76)//.age(30)
switch measure {
case .weight(let weight):
    print("O seu peso é: \(weight)")
case .age(let age):
    print("A sua idade é: \(age)")
case .size(let size):
    print("As suas medidas de tamanho são: \(size.width)m de largura e  \(size.height)m de altura ")
}

//Estruturas (Struct)

//todos os tipos que usamos ate agora sao na verdade structs

let age: Int = 20
let nameDaDebora: String = "Debora"

struct Person {
    //variaveis aqui são propriedades. A struct tbm pode ter funcoes (metodos)
    var name: String?
    var age: Int = 0

//    init(name: String) { //self represeta a atributo da propria struct
//        self.name = name
//    }
//
    func sayHello() {
        print("Hello")
    }
    mutating func incrementAge() { //se um metodo da struct modifica alguma de suas propriedades vc usa essa palavrinha reservada mutating
        age += 1
    }
}

var person = Person(name: "Debora", age: 30) //processo de inicializacao ou construcao
//pode ser chamado de uma segunda forma: Person.init(name: ,age: )
person.sayHello()
person.incrementAge()
person.name = "Roberto"
if let pessoa = person.name {
    print(pessoa)
}


var newPerson = Person(name: "Debora") //quando crio um contrutor eu matro o metodo iniciliazador que foi feito automaticamente pelo swift

//Computed Properties (Propriedades computadas)

struct Temperature {
    var celsius: Double
    var fahrenheit: Double {
        return celsius * 1.8 + 32
    }
}
var temperature = Temperature(celsius: 25)
print(temperature.celsius)
print(temperature.fahrenheit) //semopre que ele for retornar esse valor ele vai pegar celsius computar e devolver o valor sem ser necessario que o valor esteja no cosntrutor da struct
//com uso da struct eu passo a poder fazer meu proprios tipos 
