//
//  View+Extensiton.swift
//  swiftUI_100fungo
//
//  Created by tomoyo_kageyama on 2022/04/20.
//

import SwiftUI

extension View {
    func card(color: Color = Color.gray.opacity(0.4), radius: CGFloat = 8 ) -> some View {
        self.modifier(CardViewModifier(color: color, radius: radius))
    }
}
