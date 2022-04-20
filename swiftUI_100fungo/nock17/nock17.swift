//
//  nock17.swift
//  swiftUI_100fungo
//
//  Created by tomoyo_kageyama on 2022/04/20.
//

import SwiftUI

//ViewModifierを使ってViewに影をつける
struct nock17: View {
    var body: some View {
        VStack {
            Text("Sonolax")
            Image("sg1")
                .resizable()
                .frame(width: 60, height: 60)
                .card()
            Text("red shadow")
                .card(color: .red.opacity(0.4))
            Text("big shadow")
                .card(color: .green.opacity(0.4), radius: 24)
        }
    }
}

struct nock17_Previews: PreviewProvider {
    static var previews: some View {
        nock17()
    }
}
