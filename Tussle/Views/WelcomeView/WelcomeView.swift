//
//  WelcomeView.swift
//  Tussle
//
//  Created by Adrien CHABAUD on 2024-02-16.
//

import SwiftUI

struct WelcomeView: View {
    @ObservedObject var viewModel = WelcomeViewModel()
    
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
                        .frame(minWidth: 200)
                        .aspectRatio(contentMode: .fit)
                    
                    Spacer()
                    
                    // Single Player
                    Button(action: {
                        viewModel.singlePlayerPresent.toggle()
                    }, label: {
                        Text("SINGLE PLAYER")
                            .font(.title3)
                    })
                    .buttonStyle(PlayButton(colorSelected: Color.primary1))
                    .padding(.bottom, 20)
                    .navigationDestination(isPresented: $viewModel.singlePlayerPresent) {
                        PlayerSelectionView()
                    }
                    
                
                    
                    // Two-Players
                    Button(action: {
                        //TO-DO
                        viewModel.twoPlayersPresent.toggle()
                    }, label: {
                        Text("TWO PLAYERS")
                            .font(.title3)
                    })
                    .buttonStyle(PlayButton(colorSelected: Color.secondary1))
                    .navigationDestination(isPresented: $viewModel.twoPlayersPresent){
                        PlayerSelectionView()
                    }
                    
                    Spacer()
                    
                    // Options buttons
                    HStack {
                        Spacer()
                        
                        // Share button
                        Button(action: {
                            
                        }, label: {
                            Image(systemName: "square.and.arrow.up")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 30, height: 30)
                        })
                        .buttonStyle(OptionButtons())
                        
                        Spacer()
                        
                        // Statistics button
                        Button(action: {
                            
                        }, label: {
                            Image(systemName: "chart.bar.fill")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 30, height: 30)
                        })
                        .buttonStyle(OptionButtons())
                        
                        Spacer()
                    }
                    
                }
            }
            }
        .tint(Color.white)
        }
    }


#Preview {
    WelcomeView()
}
