//
//  ContentView.swift
//  swiftComponents
//
//  Created by 10lift on 8.12.2022.
//

import SwiftUI

struct ContentView: View {
    @State var textFieldValue: String = ""
    var avatars: [String] = ["Baris", "Arif", "Ege", "Velihan"]

    var body: some View {
        VStack {
            // button
            PlainButton(
                title: "Simple Button",
                action: {},
                icon: Image(systemName: "plus")
            )
            Spacer()
            // textfield
            PlainTextField(
                placeholder: "Simple TextField",
                value: textFieldValue
            )
            Spacer()
            // avatar list
            HorizontalAvatarList(avatars: avatars)
        }
        .padding()
    }
}
