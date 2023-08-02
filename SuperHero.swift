//
//  SuperHero.swift
//  SuperHeroSwiftUI
//
//  Created by Nahide Sena Sabırlı on 2.08.2023.
//

import Foundation
import SwiftUI
import CoreLocation

struct SuperHero : Identifiable {
    var id = UUID()
    var name : String
    var RealName : String
    var imageName : String
    var city : String
    var job : String
    var info : String
    var koordinat : Koordinat
    
    var koordinatLocation : CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: koordinat.latitude, longitude: koordinat.longitude)
    }
}

struct Koordinat {
    var latitude : Double
    var longitude : Double
    
}

let Batman = SuperHero(name: "Batman", RealName: "Bruce Wayne", imageName: "batman1", city: "Gotham", job: "Business Man", info: "Batman, also known as Bruce Wayne, is a fictional superhero appearing in American comic books.", koordinat: Koordinat(latitude: 41.894979, longitude: -87.666743))

let Spiderman = SuperHero(name: "Spiderman", RealName: "Peter Parker", imageName: "spiderman1", city: "New York", job: "Photographer", info: "Spider-Man, also known as Peter Parker, is a fictional superhero appearing in American comic books.", koordinat: Koordinat(latitude: 40.7160119, longitude: -74.0524729))

let Superman = SuperHero(name: "Superman", RealName: "Clark Kent", imageName: "superman", city: "Kansas", job: "Journalist", info: "Superman is a fictional superhero appearing in American comic books.", koordinat: Koordinat(latitude: 39.0865207, longitude: -94.7089592))

let Ironman = SuperHero(name: "Ironman", RealName: "Tony Stark", imageName: "ironman1", city: "Los Angeles", job: "Business Man", info: "Iron Man is a fictional superhero appearing in American comic books.", koordinat: Koordinat(latitude: 33.8003309, longitude: -118.2261494))

let superHeroArray = [Batman, Spiderman, Superman, Ironman]

