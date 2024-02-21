//
//  SquareViewModel.swift
//  Tussle
//
//  Created by Adrien CHABAUD on 2024-02-21.
//

import Foundation

enum stateSquare {
    case empty
    case xPlayer
    case oPlayer
}

final class SquareViewModel: ObservableObject {
    @Published var squareStatus: stateSquare
    
    init(squareStatus: stateSquare) {
        self.squareStatus = squareStatus
    }
}
