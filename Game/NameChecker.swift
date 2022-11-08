//
//  NameChecker.swift
//  Grasset_Lilian_1_code_source_102022
//
//  Created by Lilian Grasset on 07/11/2022.
//

import Foundation

class NameChecker {

    static private var names = [String]()

    // Check is the name is already asign to a character
    static public func isNameUsed(_ name: String?) -> Bool {
        guard let charName = name, !charName.isEmpty, !names.contains(charName.lowercased()) else {
            print("Name already used or empty")
            return true
        }

        return false
    }

    // Add a new name to the list
    static public func addName(_ name: String) {
        names.append(name.lowercased())
    }
}
