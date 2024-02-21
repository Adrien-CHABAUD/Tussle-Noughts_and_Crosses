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
        ZStack {
            Image("Background_img")
                .resizable()
                .ignoresSafeArea()
            
            VStack {
                Spacer()
                
                Text("\(viewModel.currentPlayer == .xPlayer ? nameXPlayer : nameOPlayer)'s turn")
                    .font(.title2)
                    .foregroundStyle(Color.white)
                    .shadow(color: .black, radius: 1)
                
                Spacer()
                
                ForEach(0 ..< viewModel.squares.count / 3) { row in
                    HStack {
                        ForEach(0 ..< 3) { column in
                            let index = row * 3 + column
                            SquareView(viewModel: viewModel.squares[index], action: {self.viewModel.buttonAction(index)})
                        }
                    }
                }
                
                Spacer()
                
                VStack {
                    Text("\(nameXPlayer) - \(nameOPlayer)")
                        .font(.title2)
                    Text("0 - 0")
                        .font(.title2)
                }
                .foregroundStyle(Color.white)
                .shadow(color: .black, radius: 1)
                
                
                Spacer()
                
                Button {
                    //TODO
                } label: {
                    Text("TRUCE TIME")
                        .font(.title3)
                        .foregroundStyle(Color.white)
                }
                .buttonStyle(PlayButton(colorSelected: .secondary1))
                
                Spacer()

            }
        }
    }
}

#Preview {
    GameView()
}
