//
//  ViewController.swift
//  iOSUnitTestsIntro
//
//  Created by Tatsuya Moriguchi on 7/19/22.
//

import UIKit

class ViewController: UIViewController {
    var squirtle: Pokemon!
    var charmander: Pokemon!
    var psyduck: Pokemon!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        squirtle = Pokemon(type: .Water, attackType: .Water)
        charmander = Pokemon(type: .Fire, attackType: .Fire)
        psyduck = Pokemon(type: .Water, attackType: .Water)

        squirtle.attack(enemy: charmander)
        squirtle.attack(enemy: psyduck)
        print("charmander.health: \(charmander.health)")
        print("psyduck.health: \(psyduck.health)")
        
        
    }


}

