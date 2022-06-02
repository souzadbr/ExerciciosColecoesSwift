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




