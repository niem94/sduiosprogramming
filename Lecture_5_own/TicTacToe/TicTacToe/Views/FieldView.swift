//
//  FieldView.swift
//  TicTacToe
//
//  Created by Nikolai Emil Damm on 12/10/2021.
//

import SwiftUI

struct FieldView: View {
    @ObservedObject var boardViewModel: BoardViewModel
    let cross = #imageLiteral(resourceName: "cross")
    let nought = #imageLiteral(resourceName: "nought")
    var index: Int

    var body: some View {
        getFieldButton(index:index)
    }
    
    fileprivate func getFieldButton(index: Int) -> some View {
        return Button(action: {
            boardViewModel.setField(index: index)
        }) {
            let state = self.boardViewModel.boardModel[index] ?? .empty
            Image(uiImage: state == .empty ? UIImage() : state == .cross ? cross : nought)
                .resizable()
                .renderingMode(.template)
                .foregroundColor(state == .cross ? .red : .blue)
                .frame(width: 90, height: 90)
        }
        .padding(EdgeInsets(top: 5, leading: 5, bottom: 5, trailing: 5))
    }
}

struct FieldView_Previews: PreviewProvider {
    static var previews: some View {
        FieldView(boardViewModel: BoardViewModel(), index: 0)
    }
}
