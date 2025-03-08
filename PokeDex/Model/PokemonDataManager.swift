//
//  PokemonDataManager.swift
//  PokeDex
//
//  Created by Winonito Programmer on 05/03/25.
//

import Foundation

class PokemonDataManager{
    private var pokemons: [Pokemon] = []

    let pokemonsArray = [
        ["image": "0", "name": "Wartortle", "move": "Water Gun", "ability": "Torrent", "description": "The evolved form of Squirtle. It has a fluffy tail and strong shell.", "type": "Water"],
        ["image": "1", "name": "Bulbasaur", "move": "Vine Whip", "ability": "Overgrow", "description": "A small Pokémon with a plant bulb on its back.", "type": "Grass/Poison"],
        ["image": "2", "name": "Blastoise", "move": "Hydro Pump", "ability": "Torrent", "description": "Blastoise has powerful water cannons on its shell.", "type": "Water"],
        ["image": "3", "name": "Butterfree", "move": "Gust", "ability": "Compound Eyes", "description": "A butterfly Pokémon with colorful wings.", "type": "Bug/Flying"],
        ["image": "4", "name": "Ivysaur", "move": "Razor Leaf", "ability": "Overgrow", "description": "The bulb on its back starts blooming as it grows.", "type": "Grass/Poison"],
        ["image": "5", "name": "Jigglypuff", "move": "Sing", "ability": "Cute Charm", "description": "It sings a lullaby that makes its opponents fall asleep.", "type": "Normal/Fairy"],
        ["image": "6", "name": "Charmander", "move": "Flamethrower", "ability": "Blaze", "description": "A Fire-type Pokémon with a flame at the tip of its tail.", "type": "Fire"],
        ["image": "7", "name": "Meowth", "move": "Pay Day", "ability": "Pickup", "description": "A cat-like Pokémon known for its love of shiny objects.", "type": "Normal"],
        ["image": "8", "name": "Alakazam", "move": "Psychic", "ability": "Synchronize", "description": "A powerful Psychic-type Pokémon with high intelligence.", "type": "Psychic"],
        ["image": "9", "name": "Pidgey", "move": "Gust", "ability": "Keen Eye", "description": "A small bird Pokémon known for its gentle nature.", "type": "Normal/Flying"],
        ["image": "10", "name": "Raichu", "move": "Thunderbolt", "ability": "Static", "description": "The evolved form of Pikachu. It stores electricity in its cheeks.", "type": "Electric"],
        ["image": "11", "name": "Rattata", "move": "Hyper Fang", "ability": "Run Away", "description": "A small rodent Pokémon that can chew through almost anything.", "type": "Normal"],
        ["image": "12", "name": "Vaporeon", "move": "Aqua Tail", "ability": "Water Absorb", "description": "An evolution of Eevee that can melt into water.", "type": "Water"],
        ["image": "13", "name": "Jynx", "move": "Ice Punch", "ability": "Oblivious", "description": "A humanoid Pokémon that communicates through dance.", "type": "Ice/Psychic"],
        ["image": "14", "name": "Venusaur", "move": "Solar Beam", "ability": "Overgrow", "description": "The final evolution of Bulbasaur, with a large flower on its back.", "type": "Grass/Poison"],
        ["image": "15", "name": "Vulpix", "move": "Ember", "ability": "Flash Fire", "description": "A small fox Pokémon with six tails. It breathes fire when threatened.", "type": "Fire"],
        ["image": "16", "name": "Slowbro", "move": "Surf", "ability": "Own Tempo", "description": "A Slowpoke that evolved after a Shellder bit its tail.", "type": "Water/Psychic"],
        ["image": "17", "name": "Dewgong", "move": "Ice Beam", "ability": "Thick Fat", "description": "An aquatic Pokémon that loves cold temperatures.", "type": "Water/Ice"],
        ["image": "18", "name": "Spearow", "move": "Peck", "ability": "Keen Eye", "description": "A small but aggressive bird Pokémon.", "type": "Normal/Flying"],
        ["image": "19", "name": "Wigglytuff", "move": "Hyper Voice", "ability": "Cute Charm", "description": "A round Pokémon with soft fur and a beautiful voice.", "type": "Normal/Fairy"],
        ["image": "20", "name": "Scyther", "move": "Slash", "ability": "Swarm", "description": "A mantis-like Pokémon with sharp scythes for arms.", "type": "Bug/Flying"],
        ["image": "21", "name": "Golduck", "move": "Hydro Pump", "ability": "Damp", "description": "A fast-swimming Pokémon with psychic abilities.", "type": "Water"],
        ["image": "22", "name": "Lapras", "move": "Ice Beam", "ability": "Water Absorb", "description": "A gentle Pokémon that ferries people across the sea.", "type": "Water/Ice"],
        ["image": "23", "name": "Sandshrew", "move": "Dig", "ability": "Sand Veil", "description": "A ground-dwelling Pokémon with tough skin.", "type": "Ground"]
    ]

    func fetch() {
        for pokemon in pokemonsArray {
            pokemons.append(Pokemon(dict: pokemon))
        }
    }
    func getPokemons() -> [Pokemon] {
        return pokemons
    }
    func getPokemon(at index: Int) -> Pokemon? {
        guard index >= 0 && index < pokemons.count else { return nil }
        return pokemons[index]
    }
    func count() -> Int {
        return pokemons.count
    }
}
