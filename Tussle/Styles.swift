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
            .padding(.horizontal, 60)
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
