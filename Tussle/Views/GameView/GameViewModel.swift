//
//  GameViewModel.swift
//  Tussle
//
//  Created by Adrien CHABAUD on 2024-02-21.
//

import Foundation

final class GameViewModel: ObservableObject {
    @Published var squares = [SquareViewModel]()
    @Published var currentPlayer: stateSquare
    
    init() {
        self.currentPlayer = .xPlayer
        
        for _ in 0...8 {
            squares.append(SquareViewModel(squareStatus: .empty))
        }
    }
    
    func move(index: Int, player: stateSquare) {
        squares[index].squareStatus = player
    }
    
    func changePlayer() {
        if self.currentPlayer == .xPlayer {
            self.currentPlayer = .oPlayer
        } else if self.currentPlayer == .oPlayer{
            self.currentPlayer = .xPlayer
        }
    }
    
    func buttonAction(_ index: Int) {
        self.move(index: index, player: self.currentPlayer )
        self.changePlayer()
    }
}
