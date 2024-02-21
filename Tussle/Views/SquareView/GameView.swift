//
//  GameView.swift
//  Tussle
//
//  Created by Adrien CHABAUD on 2024-02-20.
//

import SwiftUI

struct GameView: View {
    @ObservedObject var viewModel: GameViewModel
    var body: some View {
        Text("[...]'s turn")
        
        Button(action: {
            // To-Do
        }, label: {
            Text(self.viewModel.squareSatus == .xPlayer ? "X" : self.viewModel.squareSatus == .oPlayer ? "O" : " ")
                .font(.largeTitle)
                .bold()
                .foregroundStyle(Color.black)
                .frame(width: 70, height: 70, alignment: .center)
                .background(Color.gray.opacity(0.3))
            
        })
        
    }
}

#Preview {
    GameView(viewModel: GameViewModel(squareSatus: .empty))
}
