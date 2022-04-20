//
//  ButtonView.swift
//  swiftUI_100fungo
//
//  Created by tomoyo_kageyama on 2022/04/20.
//

import SwiftUI

struct ButtonView: View {
    let title: String
    @Binding var tag: Int?
    private let defaultTag = 8888
    @Binding var isActive: Bool
    
    var body: some View {
        Button(action: {
            guard isActive else { return }
            tag = defaultTag
        }, label: {
            Text(title)
        })
        .cornerRadius(35)
        .foregroundColor(.gray)
    }
}
