//
//  Utilities.swift
//  Grasset_Lilian_1_code_source_102022
//
//  Created by Lilian Grasset on 24/10/2022.
//

import Foundation

class Utilities {

    static func readInteger() -> Int? {
        guard let val = readLine(), let num = Int(val) else {
            return nil
        }
        return num
    }

    static func printSpace(_ nbLines: Int) {
        for _ in 0...nbLines {
            print("")
        }
    }
}

class NameChecker {

    static private var names = [String]()

    // Check is the name is already asign to a character
    static public func isNameUsed(_ name: String?) -> Bool {
        guard let charName = name, !charName.isEmpty, !names.contains(charName.lowercased()) else {
            print("Name already used")
            return true
        }

        return false
    }

    // Add a new name to the list
    static public func addName(_ name: String) {
        names.append(name.lowercased())
    }
}
