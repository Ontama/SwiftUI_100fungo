//
//  nock14.swift
//  swiftUI_100fungo
//
//  Created by tomoyo_kageyama on 2022/04/19.
//

import SwiftUI

//SwiftUIで続きを読む。。。ボタンがあるViewを実装する
struct nock14: View {
    
    var body: some View {
        VStack{
            ShowMoreView(text: Book.aliceInWonderland)
            ShowMoreView(text: Book.snorlax)
            ShowMoreView(text: Book.flyMeToTheMoon)
        }
    }
}

struct nock14_Previews: PreviewProvider {
    static var previews: some View {
        nock14()
    }
}
