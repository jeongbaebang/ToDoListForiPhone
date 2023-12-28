//
//  TLButton.swift
//  ToDoList
//
//  Created by jeongbae bang on 12/28/23.
//

import SwiftUI

struct TLButton: View {
    let title: String
    let background: Color
    let action: () -> Void
    
    var body: some View {
        Button {
            action()
        } label: {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundStyle(background)
                
                Text(title)
                    .foregroundStyle(.white)
                    .bold()
            }
        }
        .padding(.vertical)
    }
}

#Preview {
    TLButton(title: "title", background: .blue) {
        print("BUtton !")
    }
}
