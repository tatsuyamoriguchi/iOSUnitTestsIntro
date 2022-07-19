//
//  Pokemon.swift
//  iOSUnitTestsIntro
//
//  Created by Tatsuya Moriguchi on 7/19/22.
//

import Foundation

class Pokemon {
    var type: PokemonType
    var attackType: PokemonAttackType
    var health: Int = 100
    
    init(type: PokemonType, attackType: PokemonAttackType) {
        self.type = type
        self.attackType = attackType
    }
}

enum PokemonType {
    case Neutral
    case Fire
    case Water
}

enum PokemonAttackType {
    case Normal
    case Fire
    case Water
}

func attack(enemy: Pokemon) {
    var damage = 30
    
    if enemy.type == .Fire && .attackType == .Water {
        damage = 60
    }
    if enemy.attackType == .Water && .attackType == .Fire {
        damage = 10
    }
    
    enemy.health = enemy.health - damage
    
}



