//
//  WarGameModel.swift
//  War Card Game
//
//  Created by Jacob Fredriksson on 2023-02-22.
//

import Foundation


final class WarGameModel: ObservableObject {
    @Published var playerCard = "card7"
    @Published var cpuCard = "card13"
    
    @Published var playerScore = 0
    @Published var cpuScore = 0
    
    
    func deal() {
        //Randomize the players card
        let playerCardValue = Int.random(in: 2...14)
        let cpuCardValue = Int.random(in: 2...14)
        playerCard = "card" + String(playerCardValue)
        
        //Randomize cpu card
        cpuCard = "card" + String(cpuCardValue)
        print(playerCardValue, cpuCardValue)
        //Update score
        if playerCardValue > cpuCardValue {
            playerScore += 1
        } else if cpuCardValue > playerCardValue {
            cpuScore += 1
        } else {
            print("tie")
        }
    }
}

