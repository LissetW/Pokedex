//
//  Pokemon.swift
//  PokeDex
//
//  Created by Winonito Programmer on 05/03/25.
//

import Foundation

struct PokemonDescription {
    let move: String
    let ability: String
    let description: String
    let type: String
}

struct Pokemon {
    let name: String
    let image: String
    let description: PokemonDescription
    
    init(dict: [String: String]) {
        self.name = dict["name"] ?? "Unknown Name"
        self.image = dict["image"] ?? "No Image"
        self.description = PokemonDescription(
            move: dict["move"] ?? "Unknown Move",
            ability: dict["ability"] ?? "Unknown Ability",
            description: dict["description"] ?? "No description",
            type: dict["type"] ?? "Unknown Type"
        )
    }
}
