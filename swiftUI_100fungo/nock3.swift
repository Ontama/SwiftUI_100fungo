//
//  nock3.swift
//  swiftUI_100fungo
//
//  Created by tomoyo_kageyama on 2022/04/18.
//

import SwiftUI

struct nock3: View {
    var body: some View {
        Image("sg1")
            .resizable()
            .scaledToFill()
            .frame(width: 100, height: 100)
            .cornerRadius(75)
            .overlay(RoundedRectangle(cornerRadius: 75).stroke(.black, lineWidth: 4))
    }
}

struct nock3_Previews: PreviewProvider {
    static var previews: some View {
        nock3()
    }
}
