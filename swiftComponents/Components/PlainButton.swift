//
//  PlainButton.swift
//  swiftComponents
//
//  Created by 10lift on 8.12.2022.
//

import SwiftUI

struct PlainButton: View {
    var title: String
    var action: (() -> Void)
    var icon: Image?

    var body: some View {
        Button(action: action) {
            HStack {
                Text(title).foregroundColor(.white)
                if icon != nil {
                    icon
                }
            }
            .padding(10)
            .background(Color.black)
            .cornerRadius(8)
        }
        .buttonStyle(PlainButtonStyle())
    }
}
