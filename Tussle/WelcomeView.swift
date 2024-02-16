//
//  WelcomeView.swift
//  Tussle
//
//  Created by Adrien CHABAUD on 2024-02-16.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
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
                
                Button(action: {
                    //TO-DO
                }, label: {
                    Text("SINGLE PLAYER")
                })
                .buttonStyle(PlayButton(colorSelected: Color.primary1))
                .padding(.bottom, 20)
                
                Button(action: {
                    //TO-DO
                }, label: {
                    Text("TWO PLAYERS")
                })
                .buttonStyle(PlayButton(colorSelected: Color.secondary1))
                
                Spacer()
                
                HStack {
                    Spacer()
                    
                    Button(action: {
                        
                    }, label: {
                        Image(systemName: "square.and.arrow.up")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 30, height: 30)
                    })
                    .buttonStyle(OptionButtons())
                    
                    Spacer()
                    
                    
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
}

#Preview {
    WelcomeView()
}
