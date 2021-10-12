//
//  TitleView.swift
//  TicTacToe
//
//  Created by Nikolai Emil Damm on 12/10/2021.
//

import SwiftUI

struct TitleView: View {
    var title: String
    var body: some View {
        Text(title)
            .font(.largeTitle)
            .bold()
    }
}

struct TitleView_Previews: PreviewProvider {
    static var previews: some View {
        TitleView(title: "Tic Tac Toe")
    }
}
