//
//  Avatar.swift
//  swiftComponents
//
//  Created by 10lift on 9.12.2022.
//

import SwiftUI

struct Avatar: View {
    var title: String
    var imageUrl: String?
    
    var body: some View {
        ZStack {
            Text(title.prefix(1)) // prefix title
                .frame(width: 32, height: 32)
                .overlay(
                    RoundedRectangle(cornerRadius: 100)
                        .stroke(Color.green, lineWidth: 2)
                )
                .background(.black)
                .cornerRadius(100)
            if let imageUrl {
                AsyncImage(url: URL(string: imageUrl)) { image in
                    image.resizable()
                } placeholder: {
                    Color.black
                }
                .frame(width: 32, height: 32)
                .cornerRadius(100)
            }
        }
    }
}
