//
//  nock13.swift
//  swiftUI_100fungo
//
//  Created by tomoyo_kageyama on 2022/04/19.
//

import SwiftUI

// Buttonからプッシュ遷移をする（NavigationLinkを無効にする）
struct nock13: View {
    @State var active = false
    var body: some View {
        NavigationView {
            VStack {
                Button(action: {
                    active = true
                }, label: {
                    Text("tap me!")
            })
                NavigationLink(destination: Text("second"), isActive: $active){
                    EmptyView()
                }
            }
            
            
        }
    }
}

struct nock13_Previews: PreviewProvider {
    static var previews: some View {
        nock13()
    }
}
