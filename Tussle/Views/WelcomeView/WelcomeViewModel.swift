//
//  WelcomeViewModel.swift
//  Tussle
//
//  Created by Adrien CHABAUD on 2024-02-16.
//

import Foundation

final class WelcomeViewModel: ObservableObject {
    @Published var singlePlayerPresent = false
    @Published var twoPlayersPresent = false
}
