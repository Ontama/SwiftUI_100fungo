//
//  nock4.swift
//  swiftUI_100fungo
//
//  Created by tomoyo_kageyama on 2022/04/18.
//

import SwiftUI

struct nock4: View {
    var body: some View {
        HStack{
            Image("sg1")
                .resizable()
                .frame(width: 42, height: 42)
            Spacer()
            Image("sg1")
                .resizable()
                .frame(width: 42, height: 42)
            Spacer()
            Image("sg1")
                .resizable()
                .frame(width: 42, height: 42)
            Spacer()
            Image("sg1")
                .resizable()
                .frame(width: 42, height: 42)
            Spacer()
            Image("sg1")
                .resizable()
                .frame(width: 42, height: 42)
        }
        .padding(16)
    }
}

struct nock4_Previews: PreviewProvider {
    static var previews: some View {
        nock4()
    }
}
