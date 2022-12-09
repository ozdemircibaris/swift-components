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
            Spacer()
            Avatar(title: "Barış Özdemirci", imageUrl: "https://pbs.twimg.com/profile_images/1224598450551033856/xc2w9vHR_400x400.jpg")
        }
        .padding()
    }
}
