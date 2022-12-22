//
//  DropdownMenu.swift
//  swiftComponents
//
//  Created by 10lift on 22.12.2022.
//

import SwiftUI

struct DropdownItem: Identifiable {
    var id: String
    var title: String
}

struct DropdownMenu: View {
    var placeholder: String
    @Binding var isVisibleModal: Bool
    var options: [DropdownItem]
    @Binding var selectedDropdownItem: DropdownItem?

    var body: some View {
        ZStack {
            Text(placeholder)
                .frame(width: 250, height: 44)
                .cornerRadius(8)
                .background(
                       RoundedRectangle(cornerRadius: 8)
                           .strokeBorder(Color.white, lineWidth: 3)
                           .background(
                               RoundedRectangle(cornerRadius: 8).fill(Color.white)
                           )
                   )
                .foregroundColor(Color.gray)
                .zIndex(10)
                .onTapGesture {
                    withAnimation {
                        self.isVisibleModal = !self.isVisibleModal
                    }
                }

            if isVisibleModal {
                VStack {
                }.overlay(
                    VStack(alignment: .leading) {
                        List(options) { option in
                            Button(action: {
                                selectedDropdownItem = option
                                withAnimation {
                                self.isVisibleModal = false
                            }
                            }) {
                                Text(option.title)
                                    .frame(maxWidth: .infinity)
                                    .border(.green)
                                    .background(.green)
                            }
                            .buttonStyle(.plain)
                        }
                        Spacer()
                    }
                        .frame(width: 250, height: 100)
                        .background(.red)
                        .cornerRadius(12)
                        .offset(y: 30)
                    , alignment: .top)
                .zIndex(99999)
            }
        }
    }

}
