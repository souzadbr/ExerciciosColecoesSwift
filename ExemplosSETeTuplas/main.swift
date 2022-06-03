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



