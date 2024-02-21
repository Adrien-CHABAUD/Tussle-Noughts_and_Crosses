//
//  Styles.swift
//  Tussle
//
//  Created by Adrien CHABAUD on 2024-02-16.
//

import Foundation
import SwiftUI


struct PlayButton: ButtonStyle {
    @State var colorSelected: Color
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding(.horizontal, 40)
            .foregroundStyle(.black)
            .padding(10)
            .background(colorSelected)
            .clipShape(RoundedRectangle(cornerRadius: 8.0))
            .shadow(radius: 2, x:0, y: 4)
    }
}

struct OptionButtons: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .foregroundStyle(.black)
            .padding(10)
            .background(Color.secondary1)
            .clipShape(RoundedRectangle(cornerRadius: 10.0))
        
    }
}

struct gridButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(.largeTitle)
            .bold()
            .frame(width: 70, height: 70)
            .foregroundStyle(Color.white)
            .background(.white.opacity(0.3))
            .clipShape(RoundedRectangle(cornerRadius: 10.0))
            .padding(4)
    }
}
