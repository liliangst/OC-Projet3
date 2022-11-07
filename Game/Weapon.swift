//
//  Weapon.swift
//  Grasset_Lilian_1_code_source_102022
//
//  Created by Lilian Grasset on 07/11/2022.
//

import Foundation

class Weapon {

    enum WeaponType {
        case sword, wand, dagger
    }

    var type: WeaponType
    var damages: Int {
        switch self.type {
        case .wand:
            return 5
        case .sword:
            return 10
        case .dagger:
            return 15
        }
    }

    init(type: WeaponType) {
        self.type = type
    }
}
