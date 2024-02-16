//
//  PlayerSelectionView.swift
//  Tussle
//
//  Created by Adrien CHABAUD on 2024-02-16.
//

import SwiftUI

struct PlayerSelectionView: View {
    @ObservedObject var viewModel = PlayerSelectionViewModel()
    
    var body: some View {
        NavigationStack {
            ZStack {
                Image(.backgroundImg)
                    .resizable()
                    .ignoresSafeArea()
                
                VStack {
                    Spacer()
                    
                    Image(.logoTussle)
                        .resizable()
                        .scaledToFit()
                    
                    Spacer()
                    
                    // Cross TextField
                    HStack {
                        ZStack {
                            RoundedRectangle(cornerRadius: 8.0)
                                .fill(Color.secondary2)
                            Image(systemName: "cross.fill")
                                .rotationEffect(.degrees(45))
                        }
                        .frame(width: 40)
                        .padding(.horizontal, 20)
                        
                        TextField("Player's Name", text: $viewModel.crossPlayerName)
                            .textFieldStyle(.roundedBorder)
                            .padding(.trailing, 20)
                    }
                    .frame(height: 40)
                    
                    // Nought textField
                    HStack {
                        ZStack {
                            RoundedRectangle(cornerRadius: 8.0)
                                .fill(Color.secondary1)
                            Image(systemName: "circle")
                        }
                        .frame(width: 40)
                        .padding(.horizontal, 20)
                        
                        TextField("Player's Name", text: $viewModel.noughtPlayerName)
                            .textFieldStyle(.roundedBorder)
                            .padding(.trailing, 20)
                    }
                    .frame(height: 40)
                    
                    Spacer()
                    
                    // Start Button
                    Button(action: {
                        viewModel.checkTextField()
                    }, label: {
                        Text("LET'S TUSSLE")
                            .font(.title3)
                    })
                    .buttonStyle(PlayButton(colorSelected: .primary1))
                    .navigationDestination(isPresented: $viewModel.startGame) {
                        WelcomeView()
                    }
                    
                    Spacer()
                }
            }
        }
    }
}

#Preview {
    PlayerSelectionView()
}
