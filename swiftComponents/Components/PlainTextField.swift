//
//  PlainTextField.swift
//  swiftComponents
//
//  Created by 10lift on 8.12.2022.
//

import SwiftUI

struct PlainTextField: View {
    var placeholder: String
    @State var value: String
    
    var body: some View {
        VStack {
            TextField(placeholder, text: $value)
                .textFieldStyle(PlainTextFieldStyle())
                .padding(10)
                .frame(width: 200)
                .overlay(
                        RoundedRectangle(cornerRadius: 14)
                            .stroke(Color.green, lineWidth: 2)
                    )
        }
    }
}
