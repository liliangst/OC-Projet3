//
//  Warrior.swift
//  Grasset_Lilian_1_code_source_102022
//
//  Created by Lilian Grasset on 20/10/2022.
//

import Foundation

class Warrior: Character {

    override init(name: String) {
        super.init(name: name)
        self.healthPoints = 100
        self.maxHP = 100
        self.weapon = 10
    }
}
