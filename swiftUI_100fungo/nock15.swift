//
//  nock15.swift
//  swiftUI_100fungo
//
//  Created by tomoyo_kageyama on 2022/04/20.
//

import SwiftUI

//Text中の文字の太さや色を変える
struct nock15: View {
    var body: some View {
        (Text("I ")
         + Text("love ")
            .foregroundColor(.red)
        + Text("Snorlax ")
            .foregroundColor(.black)
            .font(.system(size: 20).bold())
        + Text("\n")
        + Text("Snorlax is most cute & cool& powerful Pokemon.")
            ).lineSpacing(4)
    }
}

struct nock15_Previews: PreviewProvider {
    static var previews: some View {
        nock15()
            .previewLayout(.sizeThatFits)
    }
}
