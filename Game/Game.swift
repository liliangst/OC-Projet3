//
//  Game.swift
//  Grasset_Lilian_1_code_source_102022
//
//  Created by Lilian Grasset on 20/10/2022.
//

import Foundation

class Game {

    private var players = [Player]()

    // Game stats
    private var damages: Int = 0
    private var healedNb: Int = 0
    private var nbTurn: Int = 0

    init() {

        // Creation of both team
        print("Creation of the first player team")
        players.append(Player())
        print("\nCreation of the second player team")
        players.append(Player())

        // Displaying both team before the game starts
        print("\nFirst player's team :")
        players[0].displayTeam()
        print("\nSecond player's team :")
        players[1].displayTeam()

        Utilities.printSpace(5)
    }

    public func fight() {

        var currentPlayerIndex = 0

        while players[0].teamIsAlive() && players[1].teamIsAlive() {

            print("\(currentPlayerIndex == 0 ? "First" : "Second") player's turn\n")
            nbTurn += 1

            if let char = players[currentPlayerIndex].pickCharacter() {

                print("""
                \nChoose an action :
                1: Attack
                \(char is Wizard ? "2: Heal\n" : "\n")
                """)

                if let rawAction = Utilities.readInteger() {

                    switch Action(rawValue: rawAction) {
                    case .attack:
                        print("Target : ")
                        if let charToAttack = players[(currentPlayerIndex+1)%2].pickCharacter() {
                            char.attack(charToAttack)
                            damages += char.weapon.damages
                            break
                        }
                    case .heal:
                        print("Target : ")
                        if let wizard = char as? Wizard, let charToHeal = players[currentPlayerIndex].pickCharacter() {
                            wizard.heal(charToHeal)
                            healedNb += 1
                        } else {
                            print("\(char.name) tries to cast a spell and fail !\n")
                        }
                    case .none:
                        print("This action does not exist you lost your turn !\n")
                    }
                } else {
                    print("This action does not exist you lost your turn !\n")
                }

                currentPlayerIndex = currentPlayerIndex == 0 ? 1 : 0
            }
        }
    }

    public func showStats() {

        Utilities.printSpace(30)

        self.showWinner()

        print("""
        ===== Stats =====
        Number of turns : \(nbTurn)
        All damages : \(damages)
        Number of heals : \(healedNb)
        """)

    }

    private func showWinner() {
        print("\(players[0].teamIsAlive() ? "First" : "Second") player wins !!!\n")
    }

}

enum Action: Int {
    case attack = 1
    case heal = 2
}
