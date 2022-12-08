//
//  HorizontalAvatarList.swift
//  swiftComponents
//
//  Created by 10lift on 8.12.2022.
//

import SwiftUI

struct HorizontalAvatarList: View {
    var avatars: [String]
    var body: some View {
        HStack {
            HStack(spacing: -8) {
                ForEach(Array(avatars.enumerated()), id: \.element) { index, item in
                    if index < 3 {
                        Text(item.prefix(1)) // prefix title
                            .frame(width: 32, height: 32)
                            .overlay(
                                RoundedRectangle(cornerRadius: 100)
                                    .stroke(Color.green, lineWidth: 2)
                            )
                            .background(.black)
                            .cornerRadius(100)
                    }
                }
            }

            if avatars.count > 3 {
                Text("+ \(avatars.count - 3)")
            }
        }
    }
}
