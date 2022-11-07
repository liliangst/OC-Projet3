//
//  Character.swift
//  Grasset_Lilian_1_code_source_102022
//
//  Created by Lilian Grasset on 20/10/2022.
//

import Foundation

class Character {

    var name: String
    var healthPoints = 0
    var weapon = Weapon(type: .sword)
    var maxHP = 0

    init(name: String) {
        self.name = name
    }

    // Attack another character
    public func attack(_ target: Character) {
        if target.isAlive() {
            target.healthPoints -= self.weapon.damages
        }
        print("\(self.name) hits \(target.name) with success !\n")
        if !target.isAlive() {
            print("\(target.name) is dead !")
        }
    }

    // Check if the character is alive
    public func isAlive() -> Bool {
        healthPoints > 0
    }
}

enum CharacterType: Int {
    case warrior = 1
    case wizard = 2
    case assassin = 3
}
