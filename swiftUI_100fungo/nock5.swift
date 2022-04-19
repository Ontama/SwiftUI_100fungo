//
//  nock5.swift
//  swiftUI_100fungo
//
//  Created by tomoyo_kageyama on 2022/04/19.
//

import SwiftUI

struct nock5: View {
    var body: some View {
        NavigationView{
            Text("No Title")
                .navigationTitle("")
                .navigationBarHidden(true)
        }
    }
}

struct nock5_Previews: PreviewProvider {
    static var previews: some View {
        nock5()
    }
}
