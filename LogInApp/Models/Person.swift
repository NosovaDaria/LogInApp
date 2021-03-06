//
//  Person.swift
//  LogInApp
//
//  Created by Дарья Носова on 18.12.2021.
//

import Foundation

struct Person {
    
    let name: String
    let surname: String
    let age: String
    let hobbies: String
    let favoriteFilms: String
    let favoriteTVSeries: String
    let favoriteDishes: String
    let image: String
    
    static func getPerson() -> Person {
            Person(
                name: "Daria",
                surname: "Nosova",
                age: "31 years",
                hobbies: "Travel, photography, reading, learning English",
                favoriteFilms: "Blade Runner, Matrix, Dune",
                favoriteTVSeries: "Breacking Bad, The Office, Sherlock, Black mirror, Twin Peaks",
                favoriteDishes: "Greek salad, Grilled octopus, Tom Yam",
                image: "photo_2021-12-18_13-21-10"
                
            )
    }
}
