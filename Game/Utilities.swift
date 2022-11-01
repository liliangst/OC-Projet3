//
//  Utilities.swift
//  Grasset_Lilian_1_code_source_102022
//
//  Created by Lilian Grasset on 24/10/2022.
//

import Foundation

class Utilities {

    static func readInteger() -> Int? {
        if let val = readLine() {
            if let num = Int(val) {
                return num
            }
        }
        return nil
    }

    static func printSpace(_ nbLines: Int) {
        for _ in 0...nbLines {
            print("")
        }
    }
}
