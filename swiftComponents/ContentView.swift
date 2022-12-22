//
//  ContentView.swift
//  swiftComponents
//
//  Created by 10lift on 8.12.2022.
//

import SwiftUI

extension NSTableView {
    open override func viewDidMoveToWindow() {
        super.viewDidMoveToWindow()

        backgroundColor = NSColor.clear
        if let esv = enclosingScrollView {
            esv.drawsBackground = false
        }
    }
}

struct ContentView: View {
    @State var textFieldValue: String = ""
    var avatars: [String] = ["Baris", "Arif", "Ege", "Velihan"]
    @State var dropdownMenuIsVisible: Bool = false
    @State var isOverDropdownMenu: Bool = false
    @State var selectedDropdownItem: DropdownItem?

    var body: some View {
        VStack {
            ScrollView {
                // Button
                PlainButton(
                    title: "Simple Button",
                    action: {},
                    icon: Image(systemName: "plus")
                )
                Spacer()
                
                // Textfield
                PlainTextField(
                    placeholder: "Simple TextField",
                    value: textFieldValue
                )
                Spacer()
                
                // Avatar list
                HorizontalAvatarList(avatars: avatars)
                
                Spacer()
                
                // Avatar
                Avatar(title: "Barış Özdemirci", imageUrl: "https://pbs.twimg.com/profile_images/1224598450551033856/xc2w9vHR_400x400.jpg")
                
                Spacer()
                
                // Dropdown menu
                DropdownMenu(placeholder: "Industry", isVisibleModal: $dropdownMenuIsVisible, options: [DropdownItem(id: "1", title: "a"), DropdownItem(id: "2", title: "new"), DropdownItem(id: "3", title: "22fwedf"), DropdownItem(id: "32", title: "wqeqweqwe")], selectedDropdownItem: $selectedDropdownItem)
                    .onHover { on in
                        isOverDropdownMenu = on
                    }
            }
            .padding()
            .border(.green)
            .onTapGesture {
                if !isOverDropdownMenu {
                    withAnimation {
                        dropdownMenuIsVisible = false
                    }
                } else {
                    withAnimation {
                        dropdownMenuIsVisible = true
                    }
                }
            }
        }
    }
}
