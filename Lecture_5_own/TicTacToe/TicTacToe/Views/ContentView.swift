//
//  ContentView.swift
//  TicTacToe
//
//  Created by Benjamin Staugaard on 21/09/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            TitleView(title: "Tic Tac Toe")
            BoardView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
