//
//  Wizard.swift
//  Grasset_Lilian_1_code_source_102022
//
//  Created by Lilian Grasset on 20/10/2022.
//

import Foundation

class Wizard: Character {

    override init(name: String) {
        super.init(name: name)
        self.healthPoints = 120
        self.maxHP = 120
        self.weapon = 5
    }

    public func heal(_ target: Character) {
        if target.isAlive() && target.healthPoints < target.maxHP - 10 {
            target.healthPoints += 10
        }
        print("\(self.name) just healed \(target.name) !\n")
    }
}
