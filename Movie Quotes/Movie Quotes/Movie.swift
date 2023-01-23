//
//  Movie.swift
//  Movie Quotes
//
//  Created by admin on 12/4/22.
//

import Foundation
import UIKit

struct Movie{
    let title: String
    let image: UIImage
    let quote: String
}
let movies: [Movie] = [
    Movie(title: "One Piece", image:  #imageLiteral(resourceName: "One Piece.jpeg"), quote: "Being alone hurts more than the pain itself"),
    Movie(title: "Attack on Titan", image: #imageLiteral(resourceName: "Attack on Titan.jpeg"), quote: "Feel the anger, the strong and pure anger of the inability to forgive will become your unwavering motivation to take action"),
    Movie(title: "Demon Slayer", image: #imageLiteral(resourceName: "Demon Slayer.jpeg"), quote: "Demon Slayer Qoute"),
    Movie(title: "Naruto Shippudeny", image: #imageLiteral(resourceName: "NARUTO SHIPPUDENY"), quote: "Narouto Qoute "),
    Movie(title: "Blue Lock", image: #imageLiteral(resourceName: "Blue lock.jpeg"), quote: "Blue Lock Qoute"),
    Movie(title: "Drifters", image: #imageLiteral(resourceName: "Drifters.jpeg"), quote: " Drifters Quote"),
    Movie(title: "Conan", image:  #imageLiteral(resourceName: "Conan"),quote: ""),
    Movie(title: "Boku no Hero", image:  #imageLiteral(resourceName: "Hero.jpeg"),quote: "")
]
