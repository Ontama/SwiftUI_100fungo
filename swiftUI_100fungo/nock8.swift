//
//  nock8.swift
//  swiftUI_100fungo
//
//  Created by tomoyo_kageyama on 2022/04/19.
//

import SwiftUI

// TabViewを使って画面を切り替える
struct nock8: View {
    var body: some View {
        TabView {
            Text("tab1")
                .tabItem( {
                    Image(systemName: "1.square.fill")
                    Text("first")
                })
            Text("tab2")
                .tabItem({
                    Image(systemName: "2.square.fill")
                    Text("second")
                })
            Text("tab3")
                .tabItem({
                    Image(systemName: "3.square.fill")
                    Text("third")
                })
        }
    }
}

struct nock8_Previews: PreviewProvider {
    static var previews: some View {
        nock8()
    }
}
