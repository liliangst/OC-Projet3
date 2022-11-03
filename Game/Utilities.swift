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
