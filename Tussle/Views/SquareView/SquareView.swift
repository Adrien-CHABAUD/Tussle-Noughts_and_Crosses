//
//  SquareView.swift
//  Tussle
//
//  Created by Adrien CHABAUD on 2024-02-21.
//

import SwiftUI

struct SquareView: View {
    @ObservedObject var viewModel: SquareViewModel
    var action: () -> Void
    
    var body: some View {
        Button(action: {
            self.action()
        }, label: {
            Text(self.viewModel.squareStatus == .xPlayer ? "X" : self.viewModel.squareStatus == .oPlayer ? "O" : " ")
        })
        .buttonStyle(gridButton())
    }
}

#Preview {
    SquareView(viewModel: SquareViewModel(squareStatus: .xPlayer), action: {})
}
