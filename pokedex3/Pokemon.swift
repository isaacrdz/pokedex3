//
//  Pokemon.swift
//  pokedex3
//
//  Created by Isaac Rodriguez on 9/19/17.
//  Copyright © 2017 Isaac Rodriguez. All rights reserved.
//

import Foundation

class Pokemon {
    private var _name: String!
    private var _pokedexId: Int!
    
    var name: String {
        return _name
    }
    
    var pokedexId: Int {
        return _pokedexId
    }
    
    init(name:String, pokedexId:Int){
        
        self._name = name
        self._pokedexId = pokedexId
        
        
        
    }
}
