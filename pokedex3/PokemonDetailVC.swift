//
//  PokemonDetailVC.swift
//  pokedex3
//
//  Created by Isaac Rodriguez on 9/21/17.
//  Copyright © 2017 Isaac Rodriguez. All rights reserved.
//

import UIKit

class PokemonDetailVC: UIViewController {
    
    var pokemon: Pokemon!
    
    
    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var mainImage: UIImageView!
    @IBOutlet weak var descriptinoLbl: UILabel!
    @IBOutlet weak var typeLbl: UILabel!    
    @IBOutlet weak var defenseLbl: UILabel!
    @IBOutlet weak var heightLbl: UILabel!
    @IBOutlet weak var pokedexLbl: UILabel!
    @IBOutlet weak var weightLbl: UILabel!
    @IBOutlet weak var attackLbl: UILabel!
    @IBOutlet weak var currentEvoImage: UIImageView!
    @IBOutlet weak var nextEvoImage: UIImageView!
    @IBOutlet weak var evoLbl: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameLbl.text = pokemon.name.capitalized
        
        let img = UIImage(named: "\(pokemon.pokedexId)")
        mainImage.image = img
        currentEvoImage.image = img
        pokedexLbl.text = "\(pokemon.pokedexId)"
        
        
        
        
        pokemon.downloadPokemonDetail{
            //Whatever we write will only be called after the network called is complete!
            print("We are here")
            self.updateUI()
        }
    }
    func updateUI(){
        
        attackLbl.text = pokemon.attack
        defenseLbl.text = pokemon.defense
        heightLbl.text = pokemon.height
        weightLbl.text = pokemon.weight
        typeLbl.text = pokemon.type
        descriptinoLbl.text = pokemon.description
        
        if pokemon.nextEvolutionID == "" {
            evoLbl.text = "No Evolutions"
            nextEvoImage.isHidden = true
            
        } else {
            nextEvoImage.isHidden = false
            nextEvoImage.image = UIImage(named: pokemon.nextEvolutionID)
            let str = "Next Evolution: \(pokemon.nextEvolutionName) - LVL \(pokemon.nextEvolutionLevel)"
            evoLbl.text = str
            
            
            
        }
        
    }
    
    @IBAction func backBtnPressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    
    
    
}
