//
//  PokemonViewController.swift
//  PokeDex
//
//  Created by Winonito Programmer on 05/03/25.
//

import UIKit

class PokemonViewController: UIViewController {
    
    let dataManager = PokemonDataManager()

    @IBOutlet weak var pokemonTable: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        pokemonTable.dataSource = self
        pokemonTable.delegate = self
        dataManager.fetch()
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if segue.identifier == "showDetail",
               let detailsVC = segue.destination as? PokemonInfoViewController,
               let index = sender as? Int {
                detailsVC.pokemonIndex = index
            }
        }
}

extension PokemonViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataManager.count()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "pokemonCell", for: indexPath) as! PokemonCell
        if let pokemon = dataManager.getPokemon(at: indexPath.row){
            cell.pokemonImage.image = UIImage(named: pokemon.image)
            cell.pokemonLabel.text = pokemon.name
            return cell
        }
        else{
            cell.pokemonImage.image = UIImage(named: "defaulImage")
            cell.pokemonLabel.text = "Default text"
            return cell
        }
    }
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        return UIImageView(image: UIImage(named: "PokemonHeader"))
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Pokemon seleccionado: \(indexPath.row)")
        performSegue(withIdentifier: "showDetail", sender: indexPath.row)
    }
    
}
