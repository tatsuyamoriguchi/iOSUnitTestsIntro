//
//  PokemonTests.swift
//  iOSUnitTestsIntroTests
//
//  Created by Tatsuya Moriguchi on 7/19/22.
//

import XCTest
@testable import iOSUnitTestsIntro


class PokemonTests: XCTestCase {

    var squirtle: Pokemon!
    var charmander: Pokemon!
    var psyduck: Pokemon!
    
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        try super.setUpWithError()
        
        squirtle = Pokemon(type: .Water, attackType: .Water)
        charmander = Pokemon(type: .Fire, attackType: .Fire)
        psyduck = Pokemon(type: .Water, attackType: .Water)
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        try super.tearDownWithError()
        squirtle = nil
        charmander = nil
        psyduck = nil
        
    }
    
    func testThatAWaterPokemonDoesMoreDamageToAFirePokemon() {
        // All programming is simulation. In order to test that a water Pokemon does more damage against a fire Pokemon
        // 1. Have Squirtle attack Charmander
        squirtle.attack(enemy: charmander)
        
        // 2. Have Squirtle attack Psyduck
        squirtle.attack(enemy: psyduck)
        // 3. Test that the fire type to have taken more damage than the water type.
        //XCTAssertTrue(charmander.health < psyduck.health)
        XCTAssertTrue(charmander.health < psyduck.health)

        
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}


