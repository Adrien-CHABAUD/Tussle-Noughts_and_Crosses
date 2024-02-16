//
//  PlayerSelectionViewModel.swift
//  Tussle
//
//  Created by Adrien CHABAUD on 2024-02-16.
//

import Foundation

final class PlayerSelectionViewModel: ObservableObject {
    @Published var crossPlayerName: String
    @Published var noughtPlayerName: String
    
    @Published var startGame: Bool
    
    init(){
        crossPlayerName = ""
        noughtPlayerName = ""
        startGame = false
    }
    
    func checkTextField() {
        if !crossPlayerName.isEmpty && !noughtPlayerName.isEmpty {
            startGame = true
        } else {
            startGame = false
            // TO-DO: Alert one name is not completed
        }
    }
}
