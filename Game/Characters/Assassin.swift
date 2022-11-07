//
//  Assassin.swift
//  Grasset_Lilian_1_code_source_102022
//
//  Created by Lilian Grasset on 20/10/2022.
//

import Foundation

class Assassin: Character {

    override init(name: String) {
        super.init(name: name)
        self.healthPoints = 75
        self.maxHP = 75
        self.weapon = Weapon(type: .dagger)
    }
}
