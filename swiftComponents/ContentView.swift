//
//  ContentView.swift
//  swiftComponents
//
//  Created by 10lift on 8.12.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            PlainButton(
                title: "Simple Button",
                action: {},
                icon: Image(systemName: "plus")
            )
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
