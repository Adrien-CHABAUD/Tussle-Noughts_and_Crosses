//
//  SquareView.swift
//  Tussle
//
//  Created by Adrien CHABAUD on 2024-02-21.
//

import SwiftUI

struct SquareView: View {
    @ObservedObject var viewModel: SquareViewModel
    
    var body: some View {
        Button(action: {
            // TO-DO
        }, label: {
            Text(self.viewModel.squareStatus == .xPlayer ? "X" : self.viewModel.squareStatus == .oPlayer ? "Y" : " ")
        })
        .buttonStyle(gridButton())
    }
}

#Preview {
    SquareView(viewModel: SquareViewModel(squareStatus: .xPlayer))
}
