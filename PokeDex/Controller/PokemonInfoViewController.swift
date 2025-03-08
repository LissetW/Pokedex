//
//  PokemonInfoViewController.swift
//  PokeDex
//
//  Created by Winonito Programmer on 06/03/25.
//

import UIKit

class PokemonInfoViewController: UIViewController {
    
    let pokemonDataManager = PokemonDataManager()
    
    @IBOutlet weak var imagePokemon: UIImageView!
    @IBOutlet weak var pName: UILabel!
    @IBOutlet weak var pType: UILabel!
    @IBOutlet weak var pMove: UILabel!
    @IBOutlet weak var pAbility: UILabel!
    @IBOutlet weak var pDescription: UILabel!
    @IBAction func back(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    var pokemonIndex: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pokemonDataManager.fetch()
        
        if let pokemon = pokemonDataManager.getPokemon(at: pokemonIndex) {
            pName.text = pokemon.name
            pMove.text = "Move: \(pokemon.description.move)"
            pAbility.text = "Ability: \(pokemon.description.ability)"
            pDescription.text = "Description: \(pokemon.description.description)"
            pType.text = pokemon.description.type
            imagePokemon.image = UIImage(named: pokemon.image)
        }
        
    }
}
