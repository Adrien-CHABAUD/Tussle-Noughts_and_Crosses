//
//  GameViewModel.swift
//  Tussle
//
//  Created by Adrien CHABAUD on 2024-02-20.
//

import Foundation

enum SquareStatus{
    case empty
    case xPlayer
    case oPlayer
}

final class GameViewModel: ObservableObject {
    @Published var squareSatus: SquareStatus
    
    init(squareSatus: SquareStatus) {
        self.squareSatus = squareSatus
    }
}
