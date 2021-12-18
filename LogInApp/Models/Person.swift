//
//  Person.swift
//  LogInApp
//
//  Created by Дарья Носова on 18.12.2021.
//

import Foundation

struct Person {
    let fullName: String
    let age: String
    let hobbies: String
    let favoriteFilms: String
    let favoriteTVSeries: String
    let favoriteDishes: String
    
    static func getPerson() -> Person {
            Person(
                fullName: "Daria Nosova",
                age: "31 years",
                hobbies: "Travel, photography, reading and learning English",
                favoriteFilms: "Blade Runner, Matrix, Dune",
                favoriteTVSeries: "Breacking Bad, The Office, Sherlock, Black mirror",
                favoriteDishes: "Greek salad, Grilled octopus, Tom Yam"
            )
    }
}