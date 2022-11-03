//
//  Character.swift
//  Grasset_Lilian_1_code_source_102022
//
//  Created by Lilian Grasset on 20/10/2022.
//

import Foundation

class Character {
    static private var names = [String]()
    var name: String
    var healthPoints = 0
    var weapon = 0
    var maxHP = 0

    init(name: String) {
        self.name = name
    }

    static public func checkName(_ name: String?) -> Bool {
        guard let charName = name, !charName.isEmpty, !names.contains(charName.lowercased()) else {
            return false
        }
        print("Name already used")
        return true
    }

    // Add a new name to the list
    static public func addName(_ name: String) {
        names.append(name.lowercased())
    }

    // Attack another character
    public func attack(_ target: Character) {
        if target.isAlive() {
            target.healthPoints -= self.weapon
        }
        print("\(self.name) hits \(target.name) with success !\n")
        if !target.isAlive() {
            print("\(target) is dead !")
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
