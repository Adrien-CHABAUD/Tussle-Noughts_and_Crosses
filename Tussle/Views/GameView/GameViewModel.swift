//
//  GameViewModel.swift
//  Tussle
//
//  Created by Adrien CHABAUD on 2024-02-21.
//

import Foundation

final class GameViewModel: ObservableObject {
    @Published var squares = [SquareViewModel]()
    
    init() {
        for _ in 0...8 {
            squares.append(SquareViewModel(squareStatus: .empty))
        }
    }
}
