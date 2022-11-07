//
//  Player.swift
//  Grasset_Lilian_1_code_source_102022
//
//  Created by Lilian Grasset on 20/10/2022.
//

import Foundation

class Player {
    private var characters = [Character]()

    convenience init() {
        self.init(numberOfCharacter: 3)
    }

    init(numberOfCharacter: Int) {
        while characters.count < numberOfCharacter {
            newCharaters()
        }
        Utilities.printSpace(20)
    }

    // Form to create a charater
    private func newCharaters() {
        print("""
        \nChoose a character type :
        1 : Warrior
        2 : Wizard
        3 : Assassin\n
        """)

        if let charType = Utilities.readInteger() {
            var charName: String?
            repeat {
                print("\nChoose a name :")
                charName = readLine()
            } while NameChecker.isNameUsed(charName)

            // charName is now safe to unwrap
            NameChecker.addName(charName!)

            switch CharacterType(rawValue: charType) {
            case .warrior:
                characters.append(Warrior(name: charName!))
            case .wizard:
                characters.append(Wizard(name: charName!))
            case .assassin:
                characters.append(Assassin(name: charName!))
            case .none:
                print("Error: fail to identify the character type")
            }
        } else {
            print("Error: string instead of int, can't assign CharacterType")
        }
    }

    // Display each character with its attributes
    public func displayTeam() {
        for character in characters {
            print("\(character.name),",
                  "\(type(of: character)), ",
                  "\(character.weapon.damages) ATT, ",
                  "\(character.healthPoints) HP\n")
        }
    }

    // Check if at least one character is alive
    public func teamIsAlive() -> Bool {
        characters.filter({ $0.isAlive()}).count > 0

        /* Old version
         for character in characters where character.healthPoints >= 0 {
                 return true
         }
         return false
         */
    }

    // Pick a character
    public func pickCharacter() -> Character? {
        print("Choose a character :\n")
        for index in 0..<characters.count {
            let char = characters[index]
            print("\(char.isAlive() ? String(index+1) : "X"):",
                  "\(char.name), \(type(of: char)),",
                  "\(char.weapon.damages) ATT,",
                  "\(char.healthPoints) HP\n")
        }

        guard let charChoice = Utilities.readInteger(), charChoice <= characters.count else {
            print("This is not a character.\n")
            return nil
        }

        if characters[charChoice-1].isAlive() {
            return characters[charChoice-1]
        } else {
            print("Oups this character is dead !\n")
        }

        return nil
    }

}
