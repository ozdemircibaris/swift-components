//
//  DatePicker.swift
//  swiftComponents
//
//  Created by 10lift on 9.12.2022.
//

import SwiftUI

struct SelectLocalPicture: View {
 
    var body: some View {
        VStack {
            Button("Select picture") {
                Alert(title: "selected")
            }
        }.frame(width: 100)
    }
}
