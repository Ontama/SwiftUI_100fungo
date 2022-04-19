//
//  nock9.swift
//  swiftUI_100fungo
//
//  Created by tomoyo_kageyama on 2022/04/19.
//

import SwiftUI

//Buttonを押すとTextの文字が変わる
struct nock9: View {
    @State var text = "Snorlax"
    var body: some View {
        VStack {
            Text(text)
            Button(action: {
                self.text = "Forever"
            }, label: {
                Text("tapme")
            })
        }
    }
}

struct nock9_Previews: PreviewProvider {
    static var previews: some View {
        nock9()
    }
}
