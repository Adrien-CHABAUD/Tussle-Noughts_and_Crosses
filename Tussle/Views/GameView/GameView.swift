//
//  GameView.swift
//  Tussle
//
//  Created by Adrien CHABAUD on 2024-02-21.
//

import SwiftUI

struct GameView: View {
    @StateObject var viewModel = GameViewModel()

    @State var nameXPlayer = "Thomas"
    @State var nameOPlayer = "Matilda"
    
    var body: some View {
        VStack {
            Text("\(viewModel.currentPlayer == .xPlayer ? nameXPlayer : nameOPlayer)'s turn")
            
            ForEach(0 ..< viewModel.squares.count / 3) { row in
                HStack {
                    ForEach(0 ..< 3) { column in
                        let index = row * 3 + column
                        SquareView(viewModel: viewModel.squares[index], action: {self.viewModel.buttonAction(index)})
                    }
                }
            }
        }
    }
}

#Preview {
    GameView()
}
